import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/constants.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        
        children: [
          Spacer(), 
          // Text(
          //   "Hello World",
          //   textAlign: TextAlign.center,
          //   style: const TextStyle(
          //     fontWeight: FontWeight.bold, 
          //     fontFamily: "OpenSans",
          //     fontSize: 32,
          //     ),
          // ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 350,
                  width: 350,
                  child: Image.asset("assets/images/modiste11.png"),
                  
                ),
              ],
            ), 
            // Image.asset("assets/images/modiste1.png"),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {}, 
                        style: TextButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(255, 158, 54, 104),
                          ),
                        child: Text(
                          "Get Started",
                          style: const TextStyle(fontSize: 18, fontFamily: "OpenSans"),
                          ),
                        ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}