import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryColors {
  static final purple = Color(0xFF5117AC);
  static final green = Color(0xFF20D0C4);
  static final dark = Color(0xFF03091E);
  static final grey = Color(0xFF212738);
  static final lightGrey = Color(0xFFBBBBBB);
  static final veryLightGrey = Color(0xFF3F3F3);
  static final white = Color(0xFFFFFFFF);
  static final pink = Color(0xFFF5638B);
}

List<Color> deliveryGradients = [
  DeliveryColors.green, 
  DeliveryColors.purple];

final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
    color: DeliveryColors.white,
  ),
  canvasColor:DeliveryColors.white,
  primaryColor:DeliveryColors.purple,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  inputDecorationTheme:InputDecorationTheme(
   
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.grey,
      fontSize: 10,
    ),
    border: OutlineInputBorder(
      borderRadius:BorderRadius.circular(10),
      borderSide: BorderSide(
        color: DeliveryColors.veryLightGrey,
        width: 2,
        style: BorderStyle.solid,
      )
    )
  ),
  iconTheme: IconThemeData(
    color:DeliveryColors.purple
  ),
  primaryIconTheme: IconThemeData(
    color:DeliveryColors.purple
  ),
  
);

final darkTheme = ThemeData(
  canvasColor:DeliveryColors.grey,
  primaryColor:DeliveryColors.white,
  scaffoldBackgroundColor: DeliveryColors.dark,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.green,
    displayColor: DeliveryColors.green,
  ),
  inputDecorationTheme:InputDecorationTheme(
     fillColor:DeliveryColors.grey,
    filled:true,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.white,
      fontSize: 10,
    ),
    border: OutlineInputBorder(
      borderRadius:BorderRadius.circular(10),
      borderSide: BorderSide(
        color: DeliveryColors.veryLightGrey,
        width: 2,
        style: BorderStyle.solid,
      )
    )
  ),
  iconTheme: IconThemeData(    
    color:DeliveryColors.white
  ),

  
);

