import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_database/firebase_database.dart';
import 'package:path/path.dart' as path;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/drawer.dart';

class MyEditor extends StatefulWidget {
  const MyEditor({super.key});

  @override
  State<MyEditor> createState() => _MyEditorState();
}

class _MyEditorState extends State<MyEditor> {
  var imagemPerfil;
  var imagemPerfilExibida;
  var file;
  String? textField1Value;
  String? textField2Value;
  String? textField3Value;
  final textField1Controller = TextEditingController();
  final textField2Controller = TextEditingController();
  final textField3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 17, 21),
      drawer: MyDrawer(),
      appBar: PreferredSize(child: MyNavBar(), preferredSize: Size(55, 55)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Text(
                "Editar Perfil",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90, right: 90),
              child: Divider(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 21, 23, 30),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      color: Color.fromARGB(255, 28, 30, 38),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Foto do perfil",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.edit, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    indent: 0,
                    color: Colors.white,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () async {
                        final picker = ImagePicker();
                        final pickedFile =
                            await picker.getImage(source: ImageSource.camera);

                        if (pickedFile != null) {
                          imagemPerfil = File(pickedFile.path);
                          final bytes = await imagemPerfil.readAsBytes();
                          setState(() {
                            imagemPerfilExibida = bytes;
                          });
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: imagemPerfilExibida == null
                            ? Image.network(
                                "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FUser.png?alt=media&token=b74fc1ff-7938-415d-8c1a-be2c10dd6ef2",
                                width: 200,
                                height: 200,
                              )
                            : Image.memory(
                                imagemPerfilExibida!,
                                width: 200,
                                height: 200,
                              ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Apenas 1:1 ou 3:4, por favor.', 
                      style: TextStyle(color: Color.fromARGB(255, 172, 169, 169))
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 21, 23, 30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  child: TextField(
                    controller: textField1Controller,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    decoration: InputDecoration(
                        label: Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 15.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    "Alterar nome",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.edit, color: Colors.white),
                              ],
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 21, 23, 30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  child: TextField(
                    controller: textField3Controller,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    decoration: InputDecoration(
                        label: Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 15.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    "Alterar Profissão",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.edit, color: Colors.white),
                              ],
                            ))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 21, 23, 30),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      color: Color.fromARGB(255, 28, 30, 38),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Biografia",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Icon(Icons.edit, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    indent: 0,
                    color: Colors.white,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 5.0, top: 15),
                      child: TextField(
                        controller: textField2Controller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintMaxLines: 150,
                            hintText:
                                "Escreva sobre sua biografia, sobre seus anos de experiência, setor ou competências.",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 172, 169, 169))),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 56, 56, 68)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 20))),
                onPressed: () async {
                  // pega o email do usuario atual
                  final User? user = FirebaseAuth.instance.currentUser;
                  String? email = user!.email;

                  textField1Value = textField1Controller.text;

                  textField2Value = textField2Controller.text;

                  textField3Value = textField3Controller.text;
                  //envia os três
                  String fileNameTexto = email! + 'Texto';
                  String content = '$textField1Value\n$textField2Value\n$textField3Value';
                  List<int> bytes = utf8.encode(content);
                  Uint8List data = Uint8List.fromList(bytes);
                  Reference ref = FirebaseStorage.instance
                      .ref()
                      .child('texts/$fileNameTexto.txt');
                  await ref.putData(data);
                  String downloadUrl = await ref.getDownloadURL();
                  print('link do txt: $downloadUrl');

                  //transforma o imagemPerfil para poder ir como PNG e envia
                  String fileName = email + 'Foto';

                  try {
                    final ref = FirebaseStorage.instance
                        .ref()
                        .child('uploads/$fileName.png');
                    await ref.putFile(imagemPerfil);

                    final url = await ref.getDownloadURL();
                    print('File uploaded: $url');
                  } on FirebaseException catch (e) {
                    print(e.message);
                  }
                },
                child: Text("Salvar alterações")),
          ],
        ),
      ),
    );
  }
}
