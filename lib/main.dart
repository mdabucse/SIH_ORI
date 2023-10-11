import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:sample/food/food_list.dart';
// import 'package:sample/food/foods.dart';
// import 'package:sample/hotel/hotel_landing.dart';
// import 'package:sample/hotel/hotel_list.dart';
// import 'package:sample/login/login.dart';
// import 'package:sample/welcome_pages/state.dart';
import 'package:sample/summa.dart';
import 'firebase_options.dart';
import 'package:sample/welcome_pages/welcome1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform); 
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: WelcomePage1(),
        home: HotelBookingPage(),
      ),
    );
}