import 'dart:convert';
import 'dart:math';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/checagem_page.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/login.dart';
import 'package:projetocademeutrampo/model/fotoDoDrawer.dart';
import 'package:projetocademeutrampo/perfil.dart';
import 'package:projetocademeutrampo/cadastropage.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

final _firebaseAuth = FirebaseAuth.instance;

class _MyDrawerState extends State<MyDrawer> {

  String? _email;
  String? _fileContent;
  String? _fileContent3;

  @override
  void initState() {
    super.initState();
    _getCurrentUserEmail();
  }

  Future<void> _getCurrentUserEmail() async {
    final user = FirebaseAuth.instance.currentUser!;
    setState(() {
      _email = user.email!;
    });
    var _textoPath = _email! + "Texto";
    final ref = FirebaseStorage.instance.ref('texts/$_textoPath.txt');
    try {
      final content = await ref.getData();
      final decodedContent =
          utf8.decode(content != null ? content.toList() : []);

      setState(() {
        _fileContent = decodedContent.split('\n')[0];
        _fileContent3 = decodedContent.split('\n')[2];
      });
    } catch (e) {
      setState(() {
        _fileContent = 'Usuário';
      });
    }
  }

@override
Widget build(BuildContext context) {
  return Drawer(
          backgroundColor: Color.fromARGB(255,16,17,21),
          child: Column(
            children: [
                Container(
                  color: Color.fromARGB(255,22,24,30),
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top:9.9)),
                      fotoDoDrawer(),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Column(
                          children: [
                            Text(
                            _fileContent ?? '',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                            
                            _fileContent3 != null && _fileContent3!.isNotEmpty
                          ? Text(_fileContent3!, style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 15))
                          : Text('Usuário', style: TextStyle(color: Color.fromARGB(255, 155, 155, 155), fontSize: 15)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              Column(
                children: [
                    Container(
                  alignment: AlignmentDirectional.topStart,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 122, 122, 122)
                      )
                    ),
                  ),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 16,17,21)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                      EdgeInsets.only(top: 18, bottom: 18,)
                      ) 
                  ),
                  icon: Icon(Icons.home,
                  color: Colors.white,
                  size: 35,
                  
                  ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => MyHome()));
                  }, 
                  label: Padding(
                    padding: const EdgeInsets.only(right:93),
                    child: Text("Página inicial", style: TextStyle(
                      color: Colors.white,
                    ),),
                  )),
              ),


                  Container(
                  alignment: AlignmentDirectional.topStart,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 122, 122, 122)
                      )
                    ),
                  ),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 16,17,21)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                      EdgeInsets.only(top: 18, bottom: 18,)
                      ) 
                  ),
                  icon: Icon(Icons.account_circle,
                  color: Colors.white,
                  size: 35,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => MyProfile()));
                  }, 
                  label: Padding(
                    padding: const EdgeInsets.only(right:113),
                    child: Text("Meu perfil", style: TextStyle(
                      color: Colors.white,
                    ),),
                  )),
              ),

              Container(
                  alignment: AlignmentDirectional.topStart,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 122, 122, 122)
                      )
                    ),
                  ),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 16,17,21)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                      EdgeInsets.only(top: 18, bottom: 18)
                      )
                      
                  ),
                  icon: Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 35,
                  ),
                  onPressed: (){
                    sair(context);
                  }, 
                  label: Padding(
                    padding: const EdgeInsets.only(right: 128),
                    child: Text("Log-out", style: TextStyle(
                      color: Colors.white,
                    ),),
                  )),
              ),

                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Center(child: Text("Versão Beta 1.8.5", style: TextStyle(
                        color: Color.fromARGB(255, 219, 219, 219)),
                      )),
                  )
                ],
              )
            ],
          ),
        );
      }

      sair(BuildContext context) async {
        await _firebaseAuth.signOut();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ChecagemPage()),
        );
      }
}