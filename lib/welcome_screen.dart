import 'package:chatdroid/api_bottom_sheet.dart';
import 'package:chatdroid/background_painter.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              left: -300,
              right: -00,
              child: Container(
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                  Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                  Theme.of(context).colorScheme.surface.withOpacity(0.5)
                ])),
              )),
          CustomPaint(
            painter: BackgroundPainter(),
            size: Size.infinite,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.25),
                              offset: const Offset(4, 4),
                              blurRadius: 8)
                        ]),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Android AI Chatbot",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset(
                          "assets/images/ai_star_logo.png",
                          scale: 23,
                        )
                      ],
                    ),
                  ),
                ),
                Lottie.asset("assets/animations/onboarding_animation.json"),
                const Text("Chat With PDF & Images",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5)),
                ElevatedButton(
                    onPressed: () {
                      final TextEditingController apiController = TextEditingController();
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                          isDismissible: true,
                          context: context,
                          builder: (context){
                            return ApiBottomSheet(apiController: apiController,);
                          }
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 56)),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
