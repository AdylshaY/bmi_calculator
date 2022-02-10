import 'package:bmi_calculator/constants/input_borders.dart';
import 'package:flutter/material.dart';

class HeightInput extends StatelessWidget {
  const HeightInput({
    Key? key,
    required this.myHeightController,
  }) : super(key: key);

  final TextEditingController myHeightController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myHeightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: "Enter your height",
        border: outlineInputBorder,
        focusedBorder: outlineInputBorderFocused,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your height";
        }
        return null;
      },
    );
  }
}

