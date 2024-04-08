// ignore_for_file: use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scarlet_app/screens/authentication/register_number_page.dart';

class ConfirmNumber extends StatefulWidget {
  final String number;
  const ConfirmNumber({super.key, required this.number});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  bool isAccount = false;
  List<TextEditingController> controllers = [];
  List<FocusNode> focusNodes = [];

  TextEditingController textController = TextEditingController();
  String targetNumber = '';

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 4; i++) {
      controllers.add(TextEditingController());
      focusNodes.add(FocusNode());
      controllers[i].addListener(validateText);
    }
  }

  void validateText() async {
    final enteredText = controllers[0].text +
        controllers[1].text +
        controllers[2].text +
        controllers[3].text;
    print('Entered text: $enteredText');
    print('Target number: $targetNumber');
    if (enteredText.length == 4) {
      if(enteredText==targetNumber){
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Correcto'),
              content: Text('El número ingresado es igual a $targetNumber'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (isAccount) {
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterNumberPage(
                            phone: widget.number,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('Cerrar'),
                ),
              ],
            );
          },
        );
      }else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Incorrecto'),
              content:
                  Text('El número ingresado no coincide con $targetNumber'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cerrar'),
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          "Confirmar el número de teléfono",
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
        child: Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 50, 120, 20),
              child: Text(
                "Ingresa el código que enviamos por SMS al ${widget.number}",
                style: const TextStyle(
                    color: Color(0xFF272727),
                    fontSize: 12,
                    fontFamily: "DM Sans"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0XFFB0B0B0),
                  width: 1.0,
                ),
              ),
              width: 295,
              height: 39,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(4, (i) {
                  controllers[i].addListener(() {
                    if (controllers[i].text.isNotEmpty) {
                      if (i + 1 < controllers.length) {
                        FocusScope.of(context).requestFocus(focusNodes[i + 1]);
                      }
                    }
                  });
                  return Expanded(
                    child: RawKeyboardListener(
                      focusNode: FocusNode(),
                      onKey: (RawKeyEvent event) {
                        if (event.isKeyPressed(LogicalKeyboardKey.backspace) &&
                            controllers[i].text.isEmpty &&
                            i > 0) {
                          setState(() {
                            controllers[i - 1].text = '';
                            FocusScope.of(context).requestFocus(focusNodes[i - 1]);
                          });
                        }
                      },
                      child: TextField(
                        controller: controllers[i],
                        focusNode: focusNodes[i],
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(25, 8, 25, 10),
                          border: InputBorder.none,
                          labelText: "-",
                          labelStyle: TextStyle(color: Colors.black45),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: "¿No recibiste el SMS? ",
                            style: TextStyle(
                                color: Color(0xFF8F8F8F),
                                fontSize: 11,
                                fontFamily: "DM Sans"),
                          ),
                          TextSpan(
                            text: "Vuelve a enviar el código.",
                            style: const TextStyle(
                              color: Color(0xFF8F8F8F),
                              fontFamily: "DM Sans",
                              decoration: TextDecoration.underline,
                              fontSize: 11,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      )
    );
  }
}