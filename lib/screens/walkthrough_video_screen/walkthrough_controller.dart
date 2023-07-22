import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class WalkThroughController extends GetxController{
  late VideoPlayerController videoController;
bool play= false;

  @override
  void onInit() {
    // TODO: implement onInit
    videoController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        videoController.play();
       update(['videoPlayer']);
      });
    super.onInit();
  }
}