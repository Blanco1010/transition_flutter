import 'dart:js';

import 'package:flutter/material.dart';
import 'package:transition_app/pages/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
        child: Icon(Icons.access_time),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Page2();
      },
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        /* return SlideTransition(
          position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
              .animate(curvedAnimation),
          child: child,
        );
        */

        //Scale transition

        /*
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: child,
        );
        */

        //Rotation transition

        /*
        return RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: child,
        );
        */

        //Fade transition
        /*
        return FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
          child: child,
        );
        */

        return RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0, end: 1).animate(curvedAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
