import 'package:flutter/material.dart';

class game_slider extends StatelessWidget {
  const game_slider({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Nuevos",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 7),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, int index) => _gamePoster()),
        ),
      ]),
    );
  }
}

class _gamePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'details',
              arguments: 'game-instace'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/300x400"),
              width: 130,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          'GTA V',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        )
      ]),
    );
    ;
  }
}
