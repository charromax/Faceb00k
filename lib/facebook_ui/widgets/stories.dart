import 'package:first_flutter_app/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../models/story.dart';

final _stories = [
  Story(
    backgroundImage: 'assets/wallpapers/1.jpeg',
    avatarImage: 'assets/users/1.jpg',
    userName: 'Olivia',
  ),
  Story(
    backgroundImage: 'assets/wallpapers/2.jpeg',
    avatarImage: 'assets/users/2.jpg',
    userName: 'Manuel',
  ),
  Story(
    backgroundImage: 'assets/wallpapers/3.jpeg',
    avatarImage: 'assets/users/3.jpg',
    userName: 'Anita',
  ),
  Story(
    backgroundImage: 'assets/wallpapers/4.jpeg',
    avatarImage: 'assets/users/4.jpg',
    userName: 'Culo',
  ),
  Story(
    backgroundImage: 'assets/wallpapers/5.jpeg',
    avatarImage: 'assets/users/5.jpg',
    userName: 'Anita',
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  final double HEIGHT = 160;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HEIGHT,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _stories.length,
          itemBuilder: (_, index) {
            final story = _stories[index];
            return _StoryItem(
              HEIGHT: HEIGHT,
              story: story,
              index: index,
            );
          }),
    );
  }
}

class _StoryItem extends StatelessWidget {
  const _StoryItem({
    super.key,
    required this.HEIGHT,
    required this.story,
    required this.index,
  });

  final double HEIGHT;
  final Story story;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HEIGHT,
      width: 90,
      margin: EdgeInsets.only(
        right: 15,
        left: index == 0 ? 20 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(story.backgroundImage),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Avatar(
                      size: 40,
                      asset: story.avatarImage,
                      borderWidth: 3,
                    ))
              ],
            ),
          ),
          Text(
            story.userName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
