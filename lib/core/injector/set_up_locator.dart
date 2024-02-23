import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => FirebaseAuth.instance);
  GetIt.I.registerLazySingleton(() => FirebaseFirestore.instance);
}