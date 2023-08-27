import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:get/get.dart';
import 'package:shweluckypro/errorWidget.dart';

import 'controller/carouselController.dart';

class SliverCarouselWidget extends ConsumerWidget {
  final CustomCarouselController carouselController =
      Get.put(CustomCarouselController());

  List<String> photoList = [
    "assets/dooro1.png",
    "assets/dooro2.png",
    "assets/dooro3.png",
    "assets/dooro4.jpg",
    "assets/dooro5.jpg",
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      child: Obx(
        () {
          return Stack(children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 18 / 9,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, _) {
                    carouselController.currentIndex.value = index;
                  }),
              items: photoList
                  .map(
                    (photo) => Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        photo,
                        fit: BoxFit.cover,
                      ),
                      // child: FancyShimmerImage(
                      //   imageUrl: photo,
                      //   boxFit: BoxFit.cover,
                      // ),
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              left: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: photoList.map(
                    (image) {
                      //these two lines
                      int index = photoList.indexOf(image); //are changed
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                carouselController.currentIndex.value == index
                                    ? const Color(0xFF006666)
                                    // ? const Color.fromRGBO(246, 121, 12, 0.9)
                                    : const Color.fromRGBO(255, 255, 255, 0.4)),
                      );
                    },
                  ).toList()),
            ),
          ]);
        },
      ),
    );
  }
}
