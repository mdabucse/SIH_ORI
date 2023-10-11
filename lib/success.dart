import 'package:flutter/material.dart';
class success extends StatelessWidget {
  const success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),),
        body:Center(child: Text("Successfully Booked",style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),)),
    );
  }
}