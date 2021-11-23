import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) => _CastCard(),
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('http://via.placeholder.com/150x300'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'actor.name holalala akjhkahlka',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
