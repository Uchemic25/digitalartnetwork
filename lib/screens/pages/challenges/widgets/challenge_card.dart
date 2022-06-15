import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorResource.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/image2.jpeg'),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 30,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Test Challenge For App',
                        color: ColorResource.lightPrimary,
                        size: 14,
                        weight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomText(
                        text:
                            'This is a test challenge, please ignore the privacy was set to...',
                        color: ColorResource.grey,
                        size: 14,
                        weight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.people,
                            color: ColorResource.selectedTextColor,
                            size: 22,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const CustomText(
                            text: '1 member',
                            color: ColorResource.grey,
                            size: 14,
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: ColorResource.selectedTextColor,
                            size: 22,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CustomText(
                            text: 'More',
                            color: ColorResource.selectedTextColor,
                            size: 14,
                            weight: FontWeight.w800,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                      color: Colors.white12,
                    ),
                    right: BorderSide(
                      color: Colors.white12,
                    ),
                  )),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      text: 'Owner',
                      color: ColorResource.selectedTextColor,
                      size: 14,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                      color: Colors.white12,
                    ),
                    right: BorderSide(
                      color: Colors.white12,
                    ),
                  )),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Icon(
                            Icons.visibility,
                            color: ColorResource.selectedTextColor,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.notifications,
                            color: ColorResource.selectedTextColor,
                            size: 18,
                          ),
                        ],
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
