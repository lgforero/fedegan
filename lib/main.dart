import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fedegan/screens/dashboard.dart';
import 'package:fedegan/screens/firma.dart';
import 'package:fedegan/screens/home.dart';
import 'package:fedegan/screens/registro.dart';
import 'package:provider/provider.dart';
import 'package:fedegan/preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // SHARED PREFERENCES INIT
  Preferences _prefs;

  @override
  void initState() {
    _prefs = Preferences();
    _prefs.init();
    super.initState();
  }

  @override
  void dispose() {
    _prefs?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MultiProvider(
      providers: [Provider<Preferences>.value(value: _prefs)],
      child: StreamBuilder<Preferences>(
          stream: _prefs.stream,
          builder: (context, snapshot) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: 'Montserrat',
                ),
                title: 'TuPrimero',
                initialRoute: 'registro',
                routes: {
                  'home': (context) => HomePage(),
                  'registro': (context) => Registro(),
                  'dashboard': (context) => Dashboard(),
                  'firma': (context) => Firma(),
                });
          }),
    );
  }
}
