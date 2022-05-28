import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        actions: [
          SizedBox(
            height: 42,
            child: Container(
              padding: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  color: ColorResource.selectedTextColor,
                  borderRadius: BorderRadius.circular(30)),
              width: 120,
              child: const Center(
                  child: CustomText(
                      text: 'Reply',
                      color: Colors.white,
                      textAlign: TextAlign.center,
                      size: 16,
                      weight: FontWeight.bold)),
            ),
          ),
        ],
        backgroundColor: ColorResource.backgroundColor,
        title: const Text(
          '',
        ),
      ),
      backgroundColor: ColorResource.backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 23.0, left: 20),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/images/face1.jpeg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 140,
                      width: 1,
                      color: ColorResource.selectedTextColor,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, left: 10),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/12.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Flexible(
                                child: Text(
                                  'Danny',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: Text(
                                  '@Danyb',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Text(
                              '12h',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Classy Arts',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/13.jpg')),
                                borderRadius: BorderRadius.circular(20),
                                gradient: ColorResource.primaryGradient),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          child: Text(
                            'Replying to ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '@Damy001',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const TextField(
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
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
