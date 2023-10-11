import 'package:flutter/material.dart';

class CabBookingPage extends StatefulWidget {
  @override
  _CabBookingPageState createState() => _CabBookingPageState();
}

class _CabBookingPageState extends State<CabBookingPage> {
  // Define variables for user inputs
  TextEditingController pickupLocationController = TextEditingController();
  TextEditingController dropoffLocationController = TextEditingController();
  bool isRideScheduled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Cab Booking'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter Pickup and Drop-off Locations',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: pickupLocationController,
              decoration: InputDecoration(labelText: 'Pickup Location'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: dropoffLocationController,
              decoration: InputDecoration(labelText: 'Drop-off Location'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement cab booking logic here
                // You can use the pickupLocationController and dropoffLocationController to get user inputs
                // Example: Call an API to book a cab
                setState(() {
                  isRideScheduled = true;
                });
              },
              child: Text('Book Cab'),
            ),
            if (isRideScheduled)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Your ride is scheduled!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
