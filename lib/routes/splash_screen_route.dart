import 'package:flutter/material.dart';

import '../widgets/circular_image_widget.dart';

class SplashScreenRoute extends StatefulWidget {
  const SplashScreenRoute({super.key});

  @override
  _SplashScreenRouteState createState() => _SplashScreenRouteState();
}

class _SplashScreenRouteState extends State<SplashScreenRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularImageWidget(
        imageProvider: AssetImage(
          'assets/images/splashscreen.png',
        ),
      ),
    );
  }
}
