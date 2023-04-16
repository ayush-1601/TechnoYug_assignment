import 'package:flutter/material.dart';
import 'package:techno_yug_assignment/pages/home_page.dart';

class OnScreen extends StatefulWidget {
  const OnScreen({super.key});

  @override
  State<OnScreen> createState() => _OnScreenState();
}

class _OnScreenState extends State<OnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 15, 17, 15),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/background.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Simple way\nto help control\nyour savings",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => HomePage()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width - 40,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                          color: Color(0xfffb45d43),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                        "Get started",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )),
                    )),
                Center(
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          text: "Already have an account? ",
                          children: <InlineSpan>[
                        TextSpan(
                            text: "Log in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white70))
                      ])),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
