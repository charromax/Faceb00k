import 'package:faker/faker.dart';
import 'package:first_flutter_app/facebook_ui/models/publication.dart';
import 'package:first_flutter_app/facebook_ui/widgets/facebook_app_bar.dart';
import 'package:first_flutter_app/facebook_ui/widgets/publication_item.dart';
import 'package:first_flutter_app/facebook_ui/widgets/quick_actions_bar.dart';
import 'package:first_flutter_app/facebook_ui/widgets/stories.dart';
import 'package:first_flutter_app/facebook_ui/widgets/whats_on_your_mind.dart';
import 'package:flutter/material.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final pubs = <Publication>[];
    final random = faker.randomGenerator;
    for (int i = 0; i < 50; i++) {
      final publication = Publication(
        user: User(name: faker.person.name(), avatarImage: faker.image.image()),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        currentUserReaction:
            Reaction.values[random.integer(Reaction.values.length - 1)],
      );
      pubs.add(publication);
    }
    return Scaffold(
      appBar: FacebookAppBar(),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const WhatsOnYourMind(),
          const SizedBox(height: 25),
          const QuickActionsBar(),
          const SizedBox(height: 25),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) =>
                PublicationItem(publication: pubs[index]),
            itemCount: pubs.length,
          )
        ],
      ),
    );
  }
}
