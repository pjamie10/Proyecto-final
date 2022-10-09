import 'package:flutter/material.dart';

import '../utils/data.dart';

class PageViewHome extends StatelessWidget {
  const PageViewHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        itemCount: pageViewHome.length,
        itemBuilder: (context, index) => Image.asset(pageViewHome[index],
            width: 128.0, fit: BoxFit.fill),
      ),
    );
  }
}
