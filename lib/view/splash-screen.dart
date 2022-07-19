import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stone_scissors_paper/view/home-page.dart';
import '../core/navigation.dart';
import 'package:lottie/lottie.dart';


class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  void initState() {
      super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Lottie.asset('assets/lottie/stone.json')
      ),

    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
      AppNavigator.customNavigator(context: context, screen: HomePage(), finish: true);
  }


}