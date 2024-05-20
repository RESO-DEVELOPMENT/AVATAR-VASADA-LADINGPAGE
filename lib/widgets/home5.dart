import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage5 extends StatelessWidget {
  const HomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 870,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-home2.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(64),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'AVATAR VASADA',
                    style: Get.textTheme.displaySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'AVATAR DIVE CENTER',
                    style: Get.textTheme.displayLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "ádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasd",
                    style:
                        Get.textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FilledButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll<Color>(Colors.white)),
                    onPressed: null,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Learn More",
                        style: Get.textTheme.titleSmall?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w100),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(32),
              child: Builder(
                builder: (context) {
                  return CarouselSlider(
                      options: CarouselOptions(
                        height: 600,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                      ),
                      items: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: Get.theme.colorScheme.shadow,
                                blurRadius: 10.0,
                                offset: const Offset(0.0, 10.0),
                              ),
                            ],
                          ),
                          width: 600,
                          height: 600,
                          child: const Center(),
                        )
                      ]);
                },
              ),
            )),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Start"),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("1"),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("2"),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("3"),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
