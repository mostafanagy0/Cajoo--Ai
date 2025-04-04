import 'package:cajoo/cajoo_app.dart';
import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const CajooApp());
}
