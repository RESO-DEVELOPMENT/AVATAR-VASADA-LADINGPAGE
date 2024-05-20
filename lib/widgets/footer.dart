import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(64),
          width: Get.width * 0.7,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/footer.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 60,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text(
                      "Get out there & discover your next slope, mountain & destination!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.bodyMedium?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Copyright 2023 Avatar Vasada, Inc. Terms & Privacy",
                      style: Get.textTheme.bodyMedium?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "More on the blog",
                      style: Get.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "More on the blog",
                      style: Get.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "Join to our community",
                      style: Get.textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
