import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DarshBoardScreenState();
}

class _DarshBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            AvatarGlow(
              glowColor: Colors.deepPurple,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: const Color(0xffff914d),
                child: ClipOval(
                    child: Image.asset(
                  height: 150,
                  width: 150,
                  'assets/me.jpeg',
                  fit: BoxFit.cover,
                )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, i\'m ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const Text(
                  'Delbert Kimbi',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                )
              ],
            ),
            Text(
              'Let\'s connect 😎👇',
              style: TextStyle(
                  color: Colors.black.withOpacity(.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Row(
              children: [],
            ),
            Expanded(
              child: GridView.count(
                  padding: const EdgeInsets.all(40).copyWith(top: 20),
                  shrinkWrap: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: [
                    MyBox(
                      icon: FontAwesomeIcons.facebookF,
                      text: 'Facebook',
                      onTap: () {},
                    ),
                    MyBox(
                      text: 'LinkdIn',
                      icon: FontAwesomeIcons.linkedin,
                      onTap: () {},
                    ),
                    MyBox(
                      text: 'Whatsapp',
                      icon: FontAwesomeIcons.whatsapp,
                      onTap: () {},
                    ),
                    MyBox(
                      text: 'Discord',
                      icon: FontAwesomeIcons.discord,
                      onTap: () {},
                    ),
                    MyBox(
                      text: 'Github',
                      icon: FontAwesomeIcons.github,
                      onTap: () {},
                    ),
                    MyBox(
                        text: 'Twitter',
                        icon: FontAwesomeIcons.xTwitter,
                        onTap: () {})
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const MyBox({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(4.0, 4.0),
                blurRadius: 15,
                spreadRadius: 1),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.deepPurple,
                    size: 20,
                  ))
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                color: Colors.deepPurple,
                size: 30,
                icon,
              )),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black26,
            ),
          )
        ],
      ),
    );
  }
}
