import 'package:chat_app_class/screens/chat_screen.dart';
import 'package:chat_app_class/screens/login_screen.dart';
import 'package:chat_app_class/screens/registration_screen.dart';
import 'package:chat_app_class/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  print('User granted permission: ${settings.authorizationStatus}');

  FirebaseMessaging.onMessage.listen((event) {
    print("message : ${event.data}");

    if (event.notification != null) {
      print('  ${event.notification!.title}');
    }
  });

  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  void getFCM() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();

    print('fcmToken: $fcmToken');
  }

  @override
  Widget build(BuildContext context) {
    getFCM();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
