import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPage();
}

class _MembersPage extends State<MembersPage> {

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(screenWidth*0.06, screenHeight*0.03, screenWidth*0.06, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Nombre Equipo",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 20, bottom: 24),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jefe de Equipo",
                      style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      decoration: const BoxDecoration(
                        color: Color(0xffBDB76C),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z4YdnfikmTer3enjn-qQ_Q7woDEMpTsdpDe2IedB_g&s"),
                          ),
                          const SizedBox(width: 12,),
                          const Expanded(
                            child: Text(
                              "Nombre de la Persona",
                              style: TextStyle(
                                fontFamily: "DMSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: 28, width: 28,
                                decoration: const BoxDecoration(
                                  color: Color(0xffe3e5e9),
                                  borderRadius: BorderRadius.all(Radius.circular(6))
                                ),
                                child: const Icon(Icons.fire_truck),
                              ),
                              const SizedBox(width: 12),
                              Container(
                                height: 28, width: 28,
                                decoration: const BoxDecoration(
                                  color: Color(0xffe3e5e9),
                                  borderRadius: BorderRadius.all(Radius.circular(6))
                                ),
                                child: const Icon(Icons.fire_extinguisher),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                 ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 24),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Miembros",
                      style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          decoration: const BoxDecoration(
                            color: Color(0xffBDB76C),
                            borderRadius: BorderRadius.vertical(top: Radius.circular(6))
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z4YdnfikmTer3enjn-qQ_Q7woDEMpTsdpDe2IedB_g&s"),
                              ),
                              const SizedBox(width: 12,),
                              const Expanded(
                                child: Text(
                                  "Nombre de la Persona",
                                  style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 28, width: 28,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3e5e9),
                                      borderRadius: BorderRadius.all(Radius.circular(6))
                                    ),
                                    child: Icon(Icons.person_search_rounded),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1,),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          decoration: const BoxDecoration(
                            color: Color(0xffBDB76C),
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(6))
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z4YdnfikmTer3enjn-qQ_Q7woDEMpTsdpDe2IedB_g&s"),
                              ),
                              const SizedBox(width: 12,),
                              const Expanded(
                                child: Text(
                                  "Nombre de la Persona",
                                  style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 28, width: 28,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe3e5e9),
                                      borderRadius: BorderRadius.all(Radius.circular(6))
                                    ),
                                    child: Icon(Icons.person_search_rounded),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                 )
                )
              ],
            )
          )
        ),
      ),
    );
  }
}