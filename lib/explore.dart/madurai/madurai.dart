import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sample/explore.dart/explore_home.dart';
import 'package:sample/food/food_list.dart';
import 'package:sample/hotel/hotel_list.dart';
import 'package:sample/taxi/cab_booking.dart'; 
import 'package:sample/home copy.dart';
import 'package:sample/taxi/taxi_list.dart';

class madurai_ extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/madurai/meenakshi1.jpg',
    'assets/madurai/meenakshi2.jpg',
    'assets/madurai/meenakshi3.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meenakshi Amman Kovil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top Area - Dynamic Image Slideshow
            CarouselSlider(
              items: imagePaths.map((imagePath) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color of the image area
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200, // Adjust the height as needed
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true, // Auto play the slideshow
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
              ),
            ),

            // Below - Text Area
            Container(
              padding: EdgeInsets.all(16), // Padding around the text area
              child: Text(
                'Madurai Meenakshi Amman Temple\n\n      Experience the culture of Madurai with this private tour of its ancient temples...',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            // Rows for Additional Cards with Buttons
            Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Choose Your Role",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                      child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 180, 229, 162),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/travel.png",
                                    width: 70.0,
                                    height: 85.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_customPageRoute(Home()));
                                      },
                                      child: Text("Nearby Spots"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 180, 229, 162),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/room.png",
                                    width: 70.0,
                                    height: 80.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  SizedBox(height: 5.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_customPageRoute(HotelListPage()));
                                      },
                                      child: Text("Lodge"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                      child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: [
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 180, 229, 162),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/cab.png",
                                    width: 70.0,
                                    height: 85.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_customPageRoute(taxi_list()));
                                      },
                                      child: Text("Cab"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: Color.fromARGB(255, 180, 229, 162),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/summa.png",
                                    width: 70.0,
                                    height: 80.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  SizedBox(height: 5.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(_customPageRoute(food_list()));
                                      },
                                      child: Text("Food"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),),
                )
          ],
        ),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  const CardButton({
    required this.imagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.0,
      height: 160.0,
      child: Card(
        color: Colors.black.withOpacity(0.3),
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  imagePath,
                  width: 64.0,
                  height: 90.0,
                ),
                SizedBox(height: 0.0),
                SizedBox(height: 5.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle button click here
                  },
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
PageRouteBuilder _customPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}