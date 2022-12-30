import 'package:flutter/material.dart';
import 'package:putra_cab/AllScreen/registrationScreen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  static const String idScreen = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 45.0,
              ),
              Image(
                image: AssetImage("gambar PutraCab/logo with name.png"),
                width: 280.0,
                height: 150.0,
                alignment: Alignment.topCenter,
              ),
              SizedBox(
                height: 0.1,
              ),
              Text(
                "Student",
                style: TextStyle(
                    fontSize: 34.0,
                    backgroundColor: Colors.pink[800],
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 10.1,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Student",
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.1,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 10.1,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink[800]),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(15)),
                          textStyle: MaterialStateProperty.all(const TextStyle(
                              fontSize: 14, color: Colors.white))),
                      onPressed: () {
                        print("Loggedin button clicked");
                      },
                      child: Container(
                        height: 35.0,
                        child: Center(
                            child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18.0),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, registrationScreen.idScreen, (route) => false);
                  },
                  child: Text("Do not have an account? Register here")),
              SizedBox(
                height: 0.1,
              ),
              Image(
                image: AssetImage("gambar PutraCab/bottom.png"),
                width: 580.0,
                height: 200.0,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
