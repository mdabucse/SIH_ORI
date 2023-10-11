import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> postData(var a) async {
  const String apiUrl =
      'http://10.0.2.2:8000/api/api1/'; // Replace with your API endpoint

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: <String, String>{
      'Content-Type': 'application/json', // Adjust the content type as needed
    },
    body: jsonEncode(a), // Convert your data to JSON
  );

  if (response.statusCode == 201) {
    print('POST request successful');
    print('Response Data: ${response.body}');
  } else {
    print('POST request failed with status: ${response.statusCode}');
    print('Response Body: ${response.body}');
  }
}

class Cab_de extends StatelessWidget {
  Map<String, dynamic> textMap = {};

  // Create a TextEditingController to manage the input text.
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Car details'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _textController, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name of the driver',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController1, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Vehicle no of car',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController2, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Phone no 1',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController3, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'phone no 2',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get the text from the controller and print it when Submit is pressed.
                    String inputText = _textController.text;
                    String inputText1 = _textController1.text;
                    String inputText2 = _textController2.text;
                    String inputText3 = _textController3.text;

                    textMap['location'] = inputText;
                    textMap['type'] = inputText1;
                    textMap['name'] = inputText2;
                    textMap['phno'] = int.tryParse(inputText3);

                    print(textMap);
                    postData(textMap);
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}