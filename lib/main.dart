import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:m_placement_tracker/Screens/Welcome/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

// git commit 



  static final String studentDashboard = 'Student Dashboard';
  static final String adminDashboard = 'Admin Dashboard';
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mPlacementTracker',
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),

    );
  } 
}
