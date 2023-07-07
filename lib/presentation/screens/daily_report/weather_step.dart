import 'package:flutter/material.dart';

Step weatherStep(int currentStep) {
  String _weather = 'sunny';
  return Step(
    title: const Text('Weather'),
    subtitle:
        const Text("Choose the closest weather condition to today's weather"),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            const Text("Weather type",
                style: TextStyle(
                  fontSize: 24,
                  // color: Colors.black,
                  // fontWeight: FontWeight.bold,
                )),
            const SizedBox(width: 12),
            Expanded(
              child: DropdownButton<String>(
                value: _weather,
                items: [
                  'sunny',
                  'rainy',
                  'partly cloudy',
                  'windy',
                  'stormy',
                  'cloudy'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Expanded(
                      child: Row(
                        children: [
                          const Icon(Icons.cloud, color: Colors.blueGrey),
                          const SizedBox(width: 12),
                          Text(value),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // setState(() {
                  _weather = newValue!;
                  // });
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            Text(
              "Work Hours",
              style: TextStyle(
                fontSize: 24,
                // color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter worked hours',
                ),
              ),
            )
          ],
        ),
      ],
    ),
    isActive: currentStep == 0,
  );
}
