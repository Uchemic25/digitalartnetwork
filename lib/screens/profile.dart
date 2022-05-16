import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class ProfilePage extends StatelessWidget {
  final profileimages = [
    'assets/images/face1.jpeg',
    'assets/images/face2.jpeg',
    'assets/images/face3.jpeg',
    'assets/images/face4.jpeg',
    'assets/images/face5.jpeg',
    'assets/images/face5.jpeg',
  ];
  final names = ['nancy', 'bekkyc', 'kiki', 'lolo', 'babi', 'annie'];
  final usernames = ['@nancy', '@bekkyc', '@kiki', '@lolo', '@babi', '@annie'];
  final images = [
    null,
    'assets/images/image1.jpeg',
    null,
    'assets/images/face4.jpeg',
    null,
    'assets/images/image2.jpeg',
  ];
  final tweets = [
    'Create the highest, grandest vision possible for your life, because you become what you believe.',
    'When you can’t find the sunshine, be the sunshine',
    'The grass is greener where you water it',
    'Wherever life plants you, bloom with grace',
    'So, what if, instead of thinking about solving your whole life, you just think about adding additional good things. One at a time. Just let your pile of good things grow',
    'Little by little, day by day, what is mean for you WiLL find its way',
  ];
  final replies = ['1', '15', '10', '19', '69', '3'];
  final retweets = ['10', '1k', '1', '9', '6', '30'];
  final likes = ['50', '10', '70', '2', '5', '10'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 290,
            backgroundColor: ColorResource.selectedTextColor,
            floating: false,
            pinned: true,
            title: const Text('Details page'),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/image2.jpeg')),
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
                          '@dan',
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
        ],
      ),
    ));
  }
}
