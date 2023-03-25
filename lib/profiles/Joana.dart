import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/editarperfil.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/drawer.dart';
import 'package:projetocademeutrampo/model/botaoTesteImagem.dart';
import 'package:firebase_storage/firebase_storage.dart';


class MyJoana extends StatefulWidget {
  const MyJoana({super.key});

  @override
  State<MyJoana> createState() => _MyJoanaState();
}

class _MyJoanaState extends State<MyJoana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22,24,30),
      drawer: MyDrawer(),
      appBar: PreferredSize(child: MyNavBar(), preferredSize: Size(55, 55)),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255,16,17,21),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0, bottom: 10),
                          child: Text("Perfil do Profissional", style: TextStyle(
                            color: Colors.white, fontSize: 35,
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50, right: 50),
                          child: Divider(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        
                               Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                              "JoanaMachado.png",
                              width: 200,
                              height: 200,
                            )
                        ),
                               Padding(
                           padding: const EdgeInsets.only(bottom:1.0),
                           child: Text("Joana Machado", style: TextStyle(
                            color: Colors.white, fontSize: 26
                           ),),
                         ),
                            
                         SizedBox(height: 1.5,),
                            
                         Text("Designer Gráfico", style: TextStyle(
                          color: Color.fromARGB(255, 172, 171, 171), fontSize: 20
                         ),
                         ),
      
                         Padding(
                           padding: const EdgeInsets.only(top: 25),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40) )
                                  ),
                                  backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 23, 51, 134)),
                                  padding: MaterialStateProperty.all(EdgeInsets.only(top:20, bottom: 20 ,left: 40, right: 40 ),
                                  
                                  ),
                              ),
                              onPressed: (){}, 
                              child: Text("Seguir", style: TextStyle(color: Colors.white, fontSize: 18),) 
                              ),
                         
                              SizedBox(width: 30),
                         
                              ElevatedButton(
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
                                onPressed: (){},
                                child: Text(
                                  "Contatar",
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                )
                              )
                              
                            ],
                           ),
                         ),
      
                         SizedBox(
                          height: 25,
                         ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            child: const Text("Sobre", style: TextStyle(color: Colors.white, fontSize: 25), )
                            ),
                          SizedBox(height: 13,),
                          Text("Olá, meu nome é Joana Machado e ofereço serviços básicos de informática, incluindo assistência técnica e design de peças visuais, como panfletos, logotipos e cartazes. Com 27 anos, sou residente do sudeste de Gravataí e estou comprometida em fornecer soluções de alta qualidade e eficazes para meus clientes.", style: TextStyle(color: Colors.white, fontSize: 18),),
                          SizedBox(height: 50,),
                          Column(
                            children: [
                              Text("Social Links", style: TextStyle(color: Colors.white, fontSize: 25),
                              ),
                              SizedBox(height: 20,),
                               Padding(
                              padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(image: AssetImage("facebook.png"),
                                      height: 50, 
                                      width: 50
                                    ),
                                  Image(image: AssetImage("instagram.png"),
                                      height: 50, 
                                      width: 50
                                    ),
                                  Image(image: AssetImage("linkedin.png"),
                                      height: 50, 
                                      width: 50
                                    ),
                                ],
                              ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SlidePageRoute extends PageRouteBuilder {
  final Widget page;

  SlidePageRoute({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return page;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}


