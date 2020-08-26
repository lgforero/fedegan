import 'package:flutter/material.dart';
import 'package:fedegan/models/answers.dart';
import 'package:fedegan/screens/activos.dart';
import 'package:fedegan/screens/personales.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var answers = Answers(
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  );

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        Personales(_pageController, answers),
        Activos(_pageController, answers),
      ],
    );
  }
}
