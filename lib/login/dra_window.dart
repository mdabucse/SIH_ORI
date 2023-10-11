import 'package:flutter/material.dart';
import 'package:sample/explore.dart/explore_home.dart';
import 'package:sample/explore.dart/madurai/madurai.dart';
import 'package:sample/todo/screens/home.dart';

class MyDrawer extends StatelessWidget {
  final String email;
  MyDrawer({
    required this.email
  });
  @override
  Widget build(BuildContext context) {
    print(email);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('$email'),
            accountEmail:
                Text('$email'), 
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/abu.jpg'), 
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              
              Navigator.of(context).pop();
              
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
            onTap: () {
              
              Navigator.of(context).push(_customPageRoute(home_explore()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Todo List'),
            onTap: () {
              
              Navigator.of(context).push(_customPageRoute(Home()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              
              Navigator.of(context).pop();
              
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
