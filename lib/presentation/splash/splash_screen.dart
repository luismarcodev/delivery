import 'package:delivery/presentation/login/login_screen.dart';
import 'package:delivery/presentation/theme.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: deliveryGradients,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: DeliveryColors.white,
              child: Icon(Icons.food_bank_rounded, size: 50,),
            ),
            SizedBox(
              height: 20,
            ),
            Text('DeliveryApp',
            style: Theme.of(context).textTheme.headline4 ?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}