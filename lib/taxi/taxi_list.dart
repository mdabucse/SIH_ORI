import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:sample/hotel/hotel_landing.dart';
import 'package:sample/taxi/cab_booking.dart';
import 'package:sample/welcome_pages/user_type.dart';
class taxi_list extends StatefulWidget {
  const taxi_list({super.key});

  @override
  State<taxi_list> createState() => _taxi_listState();
}

class _taxi_listState extends State<taxi_list> {
  
  void initState() {
    super.initState();
    fetchData();
  }
  List <dynamic> Driver=[];
  final url='http://127.0.0.1:8000/api/api1/';
  Future<void> fetchData()async{
    final response=await http.get(Uri.parse(url));
    final json=jsonDecode(response.body);
    
  setState(() {
    Driver=json;
  });
  print(Driver[0]);
  }
  @override
  Widget build(BuildContext context) {
    // final dri_name=Driver[0]['driver_name'];
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: fetchData),
      appBar: AppBar(
        title: Text("Taxi Details"),
      ),
      body: ListView.builder(
        itemCount: Driver.length,
        itemBuilder: (context,index){
           return ListTile(
      leading: Icon(Icons.local_taxi),
      title: Text(Driver[index]['driver_name'].toString()),
      subtitle: Text(Driver[index]['phone_no1'].toString()),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CabBookingPage(),
            ),
          ) ;
        },
      );
          
        }
        ),
    );
  }
}

// class taxi_list extends StatefulWidget {
//   @override
//   State<taxi_list> createState() => _taxi_listState();
// }

// class _taxi_listState extends State<taxi_list> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//         title: Text('Available cabs'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
        
//       ),
//         body: HotelList(),
//       ),
//     );
//   }
// }

// class HotelList extends StatefulWidget {
//   @override
//   State<HotelList> createState() => _HotelListState();
// }

// class _HotelListState extends State<HotelList> {
//   @override
//   List <dynamic> drivers=[];
//   final url='http://127.0.0.1:8000/api/api1/';
//   Future <void> fetchData()async{
//     final response = await http.get(Uri.parse(url));
//     final json= jsonDecode(response.body);
//     setState(() {
//       drivers=json;
//     });
//     print(drivers);
//   }
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListView.builder(
//           itemCount: drivers.length,
//           itemBuilder: (context,index){
//           return ListTile(
            
//             title: Text('$drivers'),
//           );
//         }),
    //     ListTile(
    //   leading: Icon(Icons.local_taxi),
    //   title: Text('Ola'),
    //   subtitle: Text('City: Madurai'),
    //   onTap: () {
    //     Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (context) => CabBookingPage(),
    //       ),
    //     );
    //   },
    // ),
//         ListTile(
//       leading: Icon(Icons.local_taxi),
//       title: Text('Uber'),
//       subtitle: Text('City: Madurai'),
//       onTap: fetchData
//       // {
//       //   Navigator.of(context).push(
//       //     MaterialPageRoute(
//       //       builder: (context) => CabBookingPage(),
//       //     ),
//       //   );
//       // },
//     ),
//     ListTile(
//       leading: Icon(Icons.local_taxi),
//       title: Text('Rapido'),
//       subtitle: Text('Ph: 9578737494'),
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => CabBookingPage(),
//           ),
//         );
//       },
//     ),
//     ListTile(
//       leading: Icon(Icons.local_taxi),
//       title: Text('Uber'),
//       subtitle: Text('Ph: 8124616743'),
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) => CabBookingPage(),
//           ),
//         );
//       },
//     ),
  
//       ],
//     );
//   }
// }

// class HotelDetailsPage extends StatelessWidget {
//   final String hotelName;

//   HotelDetailsPage({required this.hotelName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hotel Details'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Hotel Name:',
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               hotelName,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             // Add more hotel details here
//           ],
//         ),
//       ),
//     );
//   }
// }
