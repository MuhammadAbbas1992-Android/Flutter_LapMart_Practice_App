import 'package:flutter/cupertino.dart';

class VideoPlayWidget extends StatelessWidget {
  const VideoPlayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 285,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/home_img.png'), // Update with your image path
          fit: BoxFit.cover, // BoxFit to control how the image should be fitted
        ),
      ),
      child: const Image(image: AssetImage('assets/icons/ic_play.png')),
    );
  }
}
