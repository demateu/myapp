import 'package:flutter/material.dart';
import 'package:myapp/widgets/imports.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
      ),
      body: const Column(
        children: [
          //card swiper
          CardSwiper(),
          //listado horizontal de peliculas
        ],
      ),
    );
  }


}