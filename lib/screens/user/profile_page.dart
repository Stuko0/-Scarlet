import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: implementation_imports
import 'package:http/src/response.dart';
import 'package:scarlet_app/data/user_services.dart';
import 'package:scarlet_app/main.dart';
import 'package:scarlet_app/screens/authentication/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fillUserDetails();
    });
  }

  Future<void> fillUserDetails() async {
    final prefs = PreferenceProvider.of(context)?.prefs;
    final int? id = prefs?.getInt('id');
    print(id);
    Response response = await apiService.getUserById(id);
    Map<String, dynamic> responseBody = jsonDecode(response.body);

    // Ahora puedes acceder a los valores en responseBody
    String? _name = responseBody['name'];
    print(responseBody['name']);
    String? _lastname = responseBody['lastname'];
    print(responseBody['lastname']);
    String? _email = responseBody['email'];
    print(responseBody['email']);
    String? _phone = responseBody['phone'];
    print(responseBody['phone']);

    // Y usarlos para rellenar tus TextEditingController
    nameController.text = _name ?? '';
    lastnameController.text = _lastname ?? '';
    emailController.text = _email ?? '';
    phoneController.text = _phone ?? '';
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Perfil de Usuario",
              style: TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.06,
                  screenHeight * 0.01, screenWidth * 0.06, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          const Icon(Icons.person, size: 80),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                height: 20,
                                width: 151,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xffBDB76C),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: const Text(
                                  "Subir una foto de Perfil",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "DMSans",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ))
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
                    ],
                    autofocus: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff939393),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      labelText: "Nombre",
                    ),
                  )),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      child: TextField(
                    controller: lastnameController,
                    keyboardType: TextInputType.name,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
                    ],
                    autofocus: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff939393),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      labelText: "Apellido",
                    ),
                  )),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp("[0-9a-zA-Z@.]")),
                    ],
                    autofocus: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff939393),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      labelText: "Correo Electronico",
                    ),
                  )),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(8),
                      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                    ],
                    autofocus: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xff939393),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      labelText: "Telefono",
                    ),
                  )),
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () async {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.clear();
                                  // ignore: use_build_context_synchronously
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 151,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffCE1D1D),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  child: const Text(
                                    "Salir",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "DMSans",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                )),
                            SizedBox(
                              width: 6,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 151,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF09707),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  child: const Text(
                                    "Guardar",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "DMSans",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ))
                          ],
                        )),
                  )
                ],
              ))),
    );
  }
}
