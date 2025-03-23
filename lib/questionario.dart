import 'package:flutter/material.dart';
import 'package:quizapp_secao1/questao.dart';
import 'package:quizapp_secao1/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({super.key, required this.perguntas, required this.perguntaSelecionada, required this.quantoResponder});

  final List <Map<String,Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quantoResponder;


  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada].cast()['respostas'] : [];

    return Column(
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((t) => Resposta(texto: t, quandoSelecionado: quantoResponder)),
      ],
    );
  }
}
