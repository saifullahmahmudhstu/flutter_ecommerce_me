import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/const/app_colors.dart';
import 'package:flutter_e_commerce/ui/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen())));
    super.initState();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'e-Commerce',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.1),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
