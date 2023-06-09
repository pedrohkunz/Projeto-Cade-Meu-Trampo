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
          body: Center(
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
                                child: Image(image: AssetImage("carinhadoti.jpg"),
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
                                child: Image(image: AssetImage("design.jpg"),
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
                              child: Image(image: AssetImage("obras.jpg"),
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
                                  image: AssetImage("professor.png"),
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
                          child: MyRecomendados(nome: "Rodrigo", imagem: "RodrigoLima.png", profissao: "Programador",)
                        ),
                      ),
                      
                      SizedBox(width: 28,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyFernando()));
                        },
                        child: Container(
                          height: 200,
                          child: MyRecomendados(nome: "Fernando ", imagem: "FernandoMoraes.png", profissao: "Designer",)
                        ),
                      ),

                      SizedBox(width: 28,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, SlidePageRoute(page: MyJoana()));
                        },
                        child: Container(
                          height: 200,
                          child: MyRecomendados(nome: "Joana", imagem: "JoanaMachado.png", profissao: "Designer",)
                        ),
                      ),

                      SizedBox(width: 28,),

                      Container(
                        height: 200,
                        child: MyRecomendados(nome: "Joyce", imagem: "Joyce.png", profissao: "Arquiteta",)
                      ),

                      SizedBox(width: 28,),

                      Container(
                        height: 200,
                        child: MyRecomendados(nome: "Pedro", imagem: "Kauan.png", profissao: "Estudante",)
                      ),

                      SizedBox(width: 28,),
                    ],
                  ),
                ),
              ],
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
                  child: Image(image: AssetImage("git.png")),
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