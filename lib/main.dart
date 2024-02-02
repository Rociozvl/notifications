
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notificaciones/firebase_options.dart';
import 'package:notificaciones/screens/screens.dart';
import 'package:notificaciones/services/push_notifications.dart';


void main() async { 

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
;
   
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : (_) =>  const HomeScreen(),
        'message' : (_) =>  const MessageScreen()
      },
      
    );
  }
}

