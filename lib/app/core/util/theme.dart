import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff4c47b5);
final Color secondaryColor = Color(0xff1f9eec);
final Color backgroundSecondaryColor = Color(0xff2196F3); // Color(0xff2196F3);
final ColorScheme colorScheme = const ColorScheme.light().copyWith(
  primary: primaryColor,
  secondary: secondaryColor,
);

final TextStyle whiteText = TextStyle(
  color: Colors.white,
);

final TextStyle whiteBigText = whiteText.copyWith(fontSize: 20);

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  onSurface: Colors.green,
  primary: Colors.black38,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
  textStyle: TextStyle(fontSize: 16),
);

final ButtonStyle raisedButtonStyle2 = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(primaryColor),
  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 16)),
);

// final ButtonStyle textButtonStyle = ButtonStyle(
//   textStyle: MaterialStateProperty.all(TextButton.styleFrom(primary: primaryColor)),
//   padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 16)),
// );

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: primaryColor,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    accentColor: Color(0xff1f9eec),
    elevatedButtonTheme: ElevatedButtonThemeData(style: raisedButtonStyle2),
    textButtonTheme: TextButtonThemeData(style: flatButtonStyle),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    // buttonTheme: ButtonThemeData(
    //   colorScheme: colorScheme,
    //   textTheme: ButtonTextTheme.primary,
    // ),
  );
}
