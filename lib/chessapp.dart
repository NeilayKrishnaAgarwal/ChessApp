import 'package:chess/chess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/chesspage.dart';

class ChessApp extends StatelessWidget{
  const ChessApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      title: 'Chess App',
      home: MyChessPage(),
    );
  }
}

class MyChessPage extends StatelessWidget{
  const MyChessPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {

          // Chess() {
          //   load(chess.fen);
          // }

          Chess chess = new Chess();
          chess.load(chess.fen);

          //chess.load(chess.fen);
          // while (!chess.game_over) {
          //   print('position: ' + chess.fen);
          //   print(chess.ascii);
          //   var moves = chess.moves();
          //   moves.shuffle();
          //   var move = moves[0];
          //   chess.move(move);
          //   print('move: ' + move);
          // }
        },
        child: const Text('Start Game'),
      ),
    );
  }
}