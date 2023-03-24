import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projetocademeutrampo/categorias/cat_design.dart';
import 'package:projetocademeutrampo/categorias/cat_informatica.dart';
import 'package:projetocademeutrampo/checagem_page.dart';
import 'package:projetocademeutrampo/editarperfil.dart';
import 'package:projetocademeutrampo/firebase_options.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/perfil.dart';
import 'package:projetocademeutrampo/perfil.dart';
import 'package:projetocademeutrampo/profiles/Fernando.dart';
import 'package:projetocademeutrampo/profiles/Joana.dart';
import 'package:projetocademeutrampo/profiles/Rodrigo.dart';
import 'login.dart';
import 'dart:js';

void main() async{ 
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de login',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ChecagemPage()
    );
  }
}
