import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Image.asset('assets/images/Screenshot from 2024-07-19 14-08-44.png',height: 300,),

        ),
    );
  }

  @override
  void dispose(){
    super.dispose();
  }

  Future<void> gotoLogin() async{
    await Future.delayed( const Duration(seconds: 2));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => LoginScreen(),
      )
    );
  }
}