import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/categorias/cat_design.dart';
import 'package:projetocademeutrampo/categorias/cat_informatica.dart';
import 'package:projetocademeutrampo/login.dart';
import 'package:projetocademeutrampo/model/drawer.dart';
import 'package:projetocademeutrampo/model/appbar.dart';
import 'package:projetocademeutrampo/model/recomendados.dart';
import 'package:projetocademeutrampo/profiles/Fernando.dart';
import 'package:projetocademeutrampo/profiles/Joana.dart';
import 'package:projetocademeutrampo/profiles/Rodrigo.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255,16,17,21),
          drawer: MyDrawer(),
          appBar: PreferredSize(child: MyNavBar(), preferredSize: Size(55, 55)),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:45.0, right: 55.0, top: 40, bottom: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text("Categorias recomendadas",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20),),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 15,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 22, 24, 30),
                          ),
                          width: 280,
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, FadePageRoute(builder: (context)=> Myinformatica()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                  child: Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2Fcarinhadoti.jpg?alt=media&token=324f3fa5-5f5f-46a9-af20-cc19530e6d58"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                  height: 120,
                                  width: 300
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, FadePageRoute(builder: (context)=> Myinformatica()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Informática", style: TextStyle(
                                      color: Colors.white, fontSize: 18
                                    ),),
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left:20.0, right: 100.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Divider(
                                    thickness: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Profissionais de T.I", style: TextStyle(
                                    color: Color.fromARGB(255, 194, 194, 194),
                                    fontSize: 15
                                  ),),
                                ),
                              )
                              
                            ],
                          )
                        ),
          
                        SizedBox(width: 25,),
                        
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 22, 24, 30),
                          ),
                          width: 280,
                          height: 200,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, FadePageRoute(builder: (context)=> MyDesign()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                  child: Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2Fdesign.jpg?alt=media&token=d290af6a-606d-4998-9ff0-2d93996b4ccf"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                  height: 120,
                                  width: 300
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, FadePageRoute(builder: (context)=> MyDesign()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Design", style: TextStyle(
                                      color: Colors.white, fontSize: 18
                                    ),),
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left:20.0, right: 100.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Divider(
                                    thickness: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Profissionais em Design Gráfico", style: TextStyle(
                                    color: Color.fromARGB(255, 194, 194, 194),
                                    fontSize: 15
                                  ),),
                                ),
                              )
                              
                            ],
                          )
                        ),
          
          
                        SizedBox(width: 25,),
                       
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 22, 24, 30),
                          ),
                          width: 280,
                          height: 200,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                child: Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2Fobras.jpg?alt=media&token=dc7022ad-001e-4260-b5cf-45dea2ed4605"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                                height: 120,
                                width: 300
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Obras & Reformas", style: TextStyle(
                                    color: Colors.white, fontSize: 18
                                  ),),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left:20.0, right: 100.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Divider(
                                    thickness: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Profissionais em Obras e Reformas", style: TextStyle(
                                    color: Color.fromARGB(255, 194, 194, 194),
                                    fontSize: 15
                                  ),),
                                ),
                              )
                              
                            ],
                          )
                        ),
          
          
                        SizedBox(width: 25,),
          
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 22, 24, 30),
                          ),
                          width: 280,
                          height: 200,
                          child: Column(
                            children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                  child: Image(
                                    image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2Fprofessor.png?alt=media&token=0e082d19-d97c-49d0-ac1e-b28c2d979b11"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                  height: 120,
                                  width: 300,
                              
                                  ),
                                ),
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Educação & Ensino", style: TextStyle(
                                    color: Colors.white, fontSize: 18,
                                  ),
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left:20.0, right: 100.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Divider(
                                    thickness: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
          
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Profissionais da educação", style: TextStyle(
                                    color: Color.fromARGB(255, 194, 194, 194),
                                    fontSize: 15
                                  ),),
                                ),
                              )
                              
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
          
          
                  Padding(
                    padding: const EdgeInsets.only(left:45.0, right: 55.0, top: 40, bottom: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Text("Profissionais Bem Avaliados",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20),),
                        ),
                      ),
                    ),
                  ),
          
                  Container(
                    padding: EdgeInsets.only(left: 27, top: 10, right: 37.0),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, SlidePageRoute(page: MyRodrigo()));
                          },
                          child: Container(
                            height: 200,
                            child: MyRecomendados(
                              nome: "Rodrigo",
                              imagem: "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FRodrigoLima.png?alt=media&token=3a1e3c47-f1e5-4c14-acf8-8cd997a91a19",
                              profissao: "Programador",)
                          ),
                        ),
                        
                        SizedBox(width: 28,),
          
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, SlidePageRoute(page: MyFernando()));
                          },
                          child: Container(
                            height: 200,
                            child: MyRecomendados(
                              nome: "Fernando ",
                              imagem: "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FFernandoMoraes.png?alt=media&token=d456c8b8-b233-4f64-8dcd-cd64b3d5b908",
                              profissao: "Designer",)
                          ),
                        ),
          
                        SizedBox(width: 28,),
          
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, SlidePageRoute(page: MyJoana()));
                          },
                          child: Container(
                            height: 200,
                            child: MyRecomendados(
                              nome: "Joana",
                              imagem: "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FJoanaMachado.png?alt=media&token=4856ddee-6b3f-4c51-8b2e-29bcf9561e4b",
                              profissao: "Designer",)
                          ),
                        ),
          
                        SizedBox(width: 28,),
          
                        Container(
                          height: 200,
                          child: MyRecomendados(
                            nome: "Joyce",
                            imagem: "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FJoyce.png?alt=media&token=a0482283-1aeb-4513-950b-c1ad28fba840", 
                            profissao: "Arquiteta",)
                        ),
          
                        SizedBox(width: 28,),
          
                        Container(
                          height: 200,
                          child: MyRecomendados(
                            nome: "Pedro", 
                            imagem: "https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2FKauan.png?alt=media&token=962c13e1-085d-4772-806a-51ba3ba6a832", 
                            profissao: "Estudante",)
                        ),
          
                        SizedBox(width: 28,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            height: 200,
            color: Color.fromARGB(255, 22,24,30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("Cadê meu trampo", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:120.0, right: 120.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/cademeutrampo.appspot.com/o/assets%2Fgit.png?alt=media&token=2f810242-7e65-4a31-9edf-26e04cb99833")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text("Copyright © Dentinho App Productions", style: TextStyle(
                    color: Color.fromARGB(255, 209, 209, 209),
                    fontSize: 15
                  ),),
                )
              ],
            ),
          ),
        ),
      );
  }
}

class customSearchDelegate extends SearchDelegate {
  List<String> SearchTerms = [
    
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Container(
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in SearchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Container(
      
      child: ListView.builder(itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          
          title:  Text(result),
        );
      },
      ),
    );
  }
    
  @override
  Widget buildSuggestions(BuildContext context) {

     List<String> matchQuery = [];
    for (var fruit in SearchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return Container(
      color: Color.fromARGB(255,16,17,21),
      child: ListView.builder(itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Container(
          color: Color.fromARGB(255,16,17,21),
          child: ListTile(
            title:  Text(result),
          ),
        );
      },
      ),
    );
  }
  }

  class FadePageRoute<T> extends PageRouteBuilder<T> {
  final WidgetBuilder builder;

  FadePageRoute({required this.builder})
      : super(
          transitionDuration: Duration(milliseconds: 800),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return builder(context);
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
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