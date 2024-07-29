import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/action_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPageArguments {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPageArguments(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
}

class ResultsPage extends StatelessWidget {
  final ResultsPageArguments args;
  const ResultsPage({super.key, required this.args});

  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(args.resultText, style: kResultTextStyle),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          ActionButton(
            label: "Re-Calculate",
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
