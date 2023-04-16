import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techno_yug_assignment/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.black,
    ),
    DetailsPage(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.black,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 130, 166),
                borderRadius: BorderRadius.circular(5)),
            child: Image.asset(
              "assets/images/avatar.png",
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "Welcome Back,",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Tanya Myronuik")
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 15, bottom: 15),
            child: Icon(
              CupertinoIcons.chat_bubble_text,
              size: 30,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.house,
                color: Colors.grey,
                size: MediaQuery.of(context).size.height / 30,
              ),
              label: "",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.rectangle_grid_2x2_fill,
                color: Colors.grey,
                size: MediaQuery.of(context).size.height / 30,
              ),
              backgroundColor: Colors.black,
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.viewfinder,
                color: Colors.grey,
                size: MediaQuery.of(context).size.height / 30,
              ),
              activeIcon: Icon(
                CupertinoIcons.viewfinder,
                color: Color(0xfffb45d43),
                size: MediaQuery.of(context).size.height / 21,
              ),
              label: "",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chart_bar_square,
                color: Colors.grey,
                size: MediaQuery.of(context).size.height / 30,
              ),
              backgroundColor: Colors.black,
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.arrow_right_arrow_left_square,
                color: Colors.grey,
                size: MediaQuery.of(context).size.height / 30,
              ),
              backgroundColor: Colors.black,
              label: ""),
        ],
        selectedItemColor: const Color(0xfffb45d43),
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
