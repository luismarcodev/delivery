import 'package:delivery/presentation/splash/splash_screen.dart';
import 'package:delivery/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
      ),
      canvasColor: DeliveryColors.white,
      primaryColor: DeliveryColors.purple,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.purple,
        displayColor: DeliveryColors.purple,
      ),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: GoogleFonts.poppins(
            color: DeliveryColors.grey,
            fontSize: 15,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: DeliveryColors.veryLightGrey,
                width: 2,
                style: BorderStyle.solid,
              ))),
      iconTheme: IconThemeData(color: DeliveryColors.purple),
      primaryIconTheme: IconThemeData(color: DeliveryColors.purple),
    );

    final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
      ),
      canvasColor: DeliveryColors.grey,
      primaryColor: DeliveryColors.white,
      scaffoldBackgroundColor: DeliveryColors.dark,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: DeliveryColors.grey,
          filled: true,
          hintStyle: GoogleFonts.poppins(
            color: DeliveryColors.white,
            fontSize: 10,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: DeliveryColors.veryLightGrey,
                width: 2,
                style: BorderStyle.solid,
              ))),
      iconTheme: IconThemeData(color: DeliveryColors.white),
    );
    return MaterialApp(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}
