import 'package:flutter/material.dart';
import 'package:sample/coming.dart';
import 'package:sample/contribute/collab.dart';
import 'package:sample/contribute/contri_tem.dart';
import 'package:sample/explore.dart/madurai/madurai.dart';
import 'package:sample/explore.dart/explore_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sample/login/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sample/login/login.dart';
import 'package:sample/todo/main.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    'assets/madurai/meenakshi.jpg',
    'assets/madurai/alagar.jpg',
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
    'Madurai Meenakshi Amman Kovil',
    'Alagarkoil Temple',
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
        title: Text("Popular Places"),
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
              Navigator.of(context).push(_customPageRoute(Home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('CheckList'),
            onTap: () {
              Navigator.of(context).push(_customPageRoute(MyApp()));
            },
          ),
          
          Card(
             shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1000), // Adjust the value for desired corner radius
  ),
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text('Collabrate'),
              onTap: () {
                Navigator.of(context).push(_customPageRoute(tem()));
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('SignOut'),
            onTap: () {
             Navigator.of(context).push(_customPageRoute(Login()));
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
            'assets/back6.jpg', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text("Home"),
              backgroundColor: Colors.transparent, // Make the app bar transparent
              elevation: 0, 
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
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
                  if (index == 0) {
                    Navigator.of(context).push(_customPageRoute(madurai_()));
                  }
                  if (index == 1) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 2) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 3) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 4) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 5) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 6) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 7) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 8) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  if (index == 9) {
                    Navigator.of(context).push(_customPageRoute(coming_soon()));
                  }
                  
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
