import 'dart:async';
import 'dart:io';
import 'dart:core';
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

class fotoDoDrawer extends StatefulWidget {
  const fotoDoDrawer({super.key});

  @override
  State<fotoDoDrawer> createState() => _fotoDoDrawerState();
}

class _fotoDoDrawerState extends State<fotoDoDrawer> {
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
      borderRadius: BorderRadius.circular(100),
      child: url == null
        ? Image.network(
            'https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FUser.png?alt=media&token=b74fc1ff-7938-415d-8c1a-be2c10dd6ef2',
            width: 82,
            height: 82,
          )
        : Image.network(
            url!,
            width: 82,
            height: 82,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Image.network(
                'https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FUser.png?alt=media&token=b74fc1ff-7938-415d-8c1a-be2c10dd6ef2',
                width: 82,
                height: 82,
              );
            },
          ),
    );
  }
}