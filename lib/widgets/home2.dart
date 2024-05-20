import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'AVATAR OCEAN GATE',
                    style: Get.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'ádfasdádfasdádfasdádfasdádfasdádfasdádfasdádfasdádfasdádfasd',
                    style:
                        Get.textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Khung San Hô Cho Celeb',
                              style: Get.textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'ádfasdfdfsaádfasdfdfsaádfasdfdfsaádfa sdfdfsaádfasdfdfsaádfas dfdfsaádfasdfdfsaádfasdfdfsa',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: Get.textTheme.bodyLarge
                                  ?.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Câu chuyện san hô',
                              style: Get.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'ádfasdfdfsaádfasdfdfsaádfasdfdfsaádfa sdfdfsaádfasdfdfsaádfas dfdfsaádfasdfdfsaádfasdfdfsa',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: Get.textTheme.bodyLarge
                                  ?.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 100,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kid`s Club',
                              style: Get.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'ádfasdfdfsaádfasdfdfsaádfasdfdfsaádfa sdfdfsaádfasdfdfsaádfas dfdfsaádfasdfdfsaádfasdfdfsa',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: Get.textTheme.bodyLarge
                                  ?.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
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
                          width: 500,
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
                        thickness: 2,
                        color: Colors.white,
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
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
