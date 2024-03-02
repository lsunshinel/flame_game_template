
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_game_template/player.dart';

class FlameGameTemplate extends FlameGame with PanDetector, HasCollisionDetection {

    late Player player;

    //Constructor, used for inernal initialization.
    //Not used for visual stuff
    FlameGameTemplate() {

    }

    @override
    Future<void> onLoad() async {
        //Load inital components and stuff needed for game startup
        player = Player();
        add(player);
    }

    @override
    void update(double dt) {
        super.update(dt);
        //Called every frame
    }

    @override
    void onPanUpdate(DragUpdateInfo info) {
        //Implement
        player.move(info.delta.global);
    }   

    @override
    void onPanStart(DragStartInfo info) {
        //Implement
    }

    @override
    void onPanEnd(DragEndInfo info) {
        //Implement
    }
}