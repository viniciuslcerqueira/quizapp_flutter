import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});


  @override
  Widget build(BuildContext context) {
    //Lista de Perguntas

    var perguntaSelecionada = 0;

    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu nome?'
    ];

    void responder(){
      perguntaSelecionada++;
      print(perguntaSelecionada);
    }

    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App!',),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                  onPressed: responder,
                  child: Text('Resposta 1')
              ),
              ElevatedButton(
                  onPressed: responder,
                  child: Text('Resposta 2')
              ),
              ElevatedButton(
                  onPressed: responder,
                  child: Text('Resposta 3')
              ),

            ],
          ),
      )
    );
  }
}
