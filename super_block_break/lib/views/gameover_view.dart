import 'package:flutter/material.dart';
import 'package:super_block_break/game.dart';

class GameOverView extends StatelessWidget {
  const GameOverView({Key? key, required this.gameLoop}) : super(key: key);

  final GameLoop gameLoop;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'score: ${gameLoop.gameLoopState.score}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.blue,
              decoration: TextDecoration.none,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              gameLoop.reload();
              gameLoop.overlays.remove('game over');
            },
            child: const Text('restart'),
          ),
        ],
      ),
    );
  }
}
