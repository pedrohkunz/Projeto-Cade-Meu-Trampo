import 'dart:js';
import 'dart:math';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/checagem_page.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/login.dart';
import 'package:projetocademeutrampo/perfil.dart';
import 'package:projetocademeutrampo/cadastropage.dart';

class MyDrawer extends StatelessWidget {

final _firebaseAuth = FirebaseAuth.instance;


  MyDrawer({super.key});

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
                        CircleAvatar(
                          backgroundImage: AssetImage("jackie.png"),
                          radius: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Column(
                            children: [
                              Text("jackie", style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                              ),),
                              
                              Text("Ator", style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 155, 155, 155)
                              ),),
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
                      sair();
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
                      child: Center(child: Text("Versão Alpha 1.2", style: TextStyle(
                          color: Color.fromARGB(255, 219, 219, 219)),
                        )),
                    )
                  ],
                )
              ],
            ),
          );
        }

        sair() async{
          await _firebaseAuth.signOut().then(
            (user) => Navigator.pushReplacement(
              context as BuildContext, 
              MaterialPageRoute(
                builder: (context)=> ChecagemPage(),
                ),
              ),
          );
  }

} 