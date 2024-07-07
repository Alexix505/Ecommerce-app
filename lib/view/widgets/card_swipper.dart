import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Swiper(
        itemBuilder: (context, int index) {
          return Image.network(
            'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        autoplay: true,
        control: const SwiperPagination(),
        pagination: const SwiperPagination(),
      ),
    );
  }
}
