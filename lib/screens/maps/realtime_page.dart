import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class RealTimePage extends StatefulWidget {
  const RealTimePage({super.key});

  @override
  State<RealTimePage> createState() => _RealTimePageState();
}

class _RealTimePageState extends State<RealTimePage> {
  late GoogleMapController mapController;
  late LatLng ubi=const LatLng(0,0);

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
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
              zoom: 15.0,
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
            initialCameraPosition: CameraPosition(target: ubi, zoom: 11),
            mapToolbarEnabled: false,
    )));
  }
  
}
