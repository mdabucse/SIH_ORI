import 'package:flutter/material.dart';
import 'package:sample/food/foods.dart';
class food_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text('Restaurent'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
      ),
      body: HotelList(),
    ));
  }
}

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('KFC'),
      subtitle: Text('Non-Veg' ,style: TextStyle(color: Color.fromARGB(255, 240, 9, 9)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => foods(),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Thalapakatti '),
      subtitle: Text('Non - Veg' ,style: TextStyle(color: Colors.red),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Amsavalli '),
      subtitle:  Text('Non - Veg' ,style: TextStyle(color: Colors.red),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Anandha bhavan '),
      subtitle:  Text('Veg' ,style: TextStyle(color: Color.fromARGB(255, 28, 171, 6)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('A2B '),
      subtitle: Text('Veg' ,style: TextStyle(color: Color.fromARGB(255, 28, 171, 6)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Maiyoo '),
      subtitle: Text('Veg' ,style: TextStyle(color: Color.fromARGB(255, 28, 171, 6)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Cockarako '),
      subtitle: Text('Non-Veg' ,style: TextStyle(color: Color.fromARGB(255, 240, 9, 9)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('Dominos '),
      subtitle: Text('Non-Veg' ,style: TextStyle(color: Color.fromARGB(255, 252, 6, 6)),),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(hotelName: 'Hotel ABC'),
          ),
        );
      },
    ),
        ListTile(
      leading: Icon(Icons.food_bank),
      title: Text('PizzaHut '),
      subtitle: Text('Veg' ,style: TextStyle(color: Color.fromARGB(255, 28, 171, 6)),),
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
