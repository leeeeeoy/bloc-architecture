import 'package:bloc_architecture/app.dart';
import 'package:bloc_architecture/injection/injection.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();

  runApp(const App());
}
