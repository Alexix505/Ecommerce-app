import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    // List of network images used for card swipper
    List<String> images = [
      'https://www.ltvplus.com/wp-content/uploads/2024/01/0-LTVplus-Blog-Featured-Image-Template-1.png',
      'https://www.ltvplus.com/wp-content/uploads/2023/12/0-LTVplus-Blog-Featured-Image-Template-1.png',
      'https://www.ltvplus.com/wp-content/uploads/2023/08/0-Featured-Photo-Cart-Recovery.png'
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Swiper(
        itemBuilder: (context, int index) {
          final image = images[index];
          return CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fitWidth,
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
        control: const SwiperPagination(),
        pagination: const SwiperPagination(),
      ),
    );
  }
}
