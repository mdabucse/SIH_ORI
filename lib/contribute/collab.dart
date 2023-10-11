import 'package:flutter/material.dart';

class collab extends StatelessWidget {
  Map<String, String> textMap = {};

  // Create a TextEditingController to manage the input text.
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('Contribute'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
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
                    hintText: 'location of hotel',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController1, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type of the hotel : VEG/NON-VEG/BOTH',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController2, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name of the hotel',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController3, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Phone number',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _textController4, // Set the controller
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'ratings for your hotel',
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Get the text from the controller and print it when Submit is pressed.
                    String inputText = _textController.text;
                    String inputText1 = _textController1.text;
                    String inputText2 = _textController2.text;
                    String inputText3 = _textController3.text;
                    String inputText4 = _textController4.text;
                    textMap['location'] = inputText;
                    textMap['type'] = inputText1;
                    textMap['name'] = inputText2;
                    textMap['phno'] = inputText3;
                    textMap['rating'] = inputText4;
                    print(textMap);
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