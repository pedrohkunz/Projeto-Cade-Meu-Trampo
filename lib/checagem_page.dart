import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/login.dart';

class ChecagemPage extends StatefulWidget {
  const ChecagemPage({super.key});

  @override
  State<ChecagemPage> createState() => _ChecagemPageState();
}

class _ChecagemPageState extends State<ChecagemPage> {

  StreamSubscription? streamSubscription;

  @override
  initState() {
    super.initState();
    streamSubscription = FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
        if (user == null) {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MyLogin()));
        } else {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MyHome()));
        }
    });
  }

  @override

  void dispose(){
    streamSubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}