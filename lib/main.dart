import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:productivee/features/presentation/pages/login_page.dart';

import 'assets/theme/theme.dart';
import 'core/injector/set_up_locator.dart';
import 'features/presentation/pages/profile_page.dart';
import 'features/presentation/pages/splash_screen.dart';
// final authUser = AuthenticatedUser();

Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App',
      theme: AppTheme.darkTheme(),
      home: SplashScreen(),
    );
  }
}

