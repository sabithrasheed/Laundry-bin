import 'package:flutter/material.dart';

import 'package:major_project/core/const.dart';

class BackgroundImageContainer extends StatelessWidget {
  const BackgroundImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: backgroundColorBlue,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 2.23,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("Assets/Frame.png"))),
          ),
        )
      ],
    );
  }
}
