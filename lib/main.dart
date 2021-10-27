import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:store/JordanView.dart';
import 'package:store/auth/LoginView.dart';
import 'package:store/ProductView.dart';
import 'package:store/PumaView.dart';
import 'package:store/NikeView.dart';
import 'package:store/adidasView.dart';
import 'package:store/auth/login_signup.dart';

import 'bottomNavigation/HomeView.dart';

void main() {
  runApp((const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
