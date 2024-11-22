import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAninmation;
  @override
  void initState() {
     super.initState();
     initAnimation();
     navigatioToHome();
  }
@override
  void dispose() { 
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(
          height: 4,
        ),
       SlidingText(slidingAnimation:slidingAninmation)
      ],
    );
  }
  navigatioToHome() {
    return Future.delayed(const Duration(seconds: 10),
   (){
    Get.to(()=> const Home() 
    ,transition: Transition.fade,
     duration:durationTime  );
   });
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAninmation =
        Tween<Offset>(begin: const Offset(0, 7), end:  Offset.zero)
                          .animate(animationController);
       animationController.forward();
  }
}