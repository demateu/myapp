import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';


class CardSwiper extends StatelessWidget{
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context){

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      color: Colors.lightBlue,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: ( _ , int index){ //guion bajo si no se usa el Build contex

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance-id'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: NetworkImage('assets/loading.gif'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );

        },
      ),
    );
  }
}

