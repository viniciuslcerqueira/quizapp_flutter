import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({
    super.key,
    required this.texto,
    required this.quandoSelecionado,
  });

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text( texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
