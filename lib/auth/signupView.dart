// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);

  //final Controller _emailController = TextEditingController();
  //final Controller _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Let's sign you up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                "Welcome !!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 15),
              Form(
                child: Column(children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    initialValue: 'Email',
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    initialValue: 'Full Name',
                  ),
                ]),
                autovalidateMode: AutovalidateMode.always,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
