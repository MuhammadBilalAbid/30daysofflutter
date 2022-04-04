import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Image.asset(
                "assets/images/login.png",
                // height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter User Name",
                        label: Text("User Name"),
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        label: Text("Password"),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changebutton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, Myroutes.homeRoute);
                      },
                      child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changebutton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            // shape: changebutton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changebutton ? 50 : 10),
                          )),
                    )

                    // ElevatedButton(
                    //   child: const Text("Login"),
                    //   style: TextButton.styleFrom(
                    //       backgroundColor:
                    //           const Color.fromARGB(255, 75, 75, 75),
                    //       minimumSize: const Size(150, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, Myroutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
