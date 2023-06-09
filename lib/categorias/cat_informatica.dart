import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/drawer.dart';
import 'package:projetocademeutrampo/model/recomendados.dart';
import 'package:projetocademeutrampo/profiles/Fernando.dart';
import 'package:projetocademeutrampo/profiles/Joana.dart';
import 'package:projetocademeutrampo/profiles/Rodrigo.dart';

class Myinformatica extends StatefulWidget {
  const Myinformatica({super.key});

  @override
  State<Myinformatica> createState() => _MyinformaticaState();
}

class _MyinformaticaState extends State<Myinformatica> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 16, 17, 21),
        drawer: MyDrawer(),
        appBar: PreferredSize(child: MyNavBar(), preferredSize: Size(55, 55)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('carinhadoti.jpg'),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 22,24,30),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 68, 124, 218),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Color.fromARGB(255, 22, 24, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Informática",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 68, 124, 218),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 15, bottom: 20),
                      child: Text(
                        "Aborda problema em diversas partes da eletronica, como geladeiras, microondas, carros, tudo que envolve eletricidade menos computadores.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color.fromARGB(255, 22, 24, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Programação",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 68, 124, 218),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 15, bottom: 20),
                      child: Text(
                        "Desenvolvimento de sistemas Web, Mobile e soluções tecnológicas.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 27, top: 20, right: 37.0),
                color: Color.fromARGB(255, 19, 21, 26),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyJoana()));
                      },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                          nome: "Joana Machado",
                            imagem: "JoanaMachado.png",
                            profissao: "Programador Junior",
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                         nome: "Kauan",
                          imagem: "Kauan.png",
                          profissao: "Programador",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Wesley",
                          imagem: "Wesley.png",
                          profissao: "Programador Junior",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyFernando()));
                      },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                            nome: "Fernando Moraes",
                            imagem: "FernandoMoraes.png",
                            profissao: "Programador",
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyRodrigo()));
                      },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                            nome: "Rodrigo Lima",
                            imagem: "RodrigoLima.png",
                            profissao: "Programador",
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Joyce",
                          imagem: "Joyce.png",
                          profissao: "Programador junior",
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color.fromARGB(255, 22, 24, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Assistencia Técnica",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 68, 124, 218),
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 15, bottom: 20),
                      child: Text(
                        "Soluções e consertos a problemas relacionados a equipamentos de computadores ou rede.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 27, top: 20, right: 37.0),
                color: Color.fromARGB(255, 19, 21, 26),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        height: 200,
                        child: MyRecomendados(
                           nome: "Wesley",
                          imagem: "Wesley.png",
                          profissao: "Programador",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                        nome: "Joyce",
                          imagem: "joyce.png",
                          profissao: "Programador",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyFernando()));
                      },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                             nome: "Fernando Moraes",
                            imagem: "FernandoMoraes.png",
                            profissao: "Programador",
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyJoana()));
                        },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                             nome: "Joana Machado",
                            imagem: "JoanaMachado.png",
                            profissao: "Programador Junior",
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyRodrigo()));
                        },
                      child: Container(
                          height: 200,
                          child: MyRecomendados(
                             nome: "Rodrigo Lima",
                            imagem: "RodrigoLima.png",
                            profissao: "Programador",
                           
                          )),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                         nome: "Kauan",
                          imagem: "Kauan.png",
                          profissao: "Programador Junior",
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                color: Color.fromARGB(255, 22, 24, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Cadê meu trampo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0, right: 120.0),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: InkWell(
                          child: Image(image: AssetImage("git.png"))
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text(
                        "Copyright © Dentinho App Productions",
                        style: TextStyle(
                            color: Color.fromARGB(255, 209, 209, 209),
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
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
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}