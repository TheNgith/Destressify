import 'package:destressify/views/health_data_page.dart';
import 'package:destressify/views/home_page.dart';
import 'package:destressify/views/login_page.dart';
import 'package:destressify/views/profile_page.dart';
import 'package:destressify/bloc/profile_data.dart';
import 'package:destressify/views/temp/ggfit_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: GGFit(),
    );
  }
}
