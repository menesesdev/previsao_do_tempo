import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Resumo extends StatelessWidget {
  Resumo(
      {super.key,
      required this.cidade,
      required this.descricao,
      required this.temperaturaAtual,
      required this.temperaturaMaxima,
      required this.temperaturaMinima,
      required this.numeroIcone});
      
  final String cidade;
  final String descricao;
  final double temperaturaAtual;
  final double temperaturaMaxima;
  final double temperaturaMinima;
  final int numeroIcone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(Icons.brightness_6),
                Switch(value: false, onChanged: (valor) {})
              ],
            )
          ],
        )
      ],
    );
  }
}
