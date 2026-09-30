import 'package:bmi_calculator/home.dart';
import 'package:bmi_calculator/widgets/redbotton.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final double weight;
  final double height;
  const ResultScreen({super.key, required this.weight, required this.height});

  @override
  State<ResultScreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<ResultScreen> {
  late double BMI;
  late String category;
  late Color categoryColor;
  late String message;
  @override
  void initState() {
    super.initState();
    final heightInMeters = widget.height / 100;
    BMI = widget.weight / (heightInMeters * heightInMeters);

    if (BMI < 18.5) {
      category = "Underweight";
      categoryColor = Colors.orange;
      message = "You Have an Underweight Body, eat a bit more.";
    } else if (BMI < 25) {
      category = "Normal";
      categoryColor = Colors.green;
      message = "You Have a Normal Body Weight, Good Job.";
    } else if (BMI < 30) {
      category = "Overweight";
      categoryColor = Colors.orange;
      message = "You Have an Overweight Body, consider more exercise.";
    } else {
      category = "Obese";
      categoryColor = Colors.red;
      message = "You Have an Obese Body, consider consulting a doctor.";
    }
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Your Result",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Text(
                          category,
                          style: TextStyle(
                            color: categoryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SizedBox(height: 30),
                        Text(
                          BMI.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 60),
                        Text(
                          message,
                          style: TextStyle(
                            color: Color(0xff8B8C9E),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          RedBotton(
            title: "Calculate",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
