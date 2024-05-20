import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-home.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "AVATAR VASADA",
                      style: TextStyle(
                          wordSpacing: 0.1,
                          letterSpacing: 0.1,
                          fontSize: 140,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
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
                              thickness: 2,
                              color: Colors.white,
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
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(height: 10),
                      RotatedBox(
                        quarterTurns:
                            3, // Specify the angle in radians for the rotation
                        child: Text(
                          'Scroll Down',
                          style: Get.textTheme.bodyLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      'Like a wave from the ocean that finds the promised land, Vega City Nha Trung contains the hidden beauty and cleverness of subtle choices that follow each other to realize the dream of a city of unlimited fun. Vega City Nha Trang - a place with you to filter the best things and choose the mark for your own life.',
                      style: Get.textTheme.labelSmall?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
