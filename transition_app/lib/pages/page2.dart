import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('Hola'),
      ),
    );
  }
}
