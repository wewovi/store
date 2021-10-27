import 'package:flutter/material.dart';
import 'package:store/auth/LoginView.dart';
import 'package:store/auth/signupView.dart';

class LoginSignupView extends StatelessWidget {
  const LoginSignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const Image(
                  image: AssetImage("assets/shopping.png"), height: 320),
              // SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  "Shop at the biggest store in Africa.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  "we bring you sneakers from the top sneaker manufacturers in the world. feel free to walk through our store to look for anything you want, you can also reach out to us for assistance.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => LoginView()));
                        },
                        child: Container(
                          height: 60,
                          child: const Padding(
                            padding: EdgeInsets.only(right: 55, top: 15),
                            child: Text(
                              "Log In",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignupView()));
                      },
                      child: Container(
                        child: const Center(
                          child: Text("Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              )),
                        ),
                        height: 60,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF3A3942),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
