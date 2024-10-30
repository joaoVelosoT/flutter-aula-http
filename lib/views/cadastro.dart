import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
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
                      Text("Nome"),
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
                  try {

                    var url = 'http://10.92.198.38:4000/user/cadastro';
  var bodyRegistro = {
                      "name" : "teste",
                      "email" : "teste@email.com",
                      "password" : "testeteste123"
                    };
                    var response = await client.post(Uri.parse(url), 
                    headers: {"Content-Type":"application/json"},
                    body: json.encode(bodyRegistro));
                    
                    
                    print(response.body);
                  } finally {
                    client.close();
                  }
                },
                child: const Text("Cadastrar"))
          ],
        ),
      ),
    );
  }
}
