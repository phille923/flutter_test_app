import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey.shade400,
    body: Center(
      child: Text(
        'Share',
      ),
    ),
  );
}
