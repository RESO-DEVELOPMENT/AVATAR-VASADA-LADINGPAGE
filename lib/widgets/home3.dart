// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class VideoDemo extends StatefulWidget {
//   const VideoDemo({super.key});

//   @override
//   State<VideoDemo> createState() => _VideoDemoState();
// }

// class _VideoDemoState extends State<VideoDemo> {
//   List<String> videoList = 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
//       body: Builder(
//         builder: (context) {
//           final double height = MediaQuery.of(context).size.height;
//           return CarouselSlider(
//             options: CarouselOptions(
//               height: height,
//               viewportFraction: 1.0,
//               enlargeCenterPage: false,
//               // autoPlay: false,
//             ),
//             items: imgList
//                 .map((item) => Container(
//                       child: Center(
//                           child: Image.network(
//                         item,
//                         fit: BoxFit.cover,
//                         height: height,
//                       )),
//                     ))
//                 .toList(),
//           );
//         },
//       ),
//     );
//   }
// }
