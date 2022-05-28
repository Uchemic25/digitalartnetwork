import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import '../../core/models/user_model.dart';
import '../widgets/single_card_section.dart';

class ProfilePage extends StatelessWidget {
  final List<UsersModel> usersData = usersList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 290,
              floating: false,
              pinned: true,
              backgroundColor: ColorResource.backgroundColor,
              title: const Text('Digital Art Network'),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/image1.jpeg')),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          width: double.infinity,
                          height: 125,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 100,
                                decoration: ShapeDecoration(
                                    shape: const CircleBorder(),
                                    color: Theme.of(context).primaryColor),
                                child: const Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: DecoratedBox(
                                    decoration: ShapeDecoration(
                                      shape: CircleBorder(),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/face1.jpeg')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Micheal Mick',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            '@mick',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                centerTitle: true,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      width: double.infinity,
                      color: ColorResource.selectedTextColor,
                      height: 0.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 16, 16, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '220k',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Likes',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 16,
                          width: 2,
                          color: ColorResource.selectedTextColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '90k',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Comments',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 16,
                          width: 2,
                          color: ColorResource.selectedTextColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '890k',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Views',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      width: double.infinity,
                      color: ColorResource.selectedTextColor,
                      height: 0.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 16, 16, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: IconButton(
                                padding: const EdgeInsets.all(0.0),
                                icon: Icon(
                                  Icons.chat_bubble,
                                  size: 18.0,
                                  color: ColorResource.textIconColor,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 16,
                          width: 2,
                          color: ColorResource.selectedTextColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: IconButton(
                                padding: const EdgeInsets.all(0.0),
                                icon: const Icon(
                                  Icons.sync,
                                  size: 22.0,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 16,
                          width: 2,
                          color: ColorResource.selectedTextColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: IconButton(
                                padding: const EdgeInsets.all(0.0),
                                icon: const Icon(
                                  Icons.favorite_border,
                                  size: 22.0,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 16,
                          width: 2,
                          color: ColorResource.selectedTextColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: IconButton(
                            padding: const EdgeInsets.all(0.0),
                            icon: const Icon(
                              Icons.share,
                              size: 22.0,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      width: double.infinity,
                      color: ColorResource.selectedTextColor,
                      height: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => SingleCardSection(
                  likes: usersList[index].likes,
                  names: usersList[index].names,
                  replies: usersList[index].replies,
                  retweets: usersList[index].retweets,
                  tweets: usersList[index].tweets,
                  username: usersList[index].username,
                  postimages: null,
                  profileimages: usersList[index].profileimages,
                ),
                childCount: 8,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: 60,
        width: double.infinity,
        color: ColorResource.cardColor,
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 15,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write your reply...",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.black12,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.camera_enhance_outlined,
                color: ColorResource.selectedTextColor,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
