import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  static final _fontWeightTween =
      FontWeightTween(begin: FontWeight.w100, end: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              splashBackgroundAssetPath,
              fit: BoxFit.fitWidth,
              color: const Color(0xFF017BAE),
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: TweenAnimationBuilder(
                  tween: _fontWeightTween,
                  curve: Curves.linearToEaseOut,
                  duration: const Duration(seconds: 4),
                  builder: (_, fontWeight, __) {
                    log(fontWeight.toString());
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(splashScreenLogoAssetPath),
                        Text(
                          'Ytowait',
                          style: GoogleFonts.didactGothic(
                            fontSize: 60,
                            fontWeight: fontWeight,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Never miss whom you like',
                          style: GoogleFonts.didactGothic(
                            fontSize: 20,
                            fontWeight: fontWeight,
                            color: Colors.white,
                          ),
                        )
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class FontWeightTween extends Tween<FontWeight?> {
  FontWeight? begin;
  FontWeight? end;
  FontWeightTween({
    required this.begin,
    required this.end,
  }) : super(begin: begin, end: end);

  @override
  FontWeight? lerp(double t) {
    return FontWeight.lerp(begin, end, t);
  }
}
