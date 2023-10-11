import 'package:flutter/material.dart';
import 'package:sample/rooms/booking_successfully.dart';

class HotelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelBookingPage(),
    );
  }
}

class HotelBookingPage extends StatefulWidget {
  @override
  _HotelBookingPageState createState() => _HotelBookingPageState();
}

class _HotelBookingPageState extends State<HotelBookingPage> {
  // Define variables and controllers for inputs
  TextEditingController checkInController = TextEditingController();
  TextEditingController checkOutController = TextEditingController();
  TextEditingController Name = TextEditingController();
  TextEditingController Age = TextEditingController();
  TextEditingController Address = TextEditingController();
  int selectedRoom = 0;

  // Define a list of available rooms
  List<String> roomTypes = ["Single Room", "Double Room", "Suite"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Room Booking'),
      ),
      body: Stack(
        children: [
          // Background Image
          // Image.asset(
          //   "back.jpg", 
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: double.infinity,
          // ),

          Padding(
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
                  controller: Name,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: Age,
                  decoration: InputDecoration(labelText: 'Age'),
                ),
                TextField(
                  controller: Address,
                  decoration: InputDecoration(labelText: 'Address'),
                ),
                TextField(
                  controller: checkInController,
                  decoration: InputDecoration(labelText: 'Check-In Date'),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: checkOutController,
                  decoration: InputDecoration(labelText: 'Check-Out Date'),
                ),
                SizedBox(height: 16.0),
                DropdownButtonFormField<int>(
                  value: selectedRoom,
                  onChanged: (value) {
                    setState(() {
                      // selectedRoom = value;
                    });
                  },
                  items: roomTypes
                      .asMap()
                      .map((index, roomType) => MapEntry(
                          index,
                          DropdownMenuItem<int>(
                            value: index,
                            child: Text(roomType),
                          )))
                      .values
                      .toList(),
                  decoration: InputDecoration(labelText: 'Select Room Type'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BookingSuccessfulPage(name: '$Name', age: '$Age', address: '$Address', checkInDate: '$checkInController', checkOutDate: '$checkOutController', selectedRoomType: '$selectedRoom')));
                  },
                  child: Text('Book Room'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
