import 'package:Bloggios/utils/Dimensions.dart';
import 'package:flutter/material.dart';

class SplashBottomContainerBody extends StatelessWidget {
  const SplashBottomContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width34),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Let's Concatenate your Perceptions with ",
                style: TextStyle(
                    fontSize: Dimensions.width30,
                    color: Colors.white70,
                    height: 1.2),
                children: const [
                  TextSpan(
                      text: 'Bloggios',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500))
                ]),
          ),
        ),
        SizedBox(
          height: Dimensions.height70,
        ),
        ElevatedButton(
          onPressed: () {
            // Get.to(
            //   () => const AuthScreen(),
            //   transition: Transition.rightToLeft,
            //   duration: const Duration(milliseconds: 400),
            // );
          },
          style: ElevatedButton.styleFrom(
              elevation: 7,
              backgroundColor: const Color(0xFF4258FF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(400))),
          child: Container(
            width: Dimensions.screenWidth * 0.5,
            height: Dimensions.height50,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
                child: Text(
              'Get Started',
              style: TextStyle(fontSize: Dimensions.width20),
            )),
          ),
        ),
        SizedBox(
          height: Dimensions.height60,
        ),
      ],
    );
  }
}