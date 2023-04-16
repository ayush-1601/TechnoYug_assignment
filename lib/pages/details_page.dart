import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techno_yug_assignment/widgets/cards.dart';
import 'package:techno_yug_assignment/widgets/transaction_cards_widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  late List<Widget> items = [
    Cards(
      balance: "\$ 48,605",
      colors: [const Color(0xfff417975), const Color(0xfff2b423d), const Color(0xfff408685)],
    ),
    Cards(
        balance: "\$ 42,291",
        colors: [const Color(0xfffb45d43), const Color(0xfff382219), const Color(0xfff674437)]),
    Cards(balance: "\$ 42,291", colors: [
      const Color.fromARGB(255, 67, 161, 180),
      const Color.fromARGB(255, 3, 53, 91),
      const Color.fromARGB(255, 20, 1, 104)
    ])
  ];

  final List<Widget> tranCards = [
    TransactionCard(
      icon: const Icon(Icons.dining_outlined),
      title: "Restaurant Submarine",
      date: "01:41 pm, Today",
      value: 145,
    ),
    TransactionCard(
      icon: const Icon(CupertinoIcons.ticket),
      title: "Opera tickets",
      date: "02:50 PM",
      value: 270,
    ),
    TransactionCard(
      icon: const Icon(Icons.local_cafe_outlined),
      title: "Cafe Cashback",
      date: "11:26 AM",
      value: 75,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(children: [
            Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: items,
                  carouselController: _controller,
                  options: CarouselOptions(
                      viewportFraction: 0.9,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      // aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: (_current == entry.key ? 12.0 : 8.0),
                      height: _current == entry.key ? 12.0 : 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.red
                                  : Colors.grey)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ]),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(95, 89, 87, 87),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: ListView(
                  children: [
                    const Icon(
                      CupertinoIcons.chevron_compact_up,
                      size: 60,
                      color: Colors.white38,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Transactions",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                CupertinoIcons.search,
                                color: Colors.white70,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8)),
                                height: 37,
                                width: 37,
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.ellipsis_circle,
                                    color: Colors.white70,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    TransactionCard(
                      icon: const Icon(Icons.dining_outlined),
                      title: "Restaurant Submarine",
                      date: "01:41 pm, Today",
                      value: 145,
                    ),
                    TransactionCard(
                      icon: const Icon(CupertinoIcons.ticket),
                      title: "Opera tickets",
                      date: "02:50 PM",
                      value: 270,
                    ),
                    TransactionCard(
                      icon: const Icon(Icons.local_cafe_outlined),
                      title: "Cafe Cashback",
                      date: "11:26 AM",
                      value: 75,
                    ),
                    TransactionCard(
                      icon: const Icon(Icons.dining_outlined),
                      title: "Restaurant Submarine",
                      date: "01:41 pm, Today",
                      value: 145,
                    ),
                    TransactionCard(
                      icon: const Icon(CupertinoIcons.ticket),
                      title: "Opera tickets",
                      date: "02:50 PM",
                      value: 270,
                    ),
                    TransactionCard(
                      icon: const Icon(Icons.local_cafe_outlined),
                      title: "Cafe Cashback",
                      date: "11:26 AM",
                      value: 75,
                    )
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
