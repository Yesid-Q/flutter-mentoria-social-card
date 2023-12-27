import 'package:flutter/material.dart';

class User {
  final String userName;
  final String photo;
  final String employment;

  const User(
      {required this.userName, required this.photo, required this.employment});
}

final ButtonStyle outlineButton = OutlinedButton.styleFrom(
  minimumSize: const Size(40, 40),
  maximumSize: const Size(40, 40),
  foregroundColor: const Color.fromRGBO(46, 46, 46, 1),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(100))),
  padding: const EdgeInsets.all(4.0),
  backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
);

const TextStyle textStyle =
    TextStyle(color: Color.fromRGBO(0, 0, 0, 0.8), fontWeight: FontWeight.w500);

final ButtonStyle buttonIconStyle = OutlinedButton.styleFrom(
    foregroundColor: const Color.fromRGBO(0, 0, 0, 0),
    backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
    padding: const EdgeInsets.all(4.0),
    minimumSize: const Size(40, 40),
    maximumSize: const Size(40, 40),
    side: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0)));

class PostCard extends StatelessWidget {
  final User user;
  const PostCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/${user.photo}.PNG",
                    width: 40,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.userName,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    Text(
                      user.employment,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  style: outlineButton,
                  onPressed: () {},
                  child: const Icon(Icons.keyboard_control_rounded, size: 20),
                ),
              ],
            ),
          ]),
          const SizedBox(width: 10, height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/${user.photo}.PNG",
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(width: 10, height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  OutlinedButton(
                      style: buttonIconStyle,
                      onPressed: () {},
                      child: const Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(210, 4, 145, 1),
                      )),
                  const Text("44.389", style: textStyle)
                ],
              ),
              Row(
                children: [
                  OutlinedButton(
                    style: buttonIconStyle,
                    onPressed: () {},
                    child: const Icon(
                      Icons.chat_outlined,
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                    ),
                  ),
                  const Text(
                    "24.576",
                    style: textStyle,
                  )
                ],
              ),
              OutlinedButton(
                  style: buttonIconStyle,
                  onPressed: () {},
                  child: const Icon(Icons.bug_report_rounded,
                      color: Color.fromRGBO(0, 0, 0, 0.8))),
              OutlinedButton(
                style: buttonIconStyle,
                onPressed: () {},
                child: const Icon(
                  Icons.bookmark_border_outlined,
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
