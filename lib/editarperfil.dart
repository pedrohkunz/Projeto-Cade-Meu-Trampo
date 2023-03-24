import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:flutter/src/widgets/framework.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/drawer.dart';

class MyEditor extends StatefulWidget {
  const MyEditor({super.key});

  @override
  State<MyEditor> createState() => _MyEditorState();
}

class _MyEditorState extends State<MyEditor> {
  String? imagemPerfil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 17, 21),
      drawer: MyDrawer(),
      appBar: PreferredSize(child: MyNavBar(), preferredSize: Size(55, 55)),
      body: Column(
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
                            style: TextStyle(color: Colors.white, fontSize: 25),
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
                    onTap: () {
                      html.FileUploadInputElement uploadInput =
                          html.FileUploadInputElement();
                      uploadInput.click();

                      uploadInput.onChange.listen((e) {
                        final file = uploadInput.files?.first;
                        if (file != null) {
                          final reader = html.FileReader();

                          reader.readAsDataUrl(file);

                          reader.onLoadEnd.listen((event) {
                            setState(() {
                              imagemPerfil = reader.result as String;
                            });
                          });
                        }
                      });
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200), // bordas arredondadas
                      child: imagemPerfil == null
                          ? Image.asset(
                              "User.png",
                              width: 200,
                              height: 200,
                            )
                          : Image.network(
                              imagemPerfil!,
                              width: 200,
                              height: 200,
                            ),
                    ),
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
                            style: TextStyle(color: Colors.white, fontSize: 25),
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
                  padding: const EdgeInsets.only(left:30.0, right: 30.0, bottom: 5.0, top: 15),
                  child: TextField(
                      
                    style: TextStyle(
                  
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      hintMaxLines: 150,
                      hintText: "Escreva sobre sua biografia, sobre seus anos de experiência, setor ou competências.",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 172, 169, 169)
                      )
                    ),
                  )
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),

           ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 56, 56, 68)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 20
                          ))
                        ),
                        onPressed: (){
                    
                        },
                        child: Text("Salvar alterações")
                        ),

        ],
      ),
    );
  }
}
