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
                screenWidth * 0.06, screenHeight * 0.03, screenWidth * 0.06, 0),
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenHeight * 0.04,
                            screenWidth * 0.05),
                        decoration: BoxDecoration(
                            color: Color(0xffBDB76C),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Column(
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
                    SizedBox(width: 8),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenHeight * 0.16,
                            screenWidth * 0.05),
                        decoration: BoxDecoration(
                            color: Color(0xffBDB76C),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Column(
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
                SizedBox(
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
                              builder: (context) => MembersPage()
                          )
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.06,
                              screenHeight * 0.04,
                              screenHeight * 0.13,
                              screenWidth * 0.05),
                          decoration: BoxDecoration(
                              color: Color(0xffBDB76C),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Column(
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
                    SizedBox(width: 8),
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06,
                            screenHeight * 0.04,
                            screenHeight * 0.06,
                            screenWidth * 0.05),
                        decoration: BoxDecoration(
                            color: Color(0xffBDB76C),
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Column(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Resumen para NombreEquipo",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF7F3BC),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: Text(
                                        "Tarea",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.cleaning_services_rounded),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Acomodar",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: Text(
                                        "Capacitacion",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.book_online),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Fisica",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        color: Color(0xffe3e5e9),
                                      ),
                                      child: Text(
                                        "Incendio",
                                        style: TextStyle(
                                            fontFamily: "DMSans",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.fireplace_sharp),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "Prioritario",
                                      style: TextStyle(
                                          fontFamily: "DMSans",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
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
                        ))))
              ],
            )),
      ),
    );
  }
}
