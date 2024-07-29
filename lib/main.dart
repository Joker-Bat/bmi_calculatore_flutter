import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: InputPage.routeName,
      routes: {
        InputPage.routeName: (context) => const InputPage(),
        // ResultsPage.routeName: (context) => const ResultsPage()
      },
      onGenerateRoute: (settings) {
        if (settings.name == ResultsPage.routeName) {
          final args = settings.arguments as ResultsPageArguments;

          return MaterialPageRoute(
            builder: (context) {
              return ResultsPage(args: args);
            },
          );
        }

        return null;
      },
    );
  }
}
