import 'package:flutter/material.dart';

class slidingtext extends StatelessWidget {
  const slidingtext({
    super.key,
    required this.slidingcontroller,
  });

  final Animation<Offset> slidingcontroller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingcontroller,
    
      builder: (context , _) {
        return SlideTransition(
          position: slidingcontroller,
          child: Text("read free books", textAlign: TextAlign.center,));
      }
    );
  }
}