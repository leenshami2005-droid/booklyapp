import 'package:booklyapp/Features/home/presentation/views/homeview.dart';
import 'package:booklyapp/Features/splashview/presentation/views/widgets/slidingcontroller.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/images.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late  Animation<Offset> slidingcontroller ;
  @override
  void initState() {

navigatetohome();

initslidinganimation();
  }


  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(logo),
        slidingtext(slidingcontroller: slidingcontroller)
      ],
    );
  }
    void initslidinganimation() {
    animationController =AnimationController(vsync:this , duration: Duration(seconds: 1) );
    slidingcontroller=Tween<Offset>(begin:Offset(0, 2) , end:Offset.zero ).animate(animationController);
        super.initState();
        animationController.forward();
  }
    void navigatetohome() {
    Future.delayed(Duration(seconds: 3) ,(){
    Get.to(()=> Homeview() , transition: Transition.fade , duration: ktransitionduration);
    } );
  }


}


