import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset('image/logo.png'),
        ),
        backgroundColor: const Color(0xFF141414),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 25,
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 25,
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 25,
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              '#출시성공',
            ),
          ],
        ),
      ),
    );
  }
}
