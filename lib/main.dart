import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/firebase_options.dart';
import 'package:survey/injection.dart';
import 'package:survey/presentation/core/widgets/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(AppWidget());
  final data = await FirebaseFirestore.instance
      .collection("Users")
      .doc("lkdjfq38oq,c")
      .get();
  print(data.data());
}
