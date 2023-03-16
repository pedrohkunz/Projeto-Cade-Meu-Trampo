import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/home.dart';
import 'package:projetocademeutrampo/perfil.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor: Color.fromARGB(255, 22,24,30),
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: customSearchDelegate(),
                        );
                      },
                      icon: Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MyProfile()));
                      },
                      child: CircleAvatar(
                          backgroundImage: AssetImage("jackie.png"),
                          radius: 25,
                        ),
                    ),
                  ),
                ],
              )
            ],
          );
        }
      }