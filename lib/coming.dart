import 'package:flutter/material.dart';
class coming_soon extends StatelessWidget {
  const coming_soon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coming Soon'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),),
        body:Center(child: Text("Coming Soon...",style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),)),
    );
  }
}