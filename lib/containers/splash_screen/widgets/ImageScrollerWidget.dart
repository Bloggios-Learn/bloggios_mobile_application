import 'dart:async';

import 'package:Bloggios/models/SplashImages.dart';
import 'package:flutter/material.dart';

class ImageScrollerWidget extends StatefulWidget {
  final int startingIndex;
  const ImageScrollerWidget({super.key, required this.startingIndex});

  @override
  State<ImageScrollerWidget> createState() => _ImageScrollerWidgetState();
}

class _ImageScrollerWidgetState extends State<ImageScrollerWidget> {

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.offset ==
          _scrollController.position.minScrollExtent) {
        _autoScrollForward();
      } else if (_scrollController.offset ==
          _scrollController.position.maxScrollExtent) {
        _autoScrollbackward();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScrollForward();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _autoScrollForward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  _autoScrollbackward() {
    final currentPosition = _scrollController.offset;
    final endPosition = _scrollController.position.minScrollExtent;
    scheduleMicrotask(() {
      _scrollController.animateTo(
          currentPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 20 + widget.startingIndex + 2),
          curve: Curves.linear);
    });
  }

  List<String> modalImages = [
    SplashImages.modals.image0,
    SplashImages.modals.image1,
    SplashImages.modals.image2,
    SplashImages.modals.image3,
    SplashImages.modals.image4,
    SplashImages.modals.image5,
    SplashImages.modals.image6,
    SplashImages.modals.image7,
    SplashImages.modals.image8,
    SplashImages.modals.image9,
    SplashImages.modals.image10,
    SplashImages.modals.image11,
    SplashImages.modals.image12
  ];

  List<String> names = [
    'John',
    'Morris',
    'Mark',
    'Elon',
    'Elina',
    'Morie',
    'Yuli',
    'Kreli',
    'Moui',
    'Warren',
    'Jeff',
    'Luka',
    'Muki'
  ];
  
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SizedBox(
      height: h * 0.6,
      width: w * 0.3,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            height: h * 0.14,
            margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 28, 28, 28),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // image: DecorationImage(
              //   image: AssetImage(modalImages[index + widget.startingIndex]),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                modalImages[index + widget.startingIndex]),
                            fit: BoxFit.cover),),
                  ),
                  Text(
                    names[index + widget.startingIndex],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}