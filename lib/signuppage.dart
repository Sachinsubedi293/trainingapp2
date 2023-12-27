// ignore: file_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var textcontroller = TextEditingController();
  var text = const Text("Something");

  @override
  void initState() {
    getText();
    super.initState();
  }

  void getText() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    text = Text(pref.getString("signup") ?? "Nothing");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUP"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Write Anything"),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  final SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  if (textcontroller.text != '') {
                    text = Text(textcontroller.text);
                    pref.setString("signup", textcontroller.text);
                  } else {
                     text = const Text("Write Something First");
                    pref.setString("signup", "Write Something First");
                  }
                  setState(() {});
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 33, 149, 243),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              text
            ],
          ),
        ),
      ),
    );
  }
}
