import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String balance;
  List<Color> colors;
  Cards({super.key, required this.balance, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              colors: colors,
              tileMode: TileMode.decal,
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Card balance",
                    style: TextStyle(
                        // color: Color.fromARGB(255, 63, 61, 61),
                        color: Colors.white70,
                        fontSize: 22),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/icon/nfc.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/icon/mastercard.png"),
                    ],
                  )
                ],
              ),
              Text(
                balance,
                style: const TextStyle(fontSize: 35, color: Colors.white70),
              ),
            ],
          ),
          const Text(
            "5325 4131 2355 5782",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          )
        ],
      ),
    );
  }
}
