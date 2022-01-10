import 'package:crypwallet/colors.dart';
import 'package:crypwallet/completed.dart';
import 'package:crypwallet/cryptocurrency_detail_and_buy.dart';
import 'package:crypwallet/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: appPrimaryColor,
        ),
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: appPrimaryColor,
        dialogBackgroundColor: appPrimaryColor,
        cardColor: appPrimaryColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          bodyText2: TextStyle(
            color: Colors.black87,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          headline1: TextStyle(
            color: Colors.blue.shade600,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            backgroundColor: textBackgroundColor,
          ),
          headline2: TextStyle(
            color: Colors.black87,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            backgroundColor: textBackgroundColor,
          ),
        ),
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/currency-detail": (context) => CryptocurrencyDetailAndBuyPage(),
        "/completed": (context) => CompletedPage()
      },
    );
  }
}
