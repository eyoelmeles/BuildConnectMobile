import 'package:build_connect_mobile/presentation/screens/daily_report/weather_step.dart';
import 'package:flutter/material.dart';

class DailyReportForm extends StatefulWidget {
  const DailyReportForm({super.key});

  @override
  State<DailyReportForm> createState() => _DailyReportFormState();
}

class _DailyReportFormState extends State<DailyReportForm> {
  int _currentStep = 0;

  List<Step> _getSteps() {
    return [
      weatherStep(_currentStep),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Build-Connect DailyReport"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Stepper(
          steps: _getSteps(),
          currentStep: _currentStep,
          onStepContinue: _currentStep < _getSteps().length - 1
              ? () => setState(() => _currentStep += 1)
              : null,
          onStepCancel:
              _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
        ),
      ),
    );
  }
}
