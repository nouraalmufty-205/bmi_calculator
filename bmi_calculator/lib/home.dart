import 'package:bmi_calculator/resultscreen.dart';
import 'package:bmi_calculator/widgets/card.dart';
import 'package:bmi_calculator/widgets/countercard.dart';
import 'package:bmi_calculator/widgets/heightslider.dart';
import 'package:bmi_calculator/widgets/redbotton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;
  int weight = 0;
  int age = 0;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xff24263B),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: GenderCard(
                            isTapped: isMale,
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },

                            title: "Male",
                            icon: Icons.male_outlined,
                            background: Color(0xff333244),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: GenderCard(
                            isTapped: !isMale,
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            title: "Female",
                            icon: Icons.female_outlined,
                            background: Color(0xff333244),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Heightslider(
                    height: height,
                    onChanged: (value) {
                      setState(() => height = value);
                    },
                  ),

                  SizedBox(height: 29),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Countercard(
                        title: "Weight",
                        value: weight,
                        onChanged: (value) {
                          setState(() => weight = value);
                        },
                      ),

                      Countercard(
                        title: "Age",
                        value: age,
                        onChanged: (value) {
                          setState(() => age = value);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 27),
          RedBotton(
            title: "Calculate",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ResultScreen(weight: weight.toDouble(), height: height),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
