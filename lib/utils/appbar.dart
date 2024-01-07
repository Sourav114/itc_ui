import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itc_ui/utils/color.dart';
import 'package:itc_ui/utils/size.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String previousScreen;
  final double titleFontSize;
  final double subtitleFontSize;
  final bool isIcon;
  final IconData icon;

  const CustomAppBar(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.previousScreen,
        this.titleFontSize = AppFontSize.textLarge,
        this.subtitleFontSize = AppFontSize.textMedium,
        this.isIcon = false,
        this.icon = CupertinoIcons.camera});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      decoration: const BoxDecoration(
        color: AppColor.colorNavyBlue,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.toNamed(previousScreen);
                      },
                      icon: const Icon(
                        CupertinoIcons.arrow_left,
                        color: Colors.white,
                        size: 25,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.w600,
                                color: AppColor.colorWhite),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            subtitle,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                fontSize: subtitleFontSize,
                                fontWeight: FontWeight.w300,
                                color: AppColor.colorWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  if (isIcon) // Conditionally show the camera icon
                    Padding(
                      padding: const EdgeInsets.only(top:10,right: 15.0),
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed("/imgScr");
                        },
                        icon: Icon(
                          icon,
                          size: 32,
                          color: AppColor.colorWhite,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}