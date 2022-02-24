import 'package:flutter/material.dart';
import 'package:flutter_submission/pages/navigationBar.dart';
import 'package:flutter_submission/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) => ThemeProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //@override
  // Widget build(BuildContext context) => ChangeNotifierProvider(
  //       create: (context) => ThemeProvider(),
  //       builder: (context, _) {
  //         final themeProvider = Provider.of<ThemeProvider>(context);
  //         return MaterialApp(
  //           debugShowCheckedModeBanner: false,
  //           themeMode: themeProvider.themeMode,
  //           theme: MyThemes.lightTheme,
  //           darkTheme: MyThemes.darkTheme,
  //           home: FloatingBottomNavbar(),
  //         );
  //       },
  //     );

  @override
  Widget build(BuildContext context) {
    //return
    //ChangeNotifierProvider(
    //create: (context) => ThemeProvider(),
    //builder: (context, _) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value.darkTheme ? darkTheme : lightTheme,
          home: FloatingBottomNavbar(),
        );
      },
    );
    //},
    //);

    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (context) => ThemeProvider(),
    //     ),
    //   ],
    //   child: Consumer<ThemeProvider>(
    //     builder: (context, value, child) {
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: value.darkTheme ? darkTheme : lightTheme ,
    //         home: FloatingBottomNavbar(),
    //       );
    //     },
    //   ),
    // );
  }
}
