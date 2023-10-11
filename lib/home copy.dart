import 'package:flutter/material.dart';
import 'package:sample/contribute/collab.dart';
import 'package:sample/explore.dart/madurai/madurai.dart';
import 'package:sample/login/dra_window.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sample/explore.dart/explore_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sample/login/login.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    'assets/madurai/gandhi.jpg',
    'assets/madurai/aairam.jpg',
    'assets/madurai/palam.jpg',
    'assets/madurai/koodal.jpg',
    'assets/madurai/thirumalainaayakkar.jpg',
    'assets/madurai/theppa.jpg',
    'assets/madurai/thiru.jpg',
    'assets/madurai/church.jpg',
  ];

  final List<String> buttonTexts = [
    'Gandhi Memorial Museum',
    'Aayiram Kaal Mandapam',
    'Palamuthir Solai',
    'Koodal Alagar Temple',
    'Thirumalainaayakkar Mahal',
    'Vandiyur Maariyamman Kovil',
    'Thiruparankunram',
    'St Marys Cathedral Church'
  ];

  void signoutuser()async{
    try{
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
    }
    catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nearby Places'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        
      ),
      drawer: Drawer(
      child: ListView(
        children: [
           UserAccountsDrawerHeader(
            accountName: Text('Mohamed Abubakkar'), // Replace with user's name
            accountEmail:
                Text('mdabucse@gmail.com'), // Replace with user's email
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/abu.jpg'), // Replace with user's profile picture
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Handle the home drawer item click here
            },
          ),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
            onTap: () {
               
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Collabrate'),
            onTap: () {
              Navigator.of(context).push(_customPageRoute(collab()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('SignOut'),
            onTap: () {
             signoutuser();
            },
          ),
          // Add more drawer items as needed
        ],
      ),
    ),
    
      body: Stack(
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/back6.jpg', // Replace with your background image path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // AppBar with search bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text("Home"),
              backgroundColor: Colors.transparent, // Make the app bar transparent
              elevation: 0, // Remove the app bar shadow
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Handle search button press
                    // Add your code for search functionality here
                  },
                ),
              ],
            ),
          ),
          // List of containers
          ListView.builder(
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return ContainerCard(
                imagePath: imagePaths[index],
                buttonText: buttonTexts[index],
                onPressed: () {
                  // Assign specific functions for each button
                  if (index == 0) {
                    Navigator.of(context).push(_customPageRoute(madurai_()));
                    // Handle button for 'Madurai Meenakshi Amman Kovil'
                    // Add your code here
                  } else if (index == 1) {
                    // Handle button for 'Alagarkoil Temple'
                    // Add your code here
                  }
                  // Continue with similar conditions for other buttons
                },
              );
            },
          ),
        ],
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

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
