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
            margin: const EdgeInsets.only(top: 15, right: 15),
            child: Stack(children: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                iconSize: 25,
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDB3157),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 15,
                    minHeight: 10,
                  ),
                  child: const Text(
                    '6+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 17),
            child: Stack(children: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                iconSize: 25,
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              const Positioned(
                top: 0.0,
                right: -0.5,
                child: Icon(Icons.brightness_1,
                    size: 10.0, color: Color(0xFFDB3157)),
              )
            ]),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                        style:
                            TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
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
                        style:
                            TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF313233),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  margin: const EdgeInsets.only(top: 30, left: 15),
                  padding: const EdgeInsets.only(
                      top: 3.0, bottom: 5.0, left: 8.0, right: 11.0),
                  child: const Text(
                    '💰 금융',
                    style: TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
                    textAlign: TextAlign.center,
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
