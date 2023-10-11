import 'package:flutter/material.dart';
class BookingSuccessfulPage extends StatelessWidget {
  final String name;
  final String age;
  final String address;
  final String checkInDate;
  final String checkOutDate;
  final String selectedRoomType;

  BookingSuccessfulPage({
    required this.name,
    required this.age,
    required this.address,
    required this.checkInDate,
    required this.checkOutDate,
    required this.selectedRoomType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Successful'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking Successful!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text('Name: $name'),
            Divider(),
            Text('Age: $age'),
            Divider(),
            Text('Address: $address'),
            Divider(),
            Text('Check-In Date: $checkInDate'),
            Divider(),
            Text('Check-Out Date: $checkOutDate'),
            Divider(),
            Text('Selected Room Type: $selectedRoomType'),
            Divider(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
