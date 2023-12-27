// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:terainingapp2/loginpage.dart';
import 'package:terainingapp2/signuppage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              image: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1680553492268-516537c44d91?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi,Welcome",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white)),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(200, 33, 149, 243),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUp();
                  },));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color:Color.fromARGB(200, 33, 149, 243),
                  ),
                  child: const Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
