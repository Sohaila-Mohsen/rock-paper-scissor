import 'package:flutter/material.dart';

class Choices extends StatelessWidget {
  IconData? iconData;
  String? title;
  Choices(this.iconData, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Icon(
              iconData,
              color: Color.fromARGB(255, 129, 218, 215),
              size: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title!,
              style: TextStyle(
                  color: Color.fromARGB(255, 137, 137, 137), fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
