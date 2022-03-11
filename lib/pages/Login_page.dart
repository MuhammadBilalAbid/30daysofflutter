import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Column(
          children: [
            const SizedBox(
              height: 110.0,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Welcome to Login Page",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter User Name",
                      label: Text("User Name"),
                    ),
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
                  ElevatedButton(
                    child: const Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ));
  }
}
