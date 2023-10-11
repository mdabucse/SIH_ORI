import 'package:flutter/material.dart';
import 'package:sample/hotel/hotel_landing.dart';
import 'package:sample/taxi/cab_booking.dart';

class taxi_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('Available cabs'),
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
      leading: Icon(Icons.local_taxi),
      title: Text('Ola'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CabBookingPage(),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.local_taxi),
      title: Text('Uber'),
      subtitle: Text('City: Madurai'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CabBookingPage(),
          ),
        );
      },
    ),
    ListTile(
      leading: Icon(Icons.local_taxi),
      title: Text('Rapido'),
      subtitle: Text('Ph: 9578737494'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CabBookingPage(),
          ),
        );
      },
    ),
    ListTile(
      leading: Icon(Icons.local_taxi),
      title: Text('Uber'),
      subtitle: Text('Ph: 8124616743'),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CabBookingPage(),
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
