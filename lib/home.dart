import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset('image/logo.png'),
        ),
        backgroundColor: const Color(0xFF141414),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              iconSize: 25,
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              iconSize: 25,
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 17),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              iconSize: 25,
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: width,
            height: 300,
            decoration: const BoxDecoration(
              color: Color(0xFF141414),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFE2FD7E),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  padding: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 12.0),
                  child: const Text(
                    '#출시성공',
                    style: TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFE2FD7E),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 8),
                  padding: const EdgeInsets.symmetric(
                      vertical: 6.0, horizontal: 12.0),
                  child: const Text(
                    '#고생끝에낙이온다',
                    style: TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
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
