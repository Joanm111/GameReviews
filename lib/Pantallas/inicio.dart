import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_reviews/Pantallas/Register.dart';
import 'package:game_reviews/Pantallas/inicio.dart';
import 'package:flutter/material.dart';
import 'package:game_reviews/Pantallas/login.dart';
import 'package:game_reviews/widgets/customized_button.dart';

class inicio extends StatelessWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/fondo2.png"), fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            const SizedBox(
              height: 200,
              width: 400,
              child: Image(
                  image: AssetImage("assets/logox.png"), fit: BoxFit.cover),
            ),
            SizedBox(
              height: 240,
            ),
            CustomizedButton(
              buttonText: "Login",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPreseed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
            ),
            CustomizedButton(
              buttonText: "Register",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPreseed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const registerScreen()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Continue as a Guest",
                style: TextStyle(
                    color: Color.fromARGB(255, 232, 182, 250), fontSize: 17),
              ),
            )
          ])),
    );
  }
}
