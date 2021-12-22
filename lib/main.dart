import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:scanny/features/initializations/view/initialization_view.dart';
import 'package:scanny/features/scanny_observer.dart';
import 'package:scanny/screens/splash.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MaterialApp(
      home: InitializationView(),
    )),
    blocObserver: ScannyObserver(),
  );
}
