import 'package:flutter/material.dart';

class Heightslider extends StatelessWidget {
  final double height;
  final ValueChanged<double> onChanged;
  const Heightslider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Height",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Color(0xff8B8C9E),
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "${height.round()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Text(
                "cm",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              activeTrackColor: Color(0xffE85D75), // pink/red like your design
              inactiveTrackColor: Colors.white,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
              thumbColor: Color(0xffE85D75),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
            ),
            child: Slider(
              min: 100,
              max: 220,
              value: height,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
