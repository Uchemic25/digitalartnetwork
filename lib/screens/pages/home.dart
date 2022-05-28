import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class DigitalHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.backgroundColor,
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
