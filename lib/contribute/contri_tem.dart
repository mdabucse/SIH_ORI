import 'package:flutter/material.dart';
import 'package:sample/contribute/cab.dart';
import 'package:sample/contribute/collab.dart';
import 'package:sample/contribute/lodge.dart';
import 'package:sample/contribute/place.dart';

class tem extends StatelessWidget {
  const tem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(_customPageRoute(MyApp()));
        }, child: Text('Lodge')),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(_customPageRoute(collab()));
        }, child: Text('Hotel')),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(_customPageRoute(Cab_de()));
        }, child: Text('Cab')),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Navigator.of(context).push(_customPageRoute(place()));
        }, child: Text('Nearby Places')),
      ],)
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