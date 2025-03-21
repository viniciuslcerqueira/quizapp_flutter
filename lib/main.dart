import 'package:flutter/material.dart';
import 'package:quizapp_secao1/questao.dart';
import 'package:quizapp_secao1/resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Lista de Perguntas

    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu nome?'
    ];



    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App!',),
          ),
          body: Column(
            children: [
              Questao(texto: perguntas[_perguntaSelecionada],
              ),
              Resposta(texto: 'Resposta 1', quandoSelecionado: _responder),
              Resposta(texto: 'Resposta 2', quandoSelecionado: _responder),
              Resposta(texto: 'Resposta 3', quandoSelecionado: _responder),
            ],
          ),
      )
    );
  }
}
