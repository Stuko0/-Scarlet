import 'package:flutter/material.dart';
import 'package:scarlet_app/screens/teams/members_page.dart';

class WelcomeTeamPage extends StatefulWidget {
  const WelcomeTeamPage({super.key});

  @override
  State<WelcomeTeamPage> createState() => _WelcomeTeamPage();
}

class _WelcomeTeamPage extends State<WelcomeTeamPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.06, screenHeight * 0.03, screenWidth * 0.06, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bienvenido, Nombre",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenWidth * 0.08,
                            screenHeight * 0.025),
                        decoration: const BoxDecoration(
                            color: Color(0xff517b5b),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "7",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Tareas",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "Asignadas",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                    const SizedBox(width: 8),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenWidth * 0.32,
                            screenHeight * 0.025),
                        decoration: const BoxDecoration(
                            color: Color(0xff517b5b),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "16",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Incendios",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "Atendidos",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MembersPage()
                          )
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.06,
                              screenHeight * 0.04,
                              screenWidth * 0.13,
                              screenHeight * 0.025),
                          decoration: const BoxDecoration(
                              color: Color(0xff517b5b),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "3",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                "Miembros",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Text(
                                "del Equipo",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(width: 8),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenWidth * 0.247,
                            screenHeight * 0.025),
                        decoration: const BoxDecoration(
                            color: Color(0xff517b5b),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "1",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              "Alerta",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "de Incendio",
                              style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Resumen para NombreEquipo",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffF7F3BC),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                        height: screenHeight * 0.4,
                        width: screenWidth * 0.865,
                        child: SingleChildScrollView(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: const Text(
                                        "Tarea",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.cleaning_services_rounded),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      "Acomodar",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Equipamento",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "09:30-11:00",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.notifications),
                                  ],
                                )),
                            const Divider(
                              thickness: 1,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: const Text(
                                        "Capacitacion",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.book_online),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      "Fisica",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Cardio",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "09:30-11:00",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.notifications),
                                  ],
                                )),
                            const Divider(
                              thickness: 1,
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: const Text(
                                        "Incendio",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.fireplace_sharp),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      "Prioritario",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Actuar",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "09:30-11:00",
                                          style: TextStyle(
                                              fontFamily: "DMSans",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.notifications),
                                  ],
                                )),
                          ],
                        )))))
              ],
            )),
      ),
    );
  }
}
