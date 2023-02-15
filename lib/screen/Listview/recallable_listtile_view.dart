import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String count;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      //leading: CircleAvatar(child: Text("S")),
      leading: CircleAvatar(child: Icon(Icons.share)),
      trailing: TextButton(onPressed: () {}, child: const Text("View More")),
    );
  }
}
