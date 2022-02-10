import 'package:bmi_calculator/components/input_height.dart';
import 'package:bmi_calculator/components/input_weight.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController myWeightController = TextEditingController();
  final TextEditingController myHeightController = TextEditingController();
  String result = '0';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
        child: Column(
          children: [
            HeightInput(myHeightController: myHeightController),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            WidthInput(myWeightController: myWeightController),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double height = double.parse(myHeightController.text) / 100;
                  double weight = double.parse(myWeightController.text);

                  double bmi = (weight) / (height * height);
                  result = bmi.toStringAsFixed(2);
                  setState(() {});
                }
              },
              child: const Text("Calculate"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Text("Your BMI: $result"),
          ],
        ),
      ),
    );
  }
}
