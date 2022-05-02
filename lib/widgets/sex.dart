import 'package:flutter/material.dart';
import 'package:calculator/theame.dart';

class SexualWidget extends StatelessWidget {
  SexualWidget(this.sex, this.icon);

  final String sex;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: primary),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(this.icon, size: 100),
            SizedBox(
              height: 20.0,
            ),
            Text(this.sex, style: headlines)
          ],
        ),
      ),
    );
  }
}
