import 'package:flutter/material.dart';
import 'package:sample/explore.dart/madurai/madurai.dart';

class home_explore extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/madurai/meenakshi.jpg',
    'assets/madurai/alagar.jpg',
    'assets/madurai/gandhi.jpg',
    'assets/madurai/aairam.jpg',
    'assets/madurai/palam.jpg',
    'assets/madurai/koodal.jpg',
    'assets/madurai/thirumalainaayakkar.jpg',
    'assets/madurai/theppa.jpg',
    'assets/madurai/thiru.jpg',
    'assets/madurai/church.jpg',
  ];

  final List<String> buttonTexts = [
    'Madurai Meenakshi Amman Kovil',
    'Alagarkoil Temple',
    'Gandhi Memeorial Museum',
    'Aayiram Kaal Mandapam',
    'Palamuthir Solai',
    'Koodal Alagar Temple',
    'Thirumalainaayakkar Mahal',
    'Vandiyur Maariyamman Kovil',
    'Thiruparankunram',
    'St Marys Cathedral Church'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Places In Madurai'),
      ),
      
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return ContainerCard(
            imagePath: imagePaths[index],
            buttonText: buttonTexts[index],
            onPressed: () {
              // Assign specific functions for each button
              if (index == 0) {
                Navigator.of(context).push(_customPageRoute(madurai_()));
                // Handle button for 'Madurai Meenakshi Amman Kovil'
                // Add your code here
              } else if (index == 1) {
                // Handle button for 'Alagarkoil Temple'
                // Add your code here
              }
              // Continue with similar conditions for other buttons
            },
          );
        },
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final VoidCallback? onPressed;

  const ContainerCard({
    required this.imagePath,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(
            imagePath, 
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}

PageRouteBuilder _customPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
