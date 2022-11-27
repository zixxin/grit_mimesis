import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

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
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          child: Image.asset('image/logo.png'),
        ),
        backgroundColor: const Color(0xFF141414),
        actions: [appBarIcon()],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titleSection(context),
              projectSection(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget appBarIcon() {
  return Row(
    children: <Widget>[
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
        margin: const EdgeInsets.only(bottom: 5, right: 15),
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
        margin: const EdgeInsets.only(bottom: 5, right: 17),
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
            child:
                Icon(Icons.brightness_1, size: 10.0, color: Color(0xFFDB3157)),
          )
        ]),
      ),
    ],
  );
}

Widget titleSection(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        width: width,
        height: 350,
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
                chips(),
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
            imageSection(),
          ],
        ),
      ),
    ],
  );
}

Widget oneChip(double left, String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFFE2FD7E),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    margin: EdgeInsets.only(top: 20, left: left),
    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
    child: Text(
      text,
      style: const TextStyle(color: Color(0xFFEBF98A), fontSize: 13),
    ),
  );
}

Widget chips() {
  return Row(
    children: [
      oneChip(15, '#출시성공'),
      oneChip(8, '#고생끝에낙이온다'),
    ],
  );
}

Widget imageSection() {
  return Row(
    children: [
      Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 190, top: 62.7),
            child: Image.asset('image/money.png', width: 200),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15),
                child: const Text(
                  '저축 습관 앱 런칭기',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 15),
                child: const Text(
                  '160일의 여정을 돌아보며...',
                  style: TextStyle(color: Color(0xFF929292), fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 130, left: 15),
                child: DotsIndicator(
                  dotsCount: 4,
                  position: 1,
                  decorator: DotsDecorator(
                    spacing: const EdgeInsets.all(4.0),
                    color: const Color(0xFF6E6E6E),
                    size: const Size.square(5.0),
                    activeSize: const Size.square(5.0),
                    activeColor: const Color(0xFFDBF87A),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget projectSection() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      projects(),
      divider(),
      teams(),
      divider(),
      letters(),
      divider(),
      news(),
    ],
  );
}

Widget divider() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    child: const Divider(
      thickness: 12.0,
      color: Color(0xFFF1F1EB),
    ),
  );
}

Widget all() {
  return Container(
    margin: const EdgeInsets.only(top: 20, right: 15),
    child: const Text(
      '모두보기',
      style: TextStyle(
          fontSize: 12, color: Color(0xFFB9B9B9), fontWeight: FontWeight.bold),
    ),
  );
}

Widget sectionTitle(String title) {
  return Container(
    margin: const EdgeInsets.only(top: 20, left: 15),
    child: Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

Widget projects() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          sectionTitle('관심 분야와 역할이 일치하는 프로젝트 💡'),
          all(),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
              border: Border.all(
                color: const Color(0xFFB9B9B9),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 25,
                  icon: const Icon(Icons.refresh),
                  onPressed: () {},
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: const Text(
                    '더 보고 싶어요',
                    style: TextStyle(color: Color(0xFF5166E4), fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget teams() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      sectionTitle('팀플 스타일이 비슷한 팀원 🕵🏻‍♂️'),
      all(),
    ],
  );
}

Widget letters() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      sectionTitle('시작을 다짐했을 때 읽기 좋은 글 ✨'),
      all(),
    ],
  );
}

Widget newsDivider(double top) {
  return Container(
    margin: EdgeInsets.only(top: top),
    child: const Divider(
      thickness: 1.0,
      indent: 15.0,
      endIndent: 15.0,
      color: Color(0xFFECECEC),
    ),
  );
}

Widget newsContents(String news) {
  return Container(
    margin: const EdgeInsets.only(top: 3, left: 15),
    child: Text(
      news,
      style: const TextStyle(fontSize: 13),
    ),
  );
}

Widget news() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          sectionTitle('추천 뉴스 🗞'),
          all(),
        ],
      ),
      newsDivider(10),
      newsContents('AI 전화 앱 \'비토\' 160억 시리즈B 투자 유치'),
      newsDivider(3),
      newsContents('휴가철 집단속 걱정, IOT 기반 스마트홈이 해답'),
      newsDivider(3),
      newsContents('네이버, 물류 풀필먼트 플랫폼 \'NFA\' 오픈'),
      newsDivider(3),
      newsContents('격동의 하반기 앞둔 배달, 부동산, 여행 스타트업'),
    ],
  );
}
