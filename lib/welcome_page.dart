import 'package:chatdroid/context.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        color: context.colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.25),
                              offset: const Offset(4, 4),
                              blurRadius: 8)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Newton AI Buddy',
                          style: TextStyle(
                              color: context.colorScheme.surface,
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
                Text(
                  'Chat with PDF & Images',
                  style: context.textTheme.bodyLarge!.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: context.colorScheme.onSurface,
                        minimumSize: const Size(double.infinity, 56)),
                    child: Text(
                      "Get Started",
                      style: context.textTheme.labelLarge!
                          .copyWith(color: context.colorScheme.surface),
                    ))
              ],
            ),
          )
        ]),
      )),
    );
  }
}
