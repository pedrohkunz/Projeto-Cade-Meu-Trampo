import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projetocademeutrampo/cadastropage.dart';
import 'home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  bool textoescondido = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255,16,17,21),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30,),
                  child: Text(
                    "Bem-vindo!",
                    style: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 250, 249, 249),
                    ),
                  )),
                Container(
                    child: Text(
                      "Entre para continuar",
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  )),
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
                          login();
                        },
                        child: Text("Entrar")
                        ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Divider(
                            color: Color.fromARGB(255, 250, 249, 249),
                            height: 36,
                            thickness: 2,
                          )),
                    ),
                    Text("Ou", style: TextStyle(color: Color.fromARGB(255, 250, 249, 249), fontSize: 25,),),
                    Expanded(
                      child: new Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Divider(
                            color: Color.fromARGB(255, 250, 249, 249),
                            height: 36,
                            thickness: 2,
                          )),
                    ),
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 20, left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Image(
                      image: 
                        AssetImage("facebook.png"),
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Não tem uma conta? ", style: TextStyle(color: Color.fromARGB(255, 250, 249, 249,)),),
                    TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> MyCadastro()));
                    }, child: Text("Cadastre-se", style: TextStyle(color: Colors.blue, fontSize: 16),))
                  ],
                ),
              )
                ],
               ),
          ) 
          ),
      ),
  );
 }

  login() async {
    try{
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: _emailController.text, 
        password: _passwordController.text
        );
        if(UserCredential != null){
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => MyHome()));
        }
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found'){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Email incorreto"),
          backgroundColor: Colors.red,
          )
        );
      } else if(e.code == 'wrong-password'){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Senha incorreta"),
          backgroundColor: Colors.red,
          )
        );
      }
    }
  }
}