import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-community.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          width: Get.width * 0.7,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/join-conmunity.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Join to our community",
                style: Get.textTheme.titleLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w100),
              ),
              FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.black)),
                onPressed: null,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Learn More",
                    style: Get.textTheme.titleSmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w100),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
