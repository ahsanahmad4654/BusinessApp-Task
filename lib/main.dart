// Import the Flutter and Get packages.
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Import the home screen and constants files.
import 'Screens/home/home_screen.dart';
import 'Utils/constants.dart';

// The main function of the app.
void main() {
  // Run the app with the MyApp widget.
  runApp(const MyApp());
}

// The MyApp widget.
class MyApp extends StatelessWidget {
  // Constructor.
  const MyApp({super.key});

  // Build the widget.
  @override
  Widget build(BuildContext context) {
    // Return a GetMaterialApp widget with the specified configuration.
    return GetMaterialApp(
      // Disable the debug banner.
      debugShowCheckedModeBanner: false,
      // Set the app's title.
      title: 'Business App',
      // Set the app's theme.
      theme: ThemeData(
        // Set the text theme.
        textTheme: const TextTheme(
          // Set the title large text style.
          titleLarge: TextStyle(
            fontSize: 48,
            fontFamily: 'Jameel',
            color: secondaryColor,
            fontWeight: FontWeight.w800,
          ),
          // Set the title medium text style.
          titleMedium: TextStyle(
            fontSize: 48,
            fontFamily: 'Jameel',
            color: primaryColor,
            fontWeight: FontWeight.w800,
          ),
          // Set the title small text style.
          titleSmall: TextStyle(
            fontSize: 38,
            fontFamily: 'Jameel',
            color: secondaryColor,
            fontWeight: FontWeight.w800,
          ),
          // Set the label large text style.
          labelLarge: TextStyle(
            fontSize: 35,
            fontFamily: 'Jameel',
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      // Set the app's home screen.
      home: HomeScreen(),
    );
  }
}
