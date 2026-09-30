import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  final bool isTapped;
  Color background = Color(0xff333244);
  GenderCard({
    super.key,
    required this.title,
    required this.icon,
    required this.background,
    required this.isTapped,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isTapped ? Colors.red : Colors.transparent),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(child: Icon(icon, size: 150, color: Colors.white)),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
            ),
          ],
        ),
      ),
    );
  }
}
