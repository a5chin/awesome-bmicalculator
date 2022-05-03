import 'package:flutter/material.dart';
import 'package:calculator/theame.dart';
import 'package:calculator/widgets/sex.dart';
import 'package:calculator/pages/result.dart';

class BmiPage extends StatefulWidget {
  BmiPage({Key? key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  int weight = 60;
  double maxWeight = 100;
  double minWeight = 20;

  int height = 170;
  double maxHeight = 220;
  double minHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondary,
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text("BMI Calculator"),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SexualWidget('MALE', Icons.male),
              SexualWidget('FEMALE', Icons.female)
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: primary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Height", style: headlines),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$height', style: boldNumber),
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: minHeight,
                    max: maxHeight,
                    activeColor: Colors.orangeAccent,
                    inactiveColor: Colors.black,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), color: primary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Weight", style: headlines),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$weight', style: boldNumber),
                  ),
                  Slider(
                    value: weight.toDouble(),
                    min: minWeight,
                    max: maxWeight,
                    activeColor: Colors.orangeAccent,
                    inactiveColor: Colors.black,
                    onChanged: (double newValue) {
                      setState(() {
                        weight = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          height: height,
                          weight: weight,
                        ))),
            child: Container(
              color: primaryButtonColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Text('CALCULATE BMI', style: primaryButtonStyle),
              ),
            ),
          )
        ],
      ),
    );
  }
}
