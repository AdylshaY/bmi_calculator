import 'package:bmi_calculator/constants/input_borders.dart';
import 'package:flutter/material.dart';

class WidthInput extends StatelessWidget {
  const WidthInput({Key? key, required this.myWeightController})
      : super(key: key);

  final TextEditingController myWeightController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myWeightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: "Enter your weight",
        border: outlineInputBorder,
        focusedBorder: outlineInputBorderFocused,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your weight";
        }
        return null;
      },
    );
  }
}
