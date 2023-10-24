import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_palavra_chave/pages/controller/palavra_chave_controller.dart';
import 'package:project_palavra_chave/pages/home_page.dart';
import 'package:project_palavra_chave/pages/palava_chave_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/palavra-chave': (_) => BlocProvider(
              create: (_) => PalavraChaveController(),
              child: const PalavaChavePage(),
            ),
      },
    );
  }
}
