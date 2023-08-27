import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:shweluckypro/model/profile_category.dart';
import 'package:shweluckypro/utils/constants.dart';

import 'controller/profileController.dart';

class ProfileCategoryCard extends StatelessWidget {
  final ProfileCategory? category;
  const ProfileCategoryCard(
    this.category, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.07,
        color: category!.color1,
        child: Row(children: [
          Container(
            child: CircleAvatar(
              maxRadius: 30,
              backgroundColor: category!.color2,
              child: Icon(
                category!.icon,
                size: 30,
                color: CustomColor.white,
              ),
            ),
          ),
          Text(
            category!.name!,
            style: TextStyle(color: CustomColor.white),
          ),
        ]),
      )),
    );
  }
}
