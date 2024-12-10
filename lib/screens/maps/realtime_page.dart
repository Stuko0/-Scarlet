import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:scarlet_app/data/fires_services.dart';
import 'package:scarlet_app/widgets/modal.dart';

class RealTimePage extends StatefulWidget {
  const RealTimePage({super.key});

  @override
  State<RealTimePage> createState() => _RealTimePageState();
}

class _RealTimePageState extends State<RealTimePage> {
  late GoogleMapController mapController;
  late LatLng ubi = const LatLng(-17.413977,-66.165321);
  Set<Marker> _markers = {};
  final FireApiService fires = FireApiService();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _getFires();
  }

  _getFires() async {
    var response = await fires.getRTFires();
    if (response.statusCode == 200) {
      if(response.body.isEmpty) {
      }
      List<dynamic> fires = jsonDecode(response.body);
      setState(() {
        _markers = fires
            .map((fire) => Marker(
                markerId: MarkerId(fire['id'].toString()),
                position: LatLng(fire['lat'] ?? 0.0, fire['lng'] ?? 0.0),
                onTap: () {
                  double screenHeight = MediaQuery.of(context).size.height;
                  String minTeams = "1";
                  String maxTeams = "5";
                  String risky = "PROMEDIO";
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    context: context,
                    builder: (context) => GestureDetector(
                      onVerticalDragEnd: (details) {
                        if(details.primaryVelocity! < 0){
                          // TODO mandar a ubicacion
                        }else{Navigator.pop(context);}
                      },
                      child: CustomModal(width: 327, height: screenHeight*0.5, picture: "https://picsum.photos/1920", images: ["https://picsum.photos/1920","https://picsum.photos/1920","https://picsum.photos/1920"], name: "Wildfire", address: "Alguna Parte", features: ["PR: ${fire['frp']}","IP: ${fire['fwi']}","C: ${fire['confidence']}",], maxTeams: maxTeams, minTeams: minTeams, risky: risky,),
                    )
                  );
                }))
            .toSet();
      });
    }
  }

  _getCurrentLocation() async {
    if (await Permission.location.request().isGranted) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      ubi = LatLng(position.latitude, position.longitude);
      setState(() {
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: ubi,
              zoom: 10.0,
            ),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GoogleMap(
      onMapCreated: (GoogleMapController controller) async {
        mapController = controller;
        // mapController.setMapStyle(mapTheme);
      },
      initialCameraPosition: CameraPosition(target: ubi, zoom: 8),
      mapToolbarEnabled: false,
      markers: _markers,
    )));
  }
}
