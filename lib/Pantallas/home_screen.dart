import 'package:flutter/material.dart';
import 'package:game_reviews/widgets/card_swiper.dart';
import 'package:game_reviews/widgets/game_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GamesReview"),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [card_swiper(), game_slider()],
          ),
        ));
  }
}
