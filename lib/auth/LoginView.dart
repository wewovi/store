// ignore_for_file: unused_label, file_names

import 'package:flutter/material.dart';
import 'package:store/auth/forgotPassword.dart';
import 'package:store/auth/signupView.dart';
import 'package:unicons/unicons.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final GlobalKey _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      UniconsLine.angle_left_b,
                      size: 30,
                    )),
                const SizedBox(width: 100),
                Title(
                  color: Colors.black,
                  child: const Text("Log In", style: TextStyle(fontSize: 30)),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                const Text(
                  "Let's sign you in",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Welcome !!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 30),
                Form(
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: 'Email',
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: 'Password',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ForgotPassword()));
                          },
                          child: const Text("forgot password?")),
                    ),
                  ]),
                  autovalidateMode: AutovalidateMode.always,
                ),
              ]),
            ),
            const SizedBox(height: 100),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text("Dont have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignupView()));
                          },
                          child: Text("Register"))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFFF3A3942),
                  ),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
