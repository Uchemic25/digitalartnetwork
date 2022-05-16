import 'package:flutter/material.dart';

import '../core/models/user_model.dart';
import '../res/color_resource.dart';
import 'widgets/single_card_section.dart';

class HomeBody extends StatelessWidget {
  final List<UsersModel> usersData = usersList;

  Widget getList() {
    return ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) => SingleCardSection(
              likes: usersList[index].likes,
              names: usersList[index].names,
              replies: usersList[index].replies,
              retweets: usersList[index].retweets,
              tweets: usersList[index].tweets,
              username: usersList[index].username,
              postimages: usersList[index].postimages,
              profileimages: usersList[index].profileimages,
              isMultipleImage: usersList[index].isMultipleImage,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResource.cardColor,
      child: getList(),
    );
  }
}
