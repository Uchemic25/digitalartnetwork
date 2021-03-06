import 'package:digitalart/res/dimension.dart';
import 'package:digitalart/screens/pages/comment_page.dart';
import 'package:flutter/material.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';

class SingleCardSection extends StatelessWidget {
  final profileimages;
  final String names;
  final String tweets;
  final String likes;
  final String replies;
  final String retweets;
  final String username;
  final postimages;
  final bool isMultipleImage;
  TextEditingController? controller = TextEditingController();

  SingleCardSection(
      {Key? key,
      this.profileimages,
      required this.names,
      required this.tweets,
      required this.likes,
      required this.replies,
      required this.retweets,
      required this.username,
      this.postimages,
      this.isMultipleImage = false,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimension.cardBorderRadius),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimension.cardBorderRadius)),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(Dimension.cardBorderRadius),
        color: ColorResource.backgroundColor,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 23.0, left: 10),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(profileimages),
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
                                  names,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    username,
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
                          padding:
                              const EdgeInsets.only(top: 0.0, bottom: 12.0),
                          child: Text(
                            tweets,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: postimages == null
                              ? null
                              : isMultipleImage
                                  ? buildMultipleImage()
                                  : SizedBox(
                                      width: double.infinity,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(.0),
                                          child: Image.asset(postimages)),
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
                                        Icons.chat_bubble_outline,
                                        size: 18.0,
                                        color: ColorResource.textIconColor,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const CommentPage()));
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                      height: 20.0,
                                      width: 20.0,
                                      child: Text(
                                        replies,
                                        style: TextStyle(
                                            color: ColorResource.textIconColor),
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
                                        Icons.sync,
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
                                        retweets,
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
                                        likes,
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
            Util.inputField2(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimension.cardBorderRadius),
                    bottomRight: Radius.circular(Dimension.cardBorderRadius)),
                color: ColorResource.inputBackground,
              ),
              padding: EdgeInsets.only(
                  left: Dimension.marginSize,
                  right: Dimension.marginSize,
                  bottom: Dimension.marginSize),
              child: Row(children: [
                Expanded(
                    child: Util.customElevatedButton(
                        text: "Clear",
                        bgColor: ColorResource.inputBackground,
                        function: () {
                          print("test: This button is working");
                        })),
                SizedBox(width: Dimension.marginSize),
                Expanded(
                  child: Util.customElevatedButton(
                      text: "Post",
                      bgColor: ColorResource.customBlue,
                      function: () {}),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  buildMultipleImage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/8.jpg')),
                    gradient: ColorResource.primaryGradient),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/8.jpg')),
                    borderRadius: BorderRadius.circular(20),
                    gradient: ColorResource.primaryGradient),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 135,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/8.jpg')),
                    borderRadius: BorderRadius.circular(20),
                    gradient: ColorResource.primaryGradient),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/8.jpg')),
                    gradient: ColorResource.primaryGradient),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/8.jpg')),
                    gradient: ColorResource.primaryGradient),
              ),
            ),
          ],
        )
      ],
    );
  }
}
