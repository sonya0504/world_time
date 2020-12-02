import 'package:flutter/material.dart';
import 'package:wolrd_time/pages/home.dart';
import 'package:wolrd_time/pages/loading.dart';
import 'package:wolrd_time/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
  ));
