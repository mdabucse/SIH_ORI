import 'package:flutter/material.dart';
import 'package:sample/home.dart';
class state extends StatelessWidget {
  const state({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(width: 20,),
        Text("States")
      ]),

      ),
      body: Container(
        
        decoration: BoxDecoration(
          
        ),
        child: Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: Text(
                //     "Choose Your State:",
                //     style: TextStyle(
                //         color: Color.fromARGB(255, 250, 250, 247),
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20.0),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
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
                                    "assets/tamilnadu.jpg",
                                    width: 80.0,
                                    height: 85.0,
                                  ),
                                  SizedBox(height: 3),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(_customPageRoute(Home()));
                                      },
                                      child: Text("Tamilnadu"))
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
                                    "assets/kerala.jpg",
                                    width: 70.0,
                                    height: 80.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  SizedBox(height: 5.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.of(context)
                                        //     .push(_customPageRoute(Login()));
                                      },
                                      child: Text("Kerala"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),),
                ),
                SizedBox(height: 0,),
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: Text(
                //     "Choose Your State",
                //     style: TextStyle(
                //         color: Color.fromARGB(255, 156, 140, 140),
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20.0),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
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
                                    "assets/karna.jpg",
                                    width: 70.0,
                                    height: 85.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.of(context)
                                        //     .push(_customPageRoute(Home()));
                                      },
                                      child: Text("Karnataka"))
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
                                    "assets/andra.jpg",
                                    width: 70.0,
                                    height: 80.0,
                                  ),
                                  SizedBox(height: 0.0),
                                  SizedBox(height: 5.0),
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.of(context)
                                        //     .push(_customPageRoute(Login()));
                                      },
                                      child: Text("Andra Pradesh"))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),),
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