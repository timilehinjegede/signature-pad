import 'package:flutter/material.dart';
import 'package:signature_pad/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text.rich(
                  TextSpan(
                    text: 'Signature',
                    children: [
                      TextSpan(
                        text: '\nPad',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    /*
                    ideal behaviour -> the border of the outer contaner should fill
                    animate then move to the next page
                    */

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(.06),
                          offset: const Offset(0, -5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black54,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
