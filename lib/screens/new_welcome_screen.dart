import 'package:flutter/material.dart';

class WelcomingScreen extends StatefulWidget {
  const WelcomingScreen({Key? key}) : super(key: key);

  @override
  _WelcomingScreenState createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Stack(
          children: [
            SizedBox.expand(
              child: Center(
                child: Image.asset(
                  "assets/images/modiste11.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Get started Consult From Your Preferred Modiste",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      const Text("Now you can speak .. .. . . .. . . "),
                    ],
                  ),
                  ElevatedButton(
                    child: const Text("Get Started"),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
