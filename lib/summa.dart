import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HotelBookingPage extends StatefulWidget {
  @override
  _HotelBookingPageState createState() => _HotelBookingPageState();
}

class _HotelBookingPageState extends State<HotelBookingPage> {
  TextEditingController checkInController = TextEditingController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Room Booking'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets\\back1.jpg",
              width: 100,
            ),
            TextField(
              controller: checkInController,
              readOnly: true, // Make the text field read-only
              onTap: () {
                // Show a date picker when the text field is tapped
                _selectDate(context);
              },
              decoration: InputDecoration(
                labelText: 'Check-In Date',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle booking logic here
                String checkInDate = DateFormat('yyyy-MM-dd').format(selectedDate!);
                print('Check-In Date: $checkInDate');
              },
              child: Text('Book Room'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to show a date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    ))!;
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        checkInController.text = DateFormat('yyyy-MM-dd').format(selectedDate!);
      });
    }
  }
}
