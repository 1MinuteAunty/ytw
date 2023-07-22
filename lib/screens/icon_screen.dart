import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets_path.dart';
import '../colors.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: splashScreenGrillColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(splashScreenLogoAssetPath),
        ),
      ),
    );
  }
}
