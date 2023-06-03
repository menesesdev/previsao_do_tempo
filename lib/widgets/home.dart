import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:previsao_do_tempo/widgets/resumo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão do tempo"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              print('Botão pressionado!');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Resumo(
              cidade: "Piripiri-Pi",
              temperaturaAtual: 30,
              temperaturaMaxima: 33,
              temperaturaMinima: 28,
              descricao: "Ensolarado",
              numeroIcone: 1,
            ),
          ],
        ),
      ),
    );
  }
}
