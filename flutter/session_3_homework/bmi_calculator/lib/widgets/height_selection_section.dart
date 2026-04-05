import 'package:bmi_calculator/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class HeightSelectionSection extends StatefulWidget {
  const HeightSelectionSection({super.key});

  @override
  State<HeightSelectionSection> createState() => _HeightSelectionSectionState();
}

class _HeightSelectionSectionState extends State<HeightSelectionSection> {
  double _height = 174;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Color(0xff93969e), fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                _height.round().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(color: Color(0xff8b8d9b), fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 1, // سمك الخط
              activeTrackColor: Colors.white,
              inactiveTrackColor: const Color(0xff8d8e98),
              overlayShape: SliderComponentShape.noOverlay,
              thumbColor: const Color(0xffec0d54),
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 15, // حجم الدائرة
              ),
            ),
            child: Slider(
              value: _height,
              min: 100,
              max: 220,
              onChanged: (value) {
                _height = value;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
