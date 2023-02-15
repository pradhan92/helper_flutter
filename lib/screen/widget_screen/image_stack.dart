

import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class ImageStack extends StatefulWidget {
  const ImageStack({Key? key}) : super(key: key);

  @override
  State<ImageStack> createState() => _ImageStackState();
}

class _ImageStackState extends State<ImageStack> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
        body: Center(
          child: FlutterImageStack(
            //backgroundColor: Colors.grey,
            itemBorderColor: Colors.red,
            imageList: const [
              'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
              'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
              'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
              'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
            ],
            showTotalCount: true,
            totalCount: 4,
            itemRadius: 100, // Radius of each images
            itemCount: 3, // Maximum number of images to be shown in stack
            itemBorderWidth: 5, // Border width around the images
          ),
        ),
    );
  }
}
