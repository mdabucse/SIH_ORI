import 'package:flutter/material.dart';
import 'package:sample/rooms/rooms.dart';
import 'package:sample/success.dart';

void main() {
  runApp(HotelDetailsPage1());
}

class HotelDetailsPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lodge Details'),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/hotel.jpg', 
            width: double.infinity,
            height: 200, 
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Reddision',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rating: 4.5',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
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
              'Room Types:',
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
                Chip(label: Text('Normal')),
                Chip(label: Text('Deluxe')),
                Chip(label: Text('Ultra Deluxe')),
                Chip(label: Text('Premium')),
                Chip(label: Text('Special')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Amenities:',
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
                
                Chip(label: Text('Free Wi-Fi')),
                Chip(label: Text('Swimming Pool')),
                Chip(label: Text('Gym')),
                Chip(label: Text('Restaurant')),
                Chip(label: Text('Spa')),
                Chip(label: Text('Parking')),
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
          Center(child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HotelBookingApp()));
          }, child: Text("Book Now")))
        ],
      ),
    );
  }
}
