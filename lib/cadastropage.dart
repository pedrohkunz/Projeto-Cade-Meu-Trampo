import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/checagem_page.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}
  bool textoescondido = true;
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

class _MyCadastroState extends State<MyCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255,16,17,21),
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       ),
       body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30,),
                child: Text(
                  "Criar conta",
                  style: TextStyle(
                  fontSize: 45,
                  color: Color.fromARGB(255, 250, 249, 249),
                  ),
                )),
              Container(
                  child: Text(
                    "É rápido e fácil",
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                )),

              Container(
                padding: EdgeInsets.only(left: 50, right: 50, top: 40),
                   child: TextField(
                      onChanged: (emailtext){},
                      controller: _nomeController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                      color: Color.fromARGB(255, 250, 249, 249),
                   ),
                   decoration: InputDecoration(
                     hintText: 'Nome',
                     hintStyle: TextStyle(
                     color: Colors.white,
                      ),
              ),
            ),
           ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50, top: 40),
                   child: TextField(
                      onChanged: (emailtext){},
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                      color: Color.fromARGB(255, 250, 249, 249),
                   ),
                   decoration: InputDecoration(
                     hintText: 'Email',
                     hintStyle: TextStyle(
                     color: Colors.white,
                      ),
              ),
            ),
           ),
           Container(
                padding: EdgeInsets.only(left: 50, right: 50, top: 40),
                   child: TextField(
                    onChanged: (senhatext){},
                    controller: _passwordController,
                    obscureText: textoescondido,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                      color: Color.fromARGB(255, 250, 249, 249),
                   ),
                   decoration: InputDecoration(
                     hintText: 'Senha',
                     hintStyle: TextStyle(
                     color: Colors.white,
                      ),
                     suffixIcon: GestureDetector(
                        child: Icon(textoescondido == false ? Icons.visibility_off : Icons.visibility),
                        onTap: () {
                          setState(() {
                            textoescondido = !textoescondido;
                          });
                        },
                      ) 
              ),
            ),
           ),
           Container(
                width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 40, left: 80, right: 80
                      ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 56, 56, 68)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 20
                        ))
                      ),
                      onPressed: (){
                        cadastrar();
                      },
                      child: Text("Criar conta")
                      ),
            ),
            ]
          ),
        ),
      ),
    );
  }

  cadastrar() async{
    try{
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: _emailController.text, 
      password: _passwordController.text);
      if(userCredential != null){
        userCredential.user!.updateDisplayName(_nomeController.text);
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder:(context) => ChecagemPage(),), (
            Route) => false);
      }
    } on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Crie uma senha mais forte"),
          backgroundColor: Colors.red,
          )
        );
      } else if(e.code == 'email-already-in-use'){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Este email já foi cadastrado"),
          backgroundColor: Colors.red,
          )
        );

      }
    }
  }
}