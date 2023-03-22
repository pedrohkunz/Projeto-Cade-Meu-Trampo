import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRecomendados extends StatelessWidget {
  String? imagem;
  String? nome;
  String? profissao;
  
  MyRecomendados({super.key, this.imagem = "jackie.png", this.nome = "Jorge", this.profissao = "Vadio"});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(this.imagem!),
            backgroundColor: Colors.transparent,
            radius: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 20.0),
          child: Container(
            child: Text(
              this.nome!,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: Text(
              this.profissao!,
              style: TextStyle(
                  color: Color.fromARGB(255, 194, 194, 194), fontSize: 15),
            ),
          ),
        )
      ],
    );
  }
}
