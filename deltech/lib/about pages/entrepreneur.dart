import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                    child: Container(
                      width: double.infinity,
                      color: Colors.deepPurple[400],
                      // child: Image.asset(
                      //   'assets/me.jpeg',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.deepPurple[200],
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