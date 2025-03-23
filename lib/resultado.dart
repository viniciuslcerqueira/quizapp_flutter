import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({
    super.key,
    required this.pontuacao,
    required this.quandoReiniciarQuestionario,
  });

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'voce é bom';
    } else if (pontuacao < 16) {
      return 'impressionante';
    } else {
      return 'nivel jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Parabéns', style: TextStyle(fontSize: 28))),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text('Reiniciar Quiz', style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
