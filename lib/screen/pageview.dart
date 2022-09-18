import 'package:flutter/material.dart';

class pageview extends StatefulWidget {
  // const pageview({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    // Page(settext: "page 1"),
  ];

  @override
  State<pageview> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<pageview> {
  final PageController _controller = PageController(initialPage: 0);

  // final String _settext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page view"),
      ),
      body: Stack(
          // children: [PageView.builder()],
          ),
    );
  }
}
