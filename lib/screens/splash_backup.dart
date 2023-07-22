import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets_path.dart';
import '../colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3366FF),
                    Color(0xFF00CCFF),
                  ],
                  begin: FractionalOffset(1.0, 0.0),
                  end: FractionalOffset(0.0, 1.0),
                ),
              ),
              child: Image.asset(
                splashBackgroundAssetPath,
                fit: BoxFit.fitWidth,
                color: splashScreenGrillColor,
                colorBlendMode: BlendMode.dstATop,
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(splashScreenLogoAssetPath),
                  Text(
                    'Ytowait',
                    style: GoogleFonts.didactGothic(
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Never miss whom you like',
                    style: GoogleFonts.didactGothic(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// background: linear-gradient(90deg, #017BAE 0%, #44BED4 100%);

