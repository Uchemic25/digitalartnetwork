import 'package:flutter/material.dart';

import '../res/color_resource.dart';

class HomeBody extends StatelessWidget {
  final profileimages = [
    'assets/images/face1.jpeg',
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    'assets/images/image1.jpeg',
    'assets/images/image2.jpeg',
    'assets/images/face1.jpeg',
    'assets/images/face5.jpeg',
    'assets/images/face5.jpeg',
  ];
  final names = [
    'musk',
    'mic',
    'uche',
    'ada',
    'remond',
    'nelly',
    'remond',
    'nelly'
  ];
  final usernames = [
    '@musk',
    '@mic',
    '@uche',
    '@ada',
    '@remond',
    '@nelly',
    '@remond',
    '@nelly'
  ];
  final images = [
    null,
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    null,
    null,
    'assets/images/face1.jpeg',
    null,
    'assets/images/image2.jpeg',
  ];
  final tweets = [
    'Create the highest, grandest vision possible for your life, because you become what you believe.',
    'When you can’t find the sunshine, be the sunshine',
    'The grass is greener where you water it',
    'Wherever life plants you, bloom with grace',
    'So, what if, instead of thinking about solving your whole life, you just think about adding additional good things. One at a time. Just let your pile of good things grow',
    'Little by little, day by day, what is mean for you Will find its way',
    'Little by little, day by day, what is mean for you Will find its way',
    'Little by little, day by day, what is mean for you Will find its way',
  ];
  final replies = [
    '1',
    '15',
    '10',
    '19',
    '69',
    '3',
    '19',
    '69',
  ];
  final retweets = [
    '10',
    '1k',
    '1',
    '9',
    '6',
    '30',
    '19',
    '69',
  ];
  final likes = [
    '50',
    '10',
    '70',
    '2',
    '5',
    '10',
    '19',
    '69',
  ];
  Widget getList() {
    return ListView.builder(
      itemCount: 8,
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(profileimages[index]),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                names[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  usernames[index],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, bottom: 12.0),
                        child: Text(
                          tweets[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: images[index] == null
                            ? null
                            : SizedBox(
                                width: double.infinity,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(images[index]!)),
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
                                    icon: const Icon(
                                      Icons.chat_bubble_outline,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: Text(
                                      replies[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )),
                              ],
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
                                      Icons.replay,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: Text(
                                      retweets[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )),
                              ],
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
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: Text(
                                      likes[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: IconButton(
                                padding: const EdgeInsets.all(0.0),
                                icon: const Icon(
                                  Icons.share,
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: double.infinity,
              color: Colors.grey,
              height: 0.5,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResource.cardColor,
      child: getList(),
    );
  }
}
