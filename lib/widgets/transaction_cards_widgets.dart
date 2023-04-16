import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  Icon icon;
  String title;
  String date;
  int value;
  TransactionCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.date,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 20 + 5,
            width: MediaQuery.of(context).size.width / 10 + 5,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Color(0xfffb45d43), blurRadius: 8, spreadRadius: 1)
              ],
            ),
            child: Icon(
              icon.icon,
              color: Color(0xfff417975),
              size: MediaQuery.of(context).size.aspectRatio * 70,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                              color: Color.fromARGB(255, 100, 99, 99),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "-\$ " + value.toString(),
                    style: TextStyle(fontSize: 22, color: Colors.white70),
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
