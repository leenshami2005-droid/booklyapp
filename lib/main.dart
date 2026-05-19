import 'package:booklyapp/Features/splashview/presentation/views/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(booklyapp());
}

class booklyapp extends StatelessWidget {
  const booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: splashview(),
    );
  }
}