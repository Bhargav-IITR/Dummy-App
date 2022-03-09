import 'package:flutter/material.dart';

//need to put the navigation function in main file
// ignore: camel_case_types
class player extends StatefulWidget {
  const player({Key? key}) : super(key: key);

  @override
  State<player> createState() => _playerState();
}

// ignore: camel_case_types
class _playerState extends State<player> {
  bool playing = false;
  var playButton = Icons.play_arrow;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    color:
    const Color.fromARGB(66, 21, 1, 24);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Music Player',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(31, 51, 44, 44),
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Center(
              child: SizedBox(
                width: 280.0,
                height: 280.0,
                child: Image.network(
                    'https://images.unsplash.com/photo-1485579149621-3123dd979885?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Center(
              child: Text(
                'Fix You',
                style: TextStyle(
                  color: Color.fromARGB(221, 48, 9, 63),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Center(
              child: Text(
                'Coldplay',
                style: TextStyle(
                  color: Color.fromARGB(221, 48, 9, 63),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 174, 98, 184),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 45.0,
                        color: const Color.fromARGB(255, 253, 253, 253),
                        onPressed: () {},
                        icon: const Icon(Icons.skip_previous),
                      ),
                      IconButton(
                        iconSize: 50.0,
                        color: const Color.fromARGB(255, 253, 253, 253),
                        onPressed: () {
                          if (!playing) {
                            setState(() {
                              playButton = Icons.pause;
                              playing = true;
                            });
                          } else {
                            playButton = Icons.play_arrow;
                            playing = false;
                          }
                        },
                        icon: Icon(
                          playButton,
                        ),
                      ),
                      IconButton(
                        iconSize: 45.0,
                        color: const Color.fromARGB(255, 253, 253, 253),
                        onPressed: () {},
                        icon: const Icon(Icons.skip_next),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
