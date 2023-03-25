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

class pegarImagem extends StatefulWidget {
  const pegarImagem({super.key});

  @override
  State<pegarImagem> createState() => _pegarImagemState();
}

class _pegarImagemState extends State<pegarImagem> {

  Future<void> uploadImage() async {
    final picker = InputElement()..type = 'file';
    final completer = Completer<Uint8List>();

    picker.onChange.listen((event) async {
      final file = picker.files!.first;
      final reader = FileReader();

      reader.readAsArrayBuffer(file);

      reader.onLoadEnd.listen((event) {
        final bytes = Uint8List.fromList(reader.result as List<int>);
        completer.complete(bytes);
      });
    });

    picker.click();
    // essa primeira parte de cima não foi pro código final só a de baixo

    final bytes = await completer.future;
    // código acima para colocar imagem na variavel
    final User? user = FirebaseAuth.instance.currentUser;
    String? email = user!.email;
    print('Email do usuário: $email');
    String fileName = email! + 'Foto';

    //envia e puxa a puxa a url
    final ref = FirebaseStorage.instance.ref('uploads/$fileName.png');
    await ref.putData(bytes);
    final url = await ref.getDownloadURL();
    print('File uploaded: $url');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              side:
                  BorderSide(color: Color.fromARGB(255, 23, 51, 134), width: 3),
              borderRadius: BorderRadius.circular(40))),
          backgroundColor:
              MaterialStatePropertyAll<Color>(Color.fromARGB(255, 16, 17, 21)),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
          ),
        ),
        onPressed: () async {
          uploadImage();
        },
        child: Text(
          "Imagem",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ));
  }
}
