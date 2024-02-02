//SHA1: B1:68:31:ED:E4:14:1A:37:DA:08:59:6B:48:CC:07:32:59:8D:DC:A6
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

//import 'package:notificaciones/firebase_options.dart';

 Future<void> handleBackgroundMessage(RemoteMessage message) async {
        print('Title: ${message.notification?.title}');
        print('Body: ${message.notification?.body}');
        print('Payload: ${message.data}');
       }
 
   class FirebaseApi{

    final _firebaseMessaging = FirebaseMessaging.instance;


    Future<void> initNotifications() async{
        
        await _firebaseMessaging.requestPermission();

        final FCMToken = await _firebaseMessaging.getToken();

        print('Token: $FCMToken');
        FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    }
      
     
      
     }


   

  //  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //   FlutterLocalNotificationsPlugin();

  //   Future<void> initNotifications() async {

  //     const AndroidInitializationSettings initializationSettingsAndroid =
  //     AndroidInitializationSettings('app_icon');

  //     const InitializationSettings initializationSettings = InitializationSettings(
  //      android: initializationSettingsAndroid
  //     );
  //     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  //   }


  //   Future<void> mostrarNotification() async{
  //     const AndroidNotificationDetails androidNotificationDetails = 
  //     AndroidNotificationDetails('channelId', 'channelName');

  //     const NotificationDetails notificationDetails = NotificationDetails(
  //       android: androidNotificationDetails
  //     );

  //     await flutterLocalNotificationsPlugin.show(
  //       1,
  //       'hola',
  //       'fdsd',
  //       notificationDetails
  //       );
  //   }
  

// class PushNotificationService{
//   static FirebaseMessaging messaging = FirebaseMessaging.instance;
//   static String? token;

  

 
//   static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
 
//   static Future _backgroundHandler(RemoteMessage message) async {
//     print('onBackgroundHandler: ${message.messageId}');
//   }
 
//   static Future _onMessageHandler(RemoteMessage message) async {
//     print('onMessageHandler: ${message.messageId}');
 

 
//     RemoteNotification? notification = message.notification;
//     String iconName = const AndroidInitializationSettings('@mipmap/ic_launcher').defaultIcon.toString();
 
//     // Si `onMessage` es activado con una notificación, construimos nuestra propia
//     // notificación local para mostrar a los usuarios, usando el canal creado.
    
      
    
//   }
 
//   static Future _onMessageOpenApp(RemoteMessage message) async {
//     print('onMessageOpenApp: ${message.messageId}');
//   }
 
//   static Future initializeApp() async {
 
//     //Push Notifications
//      await Firebase.initializeApp(
//        options: DefaultFirebaseOptions.currentPlatform,
//      );
   
//     token = await FirebaseMessaging.instance.getToken();
//     print('Token: $token');
 
//     //Handlers
//     FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
//     FirebaseMessaging.onMessage.listen(_onMessageHandler);
//     FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
    
//     //Local Notifications
 
 
//   }
// }