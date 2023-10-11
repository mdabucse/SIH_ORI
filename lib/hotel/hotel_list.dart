import 'package:flutter/material.dart';
import 'package:sample/hotel/hotel_landing.dart';

class HotelListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('Hotels'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
      ),
        body: HotelList(),
      ),
    );
  }
}

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Raddison'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage1(),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Lets eat'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Arabian eats'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Saravana bavan'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Meridian'),
      subtitle: Text('City: Chennai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Taj'),
      subtitle: Text('City: Maduraii'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.hotel),
      title: Text('A2B'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
    ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Smoky thing'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
    ListTile(
      leading: Icon(Icons.hotel),
      title: Text('Babeque'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
      ],
    );
  }
}

class HotelDetailsPage extends StatelessWidget {
  final String hotelName;

  HotelDetailsPage({required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hotel Name:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              hotelName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add more hotel details here
          ],
        ),
      ),
    );
  }
}
