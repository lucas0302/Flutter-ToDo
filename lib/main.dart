import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(
          create: (BuildContext context) => TaskProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Lista de Tarefas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}