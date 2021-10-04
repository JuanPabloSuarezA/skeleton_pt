import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Descripción general de la API",
            body: "Esta API pública otorga  los datos relevantes " +
                "de distintos usuarios para su contacto ",
            image: Center(
              child: Image.asset(
                "assets/icon1.png",
                width: 400,
              ),
            ),
            decoration: decorar(),
          ),
          PageViewModel(
            title: "Campos de información relevantes",
            body: "Se incluyen específicamente los campos de ID," +
                "nombre, nombre de usuario, correo, telefono y empresa",
            image: Center(
              child: Image.asset(
                "assets/icon2.png",
                width: 400,
              ),
            ),
            decoration: decorar(),
          )
        ],
        done: Text(
          "Consultar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        onDone: () {
          Navigator.pushNamed(context, "vistaAPI");
        },
        showNextButton: true,
        next: Text(
          "Siguiente",
          style: TextStyle(fontSize: 18),
        ),
      ),
    ));
  }

  PageDecoration decorar() {
    return PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        pageColor: Colors.blue[200]);
  }
}
