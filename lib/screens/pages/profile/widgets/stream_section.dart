import 'package:flutter/material.dart';

import '../../../../core/models/user_model.dart';
import '../../../../res/color_resource.dart';
import '../../../../res/util.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/single_card_section.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
          child: Util.registrationInputField(
            label: 'Say what is on your mind...',
            hint: '',
            maxLine: 6,
            borderColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: ColorResource.cardColor,
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: ColorResource.cardColor,
                  ),
                  child: const Center(
                    child: CustomText(
                      text: 'Show my posts',
                      color: ColorResource.grey,
                      size: 14,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    margin: const EdgeInsets.all(0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    )),
                    color: ColorResource.cardColor,
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                        color: ColorResource.cardColor,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.search,
                        size: 20,
                        color: ColorResource.selectedTextColor,
                      )),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(left: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    )),
                    color: ColorResource.cardColor,
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                        color: ColorResource.cardColor,
                      ),
                      child: Center(
                        child: CustomText(
                          text: '  #',
                          color: ColorResource.selectedTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        getList(),
      ],
    );
  }

  Widget getList() {
    return ListView.builder(
        itemCount: 8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
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
}
