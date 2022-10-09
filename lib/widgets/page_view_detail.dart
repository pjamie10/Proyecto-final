import 'package:flutter/material.dart';

import '../pages/open_image_page.dart';

class PageViewDetail extends StatelessWidget {

  final Map productIndex;

  const PageViewDetail({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: 300.0,
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OpenImage(
                                  image:
                                      'assets/${ productIndex['img'][index]}'))),
                      child: Image.asset(
                        'assets/${ productIndex['img'][index]}',
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.share_outlined,
                  size: 20.0,
                ),
              ),
            ],
          )
          ;
  }
}