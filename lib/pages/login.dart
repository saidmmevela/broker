import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("images/img2.jpeg"),
            fit: BoxFit.cover,
          ),
          // gradient: const LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors: [
          //     Colors.blue,
          //     Colors.red
          //   ]
          // )
          
        ),
        child: Center(
          child:Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.6),
              
              child: const Center(
                child:Text("Login"),
              ),
          ),
        ),
    );
  }
}