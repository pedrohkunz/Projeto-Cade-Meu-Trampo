import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/drawer.dart';
import 'package:projetocademeutrampo/model/recomendados.dart';

class MyDesign extends StatefulWidget {
  const MyDesign({super.key});

  @override
  State<MyDesign> createState() => _MyDesignState();
}

class _MyDesignState extends State<MyDesign> {
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
                  Image.asset('design.jpg'),
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
                        "Design",
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
                        "A área de design aborda uma ampla variedade de problemas, incluindo comunicação visual, produto, ambiente, moda, experiência do usuário, interface do usuário, serviço, embalagem, ilustração e animação.",
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
                        "Design Gráfico",
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
                        "Criação de peças visuais, como logotipos, cartazes, folhetos, materiais de divulgação, embalagens, entre outros.",
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
                          nome: "Rodrigo Lima",
                          imagem: "RodrigoLima.png",
                          profissao: "Designer Gráfico",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Kauan",
                          imagem: "Kauan.png",
                          profissao: "Designer Gráfico",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Joyce",
                          imagem: "Joyce.png",
                          profissao: "Designer Gráfico",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Joana Machado",
                          imagem: "JoanaMachado.png",
                          profissao: "Designer Gráfico",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Fernando Moraes",
                          imagem: "FernandoMoraes.png",
                          profissao: "Designer Gráfico",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "wesley",
                          imagem: "wesley.png",
                          profissao: "Designer Gráfico",
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
                        "Design de Interiores",
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
                        "Problemas relacionados à criação de ambientes internos, como residências, escritórios, lojas, hotéis, entre outros.",
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
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Fernando Moraes",
                          imagem: "FernandoMoraes.png",
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Kauan",
                          imagem: "Kauan.png",
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Joana Machado",
                          imagem: "JoanaMachado.png",
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Rodrigo Lima",
                          imagem: "RodrigoLima.png",
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Joyce",
                          imagem: "Joyce.png",
                          profissao: "Designer de Interiores",
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
                        "Design de Serviço",
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
                        "problemas relacionados ao desenvolvimento de serviços que atendam às necessidades dos clientes, como serviços bancários, de saúde, de transportes, entre outros.",
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
                           nome: "Joyce",
                          imagem: "Joyce.png",
                          profissao: "Designer de Serviço",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                            nome: "Rodrigo Lima",
                          imagem: "RodrigoLima.png",
                          profissao: "Designer de Interiores",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                           nome: "Joana Machado",
                          imagem: "JoanaMachado.png",
                          profissao: "Designer de Serviço",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                        nome: "Kauan",
                          imagem: "Kauan.png",
                          profissao: "Designer de Serviço",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                          nome: "Wesley",
                          imagem: "Wesley.png",
                          profissao: "Designer de Serviço",
                        )),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                        height: 200,
                        child: MyRecomendados(
                           nome: "Fernando Moraes",
                          imagem: "FernandoMoraes.png",
                          profissao: "Designer de Serviço",
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