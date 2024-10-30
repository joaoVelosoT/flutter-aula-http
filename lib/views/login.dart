import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Email"),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Senha"),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  var client = http.Client();
                  var url = 'http://10.92.198.38:4000/user/login';
                  var bodyRegistro = {
                    "email": "joao@email.com",
                    "password": "password123"
                  };
                  try {
                    var response = await client.post(Uri.parse(url),
                        headers: {"Content-Type": "application/json"},
                        body: json.encode(bodyRegistro));

                    print(response.body);
                  } finally {
                    client.close();
                  }
                },
                child: const Text("Entrar"))
          ],
        ),
      ),
    );
  }
}
