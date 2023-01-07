import 'package:bloc_architecture/app.dart';
import 'package:bloc_architecture/config/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializedApp(flavor: Flavor.dev);

  runApp(const App());
}
