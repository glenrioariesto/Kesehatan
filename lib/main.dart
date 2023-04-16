import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kesehatan/provider/artikelProvider.dart';
import 'package:provider/provider.dart';

import 'loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => artikel(),
          builder: (context, child) => Consumer<artikel>(
            builder: (context, value, child) => MaterialApp(
              title: 'MyApp',
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.green[800],
                fontFamily: 'Roboto',
                textTheme: const TextTheme(
                  displayLarge:
                      TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                  titleLarge:
                      TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
                  bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: LoginPage(), // navigasi langsung ke halaman login
            ),
          ),
        ),
      ],
    );
  }
}
