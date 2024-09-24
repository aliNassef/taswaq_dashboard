import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/dI/dependency_injuction.dart';
import 'package:taswaq_dashboard/taswaq_dashboard.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setUpGetIt();
  runApp(const TaswaqDashBoard());
}
