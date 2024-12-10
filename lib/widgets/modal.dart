import 'package:flutter/material.dart';

class CustomModal extends StatefulWidget {
  final double width;
  final double height;
  final String picture;
  final String name;
  final String address;
  final String minTeams;
  final String maxTeams;
  final String risky;
  final List<String> images;
  final List<String> features;

  const CustomModal({
    super.key,
    required this.width,
    required this.height,
    required this.picture,
    required this.images,
    required this.name,
    required this.address,
    this.maxTeams = "0",
    this.minTeams = "0",
    required this.features,
    this.risky = "¡PELIGROSO!",
  });

  @override
  State<CustomModal> createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal> {
  int imagenActual = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: widget.images.isNotEmpty ? widget.height : widget.height/2.5,
              child: Column(
                children: [
                  const SizedBox(height: 18),
                  Container(
                    width: 57,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Color(0xFFC6C6C6),
                      borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 22, left: 41, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Image.network(widget.picture, width: 57, height: 57,),
                                  const SizedBox(
                                    width: 13,
                                  ),
                                  SizedBox(
                                      width: 190,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 2,),
                                          Text(
                                            widget.name,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'DM Sans',
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),const SizedBox(height: 4,),
                                          Text(
                                            widget.address,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight:
                                                    FontWeight.w400,
                                                fontFamily: 'DM Sans',
                                                color:
                                                    Color(0xff7A7A7A),
                                                decoration:
                                                    TextDecoration
                                                        .none),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          )),
                      if(widget.images.isNotEmpty)...[
                        Padding(
                        padding: const EdgeInsets.only(
                            top: 19, left: 40, right: 40),
                        child: SizedBox(
                          height: 30,
                          width: widget.width,
                          child: 
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.features.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 6),
                                padding: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    left: 12,
                                    right: 12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFCB5F0B),
                                      width: 1),
                                  borderRadius:
                                      BorderRadius.circular(16),
                                ),
                                child: Text(
                                  widget.features[index],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xff555555),
                                      decoration: TextDecoration.none),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 11, left: 31, right: 23),
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                width: 320,
                                height: 141,
                                child: PageView.builder(
                                  itemCount:
                                      widget.images.length,
                                  onPageChanged: (int page) {
                                    setState(() {
                                      imagenActual = page;
                                    });
                                  },
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(13),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              widget.images[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Positioned(
                                bottom: 28,
                                left: 132,
                                right: 132,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: List<Widget>.generate(
                                    widget.images.length,
                                    (index) => Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: index == imagenActual
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      ],
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, left: 31, right: 23,),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if(widget.minTeams!="0"||widget.maxTeams!="0")...[
                                  Text(
                                    'Equipos desde ${widget.minTeams} hasta ${widget.maxTeams}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'DM Sans',
                                        color: Color(0xff353535),
                                        decoration: TextDecoration.none),
                                  ),const SizedBox(height: 4,),
                                ],
                                const Text(
                                  'Distancia 10Km',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xff8D8D8D),
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.warning_amber_rounded, size: 16,),
                                const SizedBox(width: 1),
                                Text(
                                  widget.risky,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'DM Sans',
                                      color: Color(0xff747474),
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                ],
              ),
            );
  }
}