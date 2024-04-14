import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final ValueChanged<double>? onChanged;
  final int divisions;
  final String label;
  final double max;
  final Color? thumbColor;
  final Color? activeColor;
  final String labelText;
  final String ammountText;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
    required this.divisions,
    required this.label,
    required this.max,
    this.thumbColor,
    this.activeColor,
    required this.labelText,
    required this.ammountText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double currentSliderValue;

  @override
  void initState() {
    super.initState();
    currentSliderValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: currentSliderValue,
          onChanged: (value) {
            setState(() {
              currentSliderValue = value;
              widget.onChanged?.call(value);
            });
          },
          max: widget.max,
          thumbColor: widget.thumbColor ?? ColorManger.buttonColor,
          activeColor: widget.activeColor ?? ColorManger.buttonColor,
          divisions: widget.divisions,
          label: widget.label,
        ),
        const SizedBox(height: 5),
        Container(
          alignment: Alignment.topRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.labelText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                widget.ammountText,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
