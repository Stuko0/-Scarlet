// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class RegisterNumberPage extends StatefulWidget {
  final String phone;
  const RegisterNumberPage({super.key, required this.phone});

  @override
  State<RegisterNumberPage> createState() => _RegisterNumberPageState();
}

class _RegisterNumberPageState extends State<RegisterNumberPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();
  TextEditingController intcarnetController = TextEditingController();
  TextEditingController stringcarnetController = TextEditingController();
  TextEditingController celularController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usuarioController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool dateTimeBool = false;
  bool passwordBool = false;

  bool hidePassword = true;
  bool boolMostrar = true;

  String textMostrar = "Mostrar";

  Widget _errorNameMessage = const Visibility(
    visible: false,
    child: Text(""),
  );
  Widget _errordateTimeMessage = const Visibility(
    visible: false,
    child: Text(""),
  );
  Widget _errorPasswordMessage = const Visibility(
    visible: false,
    child: Text(""),
  );
  Widget _errorCharacterCountMessage = const Visibility(
    visible: false,
    child: Text(""),
  );
  Widget _errorEspecialCharMessage = const Visibility(
    visible: false,
    child: Text(""),
  );
  Widget _errorNameEmailPassword = const Visibility(
    visible: false,
    child: Text(""),
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF656565),
          ),
          iconSize: 19,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Última fase del registro",
          style: TextStyle(
              color: Color(0xFF656565),
              fontSize: 19,
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w600),
        ),
        titleSpacing: -20,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 1, color: Colors.grey)),
            ),
          ),
        ),
      ),
      body: SafeArea(top: true, bottom: true,left: true,right: true,
        child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.11, screenHeight * 0.05,
              screenWidth * 0.11, screenHeight * 0.05),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black45,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            cursorColor: Colors.black45,
                            controller: nameController,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp("[a-zA-Z ]")),
                            ],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "DM Sans",
                            ),
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                              border: InputBorder.none,
                              labelText: "Nombre",
                              labelStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF5E5E5E),
                                  height: 0.5),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                          const Divider(
                            color: Colors.black45,
                            height: 1.0,
                            thickness: 1.0,
                          ),
                          TextField(
                            cursorColor: Colors.black45,
                            controller: lastNameController,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "DM Sans",
                            ),
                            keyboardType: TextInputType.text,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp("[a-zA-Z ]")),
                            ],
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(30, 15, 0, 5),
                              border: InputBorder.none,
                              labelText: "Apellido",
                              labelStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF5E5E5E),
                                  height: 0.5),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _errorNameMessage,
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.02,
                          screenHeight * 0.005,
                          screenWidth * 0.02,
                          screenHeight * 0.03),
                      child: const Text(
                        "Asegúrate de que coincide con el nombre que aparece en tu documento de identidad fiscal.",
                        style: TextStyle(
                            color: Color(0xFF8F8F8F),
                            fontSize: 10,
                            fontFamily: "DM Sans"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black45,
                          width: 1.0,
                        ),
                      ),
                      child: TextField(
                        controller: dateTimeController,
                        enabled: true,
                        enableInteractiveSelection: false,
                        expands: false,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 8, 0, 8),
                          border: InputBorder.none,
                          labelText: "Fecha de nacimiento (dd/mm/aaaa)",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF5E5E5E),
                              height: 0.5),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          showDatePicker(
                            keyboardType: TextInputType.datetime,
                            locale: const Locale('es', 'ES'),
                            context: context,
                            helpText: 'Fecha de Nacimiento',
                            confirmText: 'Continuar',
                            cancelText: 'Cancelar',
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2222),
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: const ColorScheme.light(
                                    // change the border color
                                    primary: Color(0xffDF8946),
                                    onPrimary: Colors.white,
                                    background: Colors.white,
                                    // change the text color
                                    onSurface: Colors.black,
                                  ),
                                  // button colors 
                                  buttonTheme: const ButtonThemeData(
                                    colorScheme: ColorScheme.light(
                                      primary: Color(0xffEDB72E),
                                    ),
                                  ),
                                ),
                                child: child ?? const SizedBox.shrink(),
                              );
                            },
                          ).then((selectedDate) {
                            if (selectedDate != null) {
                              DateTime currentDate = DateTime.now();
                              DateTime selectedDateTime = DateTime(
                                selectedDate.year,
                                selectedDate.month,
                                selectedDate.day,
                              );
                              int ageDifference =
                                  currentDate.year - selectedDateTime.year;
                              if (currentDate.month < selectedDateTime.month ||
                                  (currentDate.month ==
                                          selectedDateTime.month &&
                                      currentDate.day < selectedDateTime.day)) {
                                ageDifference--;
                              }
                              if (ageDifference <= 18) {
                                dateTimeBool = false;
                                var a = DateTime.parse(selectedDate.toString());
                                var formattedDate =
                                    "${a.day}/${a.month}/${a.year}";
                                dateTimeController.text =
                                    formattedDate.toString();
                              } else {
                                dateTimeBool = true;
                                var a = DateTime.parse(selectedDate.toString());
                                var formattedDate =
                                    "${a.day}/${a.month}/${a.year}";
                                dateTimeController.text =
                                    formattedDate.toString();
                              }
                            }
                          });
                        },
                      ),
                    ),
                    _errordateTimeMessage,
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.02,
                          screenHeight * 0.005,
                          screenWidth * 0.02,
                          screenHeight * 0.03),
                      child: const Text(
                        "Para registrarte, debes tener al menos 18 años. No compartiremos la fecha de tu nacimiento con otros usuarios de MangoMotels.",
                        style: TextStyle(
                            color: Color(0xff8F8F8F),
                            fontSize: 10,
                            fontFamily: "DM Sans"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.black45,
                          width: 1.0,
                        ),
                      ),
                      child: TextField(
                        cursorColor: Colors.black45,
                        controller: emailController,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(
                              RegExp("[0-9a-zA-Z@.]")),
                        ],
                        style: const TextStyle(
                          color: Color(0XFF161616),
                          fontSize: 12,
                          fontFamily: "DM Sans",
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 8, 0, 8),
                          border: InputBorder.none,
                          labelText: "Correo electrónico",
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF5E5E5E),
                              height: 0.5),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.02,
                          screenHeight * 0.005,
                          screenWidth * 0.02,
                          screenHeight * 0.03),
                      child: const Text(
                        "Te enviaremos las confirmaciones de reserva y recibos por correo electrónico.",
                        style: TextStyle(
                            color: Color(0xff8F8F8F),
                            fontSize: 10,
                            fontFamily: "DM Sans"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 46,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Color(0xFFDF8946)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _errorPasswordMessage = SizedBox(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(screenWidth * 0.015,
                            screenHeight * 0.005, screenWidth * 0.02, 0),
                        child: const Row(
                          children: [
                            Image(
                              height: 15,
                              width: 15,
                              image:
                                  AssetImage("assets/img/icons/sms-failed.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                            ),
                            Text(
                              "Seguridad de contraseña: Débil.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFA20E0E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    int specialCharacterCount(String text) {
                      final RegExp specialCharPattern =
                          RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?~\\]');
                      Iterable<RegExpMatch> matches =
                          specialCharPattern.allMatches(text);
                      return matches.length;
                    }

                    int numberCount(String text) {
                      final RegExp numberPattern = RegExp(r'[0-9]');

                      Iterable<RegExpMatch> matches =
                          numberPattern.allMatches(text);

                      return matches.length;
                    }
                    if (nameController.text.isEmpty) {
                      setState(() {
                        _errorNameMessage = SizedBox(
                          width: 500,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                                screenHeight * 0.005, screenWidth * 0.02, 0),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                  height: 15,
                                  width: 15,
                                  image: AssetImage(
                                      "assets/img/icons/sms-failed.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                ),
                                Text(
                                  'Debes indicar el nombre',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFA20E0E),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    } else {
                      _errorNameMessage = const Visibility(
                        visible: false,
                        child: Text(""),
                      );
                    }
                    if (dateTimeBool == false) {
                      setState(() {
                        _errordateTimeMessage = SizedBox(
                          width: 500,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                                screenHeight * 0.005, screenWidth * 0.02, 0),
                            child: const Row(
                              children: [
                                Image(
                                  height: 15,
                                  width: 15,
                                  image: AssetImage(
                                      "assets/img/icons/sms-failed.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                ),
                                Text(
                                  "Para poder registrarte debes ser mayor a 18 años.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFA20E0E),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    } else {
                      _errordateTimeMessage = const Visibility(
                        visible: false,
                        child: Text(""),
                      );
                    }

                    if (nameController.text!="") {
                      setState(() {
                        _errorPasswordMessage = const Visibility(
                          visible: false,
                          child: Text(""),
                        );
                        _errorCharacterCountMessage = const Visibility(
                          visible: false,
                          child: Text(""),
                        );
                        _errorEspecialCharMessage = const Visibility(
                          visible: false,
                          child: Text(""),
                        );
                        _errorNameEmailPassword = const Visibility(
                          visible: false,
                          child: Text(""),
                        );
                      });
                      try {
                        DateFormat format = DateFormat("dd/MM/yyyy");
                        DateTime dateOfBirthDateTime =
                            format.parse(dateTimeController.text);
                        String dateOfBirthFormatted = DateFormat('yyyy/MM/dd')
                            .format(dateOfBirthDateTime);
                      } catch (e) {
                        print(e);
                        // Maneja el error aquí
                      }
                    }
                  },
                  child: const Center(
                    child: Text(
                      "Aceptar y continuar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}