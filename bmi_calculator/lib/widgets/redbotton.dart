import 'package:flutter/material.dart';

class RedBotton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const RedBotton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: Color(0xffE83D67)),
      child: Center(
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
