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
        ),
        Text(
          cidade,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/$numeroIcone.png"),
                  ),
                  Padding(padding: EdgeInsets.all(4)),
                  Text(
                    "${temperaturaAtual.toStringAsFixed(0)} ºC",
                    style: TextStyle(fontSize: 40),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${temperaturaMaxima.toStringAsFixed(0)} ºC"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${temperaturaMinima.toStringAsFixed(0)} ºC"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        Text(descricao),
      ],
    );
  }
}
