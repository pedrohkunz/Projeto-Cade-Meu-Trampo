import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:html';
import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class fotoDePerfil extends StatefulWidget {
  const fotoDePerfil({super.key});

  @override
  State<fotoDePerfil> createState() => _fotoDePerfilState();
}

class _fotoDePerfilState extends State<fotoDePerfil> {
  String? url;

  @override
  void initState() {
    super.initState();
    loadImageUrl();
  }

  Future<void> loadImageUrl() async {
    final User? user = FirebaseAuth.instance.currentUser;
    String? email = user!.email;
    String fileName = email! + 'Foto';

    final ref = FirebaseStorage.instance.ref('uploads/$fileName.png');
    url = await ref.getDownloadURL();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100), // bordas arredondadas
      child: url == null
          ? Image.asset(
              'User.png',
              width: 200,
              height: 200,
            )
          : Image.network(
              url!,
              width: 200,
              height: 200,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset(
                  'User.png',
                  width: 200,
                  height: 200,
                );
              },
            ),
    );
  }
}