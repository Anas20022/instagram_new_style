import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post({
    required this.name,
    required this.subName,
    required this.imgPost,
    required this.imgCircular,
    this.spacer = false,
    super.key,
  });

  final String name;
  final String subName;
  final String imgCircular;
  final String imgPost;
  bool spacer;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 465,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  spacer
                      ? InkWell(
                          child: const Icon(
                            Icons.arrow_back,
                            size: 36,
                          ),
                          onTap: () {
                            Navigator.popUntil(context,
                                (route) => route.settings.name == '/home_page');
                          },
                        )
                      : const Padding(padding: EdgeInsets.zero),
                  spacer
                      ? const Spacer(
                          flex: 1,
                        )
                      : const Padding(padding: EdgeInsets.zero),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(imgCircular),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subName,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        size: 35,
                      ))
                ],
              ),
            ),
            InkWell(
              // onTap: () {
              //   Navigator.pushNamed(context, "/PostClick");
              // },
              child: Container(
                width: 300,
                height: 330,
                //put the urlImage in BoxDecoration in image: DecorationImage not in child
                decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black26,
                        offset: Offset(10, 10),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imgPost,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                      },
                      child:
                          Image.asset('image/love.png', height: 30, width: 30,)),
                  const Text("2520"),
                  const SizedBox(
                    width: 7,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset('image/comment.png',
                          height: 30, width: 30)),
                  const Text("400"),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child:
                          Image.asset("image/save.png", height: 30, width: 30))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
