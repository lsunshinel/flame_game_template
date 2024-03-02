

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_game_template/flame_game_template.dart';

class Player extends SpriteAnimationComponent with HasGameRef<FlameGameTemplate> {

    Player() : super(
        size: Vector2(100, 150),
        anchor: Anchor.bottomCenter,
    );

    @override
    Future<void> onLoad() async {

        animation = await game.loadSpriteAnimation(
            'player.png',
            SpriteAnimationData.sequenced(
                amount: 4,
                stepTime: .2,
                textureSize: Vector2(32, 48),
            ),
        );
    }

    void move(Vector2 delta) {
        position.add(delta);
    }
}