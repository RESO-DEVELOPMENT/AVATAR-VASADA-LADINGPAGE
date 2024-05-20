import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'AVATAR VASADA',
                    style:
                        Get.textTheme.titleSmall?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'AVATAR CONSERVATION',
                    style: Get.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
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
                    width: 60,
                    height: 60,
                    child: const Center(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(80),
                          boxShadow: [
                            BoxShadow(
                              color: Get.theme.colorScheme.shadow,
                              blurRadius: 10.0,
                              offset: const Offset(0.0, 10.0),
                            ),
                          ],
                        ),
                        width: 100,
                        height: 100,
                        child: const Center(),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Expanded(
                          child: Divider(
                        thickness: 3,
                        color: Colors.white,
                      ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
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
                    width: 60,
                    height: 60,
                    child: const Center(),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
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
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image-preview1.png"),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                  width: 400,
                                  height: 400,
                                ),
                                Text(
                                  "Dự án trồng san hô Việt Nam",
                                  style: Get.textTheme.titleLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Text(
                                    "ádfasfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasd")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image-preview1.png"),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                  width: 400,
                                  height: 400,
                                ),
                                Text(
                                  "Khoa học biển",
                                  style: Get.textTheme.titleLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Text(
                                    "ádfasfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasd")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image-preview1.png"),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                  width: 400,
                                  height: 400,
                                ),
                                Text(
                                  "Chiến dịch cộng đồng",
                                  style: Get.textTheme.titleLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                const Text(
                                    "ádfasfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaáádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasdfdfsaádfasd")
                              ],
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
                        thickness: 2,
                        color: Colors.white,
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
                        thickness: 1,
                        color: Colors.grey,
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
