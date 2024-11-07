import 'package:flutter/material.dart';

import 'Gradient_Container.dart';

void main (){
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        Color.fromARGB(255, 68, 21, 149),
        Color.fromARGB(255, 33, 5, 109),
      ),
    ),
  ));
}
