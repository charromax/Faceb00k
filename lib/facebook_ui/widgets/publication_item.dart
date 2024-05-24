import 'package:first_flutter_app/facebook_ui/models/publication.dart';
import 'package:first_flutter_app/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeAgo;

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    required this.publication,
    super.key,
  });

  String _getEmojiPath(Reaction reaction) {
    return "assets/emojis/${reaction.name.toLowerCase()}.svg";
  }

  String _formatCount(int count) {
    if (count <= 1000) return count.toString();
    return '${(count / 1000).toStringAsFixed(1)}k';
  }

  final Publication publication;

  @override
  Widget build(BuildContext context) {
    const reactions = Reaction.values;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
        width: 9,
        color: Color(0xffdcd9d9),
      ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Row(
              children: [
                Avatar(
                  asset: publication.user.avatarImage,
                  size: 38,
                ),
                const SizedBox(width: 10),
                Text(publication.user.name),
                const Spacer(),
                Text(timeAgo.format(publication.createdAt)),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              publication.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15,
            ),
            child: Text(
              publication.title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      reactions.length,
                      (index) {
                        final isCurrentReaction =
                            reactions[index] == publication.currentUserReaction;
                        return Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                _getEmojiPath(reactions[index]),
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              if (isCurrentReaction)
                                const Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 5,
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15)
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                              "${_formatCount(publication.commentsCount)} Comments"),
                          const SizedBox(width: 15),
                          Text(
                              "${_formatCount(publication.sharesCount)} Shares"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
