import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

const slides = <SlideInfo>[
  SlideInfo(
    title: 'Busca la comida',
    caption: 'Captions de la comida',
    imageUrl: 'assets/images/1.png',
  ),
  SlideInfo(
    title: 'Entrega Rapida',
    caption: 'Caption de la entrega',
    imageUrl: 'assets/images/2.png',
  ),
  SlideInfo(
    title: 'Tarjetas',
    caption: 'Un contenedor estilizado',
    imageUrl: 'assets/images/3.png',
  ),
  /* SlideInfo(
    title: 'Progress Indicator',
    caption: 'Generales y controlados',
    imageUrl: 'assets/images/tutorial_4.png',
  ), */
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 20,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Skip')))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  // const _Slide({super.key});

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
