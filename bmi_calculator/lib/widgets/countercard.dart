import 'package:flutter/material.dart';

class Countercard extends StatelessWidget {
  final String title;
  final int value;
  final ValueChanged<int> onChanged;
  Countercard({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 175,
      decoration: BoxDecoration(
        color: Color(0xff24263B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "$value",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8B8C9E),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove, color: Colors.white),
                      onPressed: () {
                        if (value > 0) onChanged(value - 1);
                      },
                    ),
                  ),
                  SizedBox(width: 44),

                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8B8C9E),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        onChanged(value + 1);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
