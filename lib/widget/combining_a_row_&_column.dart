import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              // 1
              FileOption(
                text: 'File Upload',
                iconData: Icons.file_upload_outlined,
                color: Colors.green,
              ),

              // 2
              FileOption(
                text: 'File Download',
                iconData: Icons.file_download_outlined,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FileOption extends StatelessWidget {
  //
  final String text;
  final IconData iconData;
  final Color color;

  //
  const FileOption({
    Key? key,
    required this.text,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1
        Container(
          width: 50,
          height: 50,
          child: Icon(
            iconData,
            color: color,
          ),
          decoration: BoxDecoration(
            color: color.withOpacity(0.25),
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(height: 8),

        // 2
        Text(text),
      ],
    );
  }
}
