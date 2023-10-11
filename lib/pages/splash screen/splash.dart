import 'package:aplikasi_bootcamp/pages/splash screen/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)) .then((value) => Navigator.push(context, 
    MaterialPageRoute(builder: (context) => const Login(),)));
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 44, 132),
      body: Center(
        child: Text("Edspert.id",
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
    );
  }
}