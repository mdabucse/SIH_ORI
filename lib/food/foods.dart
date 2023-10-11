import 'package:flutter/material.dart';

class foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('KFC'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
      ),
        body: HotelDetails(),
      ),
    );
  }
}

class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/kfc.jpg', 
              width: double.infinity,
              height: 325, 
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'KFC',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Non-Veg', // Add 'Veg' or 'Non-Veg' here
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 223, 71, 10),
                    ),
                  ),
                  Text(
                    'Rating: 4.5',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 22, 111, 194),
                    ),
                  ),
                ],
              ),
            ),
            // Hotel description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Enjoy your stay at Reddision, a luxurious and comfortable hotel located in the heart of the city. We offer top-notch amenities and excellent service to make your stay memorable.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // Amenities
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Food Types:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 8.0,
                children: <Widget>[
                  Chip(label: Text('Chinese')),
                  Chip(label: Text('Thai')),
                  Chip(label: Text('Italian')),
                  Chip(label: Text('Indian')),
                ],
              ),
            ),
            // Location
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Location: Coimbatore',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
