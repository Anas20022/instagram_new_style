import 'package:flutter/material.dart';

class Commented extends StatelessWidget {
  const Commented({required this.name,required this.comment,required this.imgCircular,
    super.key,
  });
  final String name;
  final String comment;
  final String imgCircular;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(horizontal: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(imgCircular),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              comment,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
            Row(
              children: [
               Image.asset("image/love.png",color: Colors.grey,height: 15,width: 15,),
             const SizedBox(width: 15,),
             Image.asset("image/go-back-arrow.png",color: Colors.grey,height: 15,width: 15,),

              ],
            )
          ],
        ),
      ],
    ),

      );

  }
}