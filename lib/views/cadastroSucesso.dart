import 'package:flutter/material.dart';

class Cadastrosucesso extends StatelessWidget {
  const Cadastrosucesso({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(child: Text("Cadastrado com sucesso !"))
        ],
      ),
    );
  }
}