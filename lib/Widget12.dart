import 'package:flutter/material.dart';

//! Animated Icon

class Widget011 extends StatefulWidget {
  const Widget011({Key? key}) : super(key: key);

  @override
  State<Widget011> createState() => _Widget11State();
}

class _Widget11State extends State<Widget011> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget 12',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff538dbc),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (_isPlay == false) {
                    _controller.forward();
                    _isPlay = true;
                  } else {
                    _controller.reverse();
                    _isPlay = false;
                  }
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _controller,
                  size: 100,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
              child: Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
