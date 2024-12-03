import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page1State();
}

class _Page1State extends State<Page4> {
  bool isFavourite = false;
  final _controller = ConfettiController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.deepPurple[400],
                          child: Image.asset(
                            'assets/me.jpeg',
                            fit: BoxFit.cover,
                            opacity: const AlwaysStoppedAnimation(.5),
                          ),
                        ),
                        Positioned(
                          right: 6,
                          top: 5,
                          child: ConfettiWidget(
                            confettiController: _controller,
                            blastDirection: -pi,
                            colors: const [
                              Colors.blue,
                              Colors.deepPurple,
                              Colors.white,
                            ],
                          ),
                        ),
                        Positioned(
                            right: 6,
                            top: 5,
                            child: IconButton(
                                onPressed: () {
                                  if (!isFavourite) {
                                    _controller.play();
                                  } else {
                                    _controller.stop();
                                  }
                                  setState(() {
                                    isFavourite = !isFavourite;
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: isFavourite
                                      ? Colors.lightBlueAccent
                                      : Colors.white,
                                )))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.all(20),
                      color: Colors.deepPurple[400],
                      child: Column(children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Eng. Student',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 17,
                              width: 17,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'More Info',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              const Positioned(
                  left: 0,
                  right: 0,
                  top: 70,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.deepPurple,

                    /// backgroundImage: AssetImage('assets/me.jpeg'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
