class Publication {
  final User user;
  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int sharesCount;
  final Reaction currentUserReaction;

  Publication({
    required this.user,
    required this.title,
    required this.createdAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sharesCount,
    required this.currentUserReaction,
  });
}

class User {
  final String name;
  final String avatarImage;

  User({
    required this.name,
    required this.avatarImage,
  });
}

enum Reaction {
  like,
  heart,
  laughing,
  sad,
  shocked,
  angry,
}
