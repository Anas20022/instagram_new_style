import 'package:flutter/material.dart';
import 'package:instgram_new_style/data.dart';
import 'package:instgram_new_style/ui/widget/commented.dart';

import '../widget/post.dart';

class PostClick extends StatelessWidget {
   PostClick({this.data});
    Data? data;



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(

        height: 70,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(10, -10),
                  blurRadius: 10)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Row(children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1666594351951-43f58d69c93f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Add a comment",
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: Container(
                      margin: const EdgeInsets.all(4),
                      child:
                      Image.asset("image/send.png", color: Colors.white)),
                ),
              ]),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          children: [
            Post(
                name:data!.name,
                imgPost:
                data!.imgPost,
                subName: data!.subName,
                imgCircular:data!.imgCircular,
                spacer: true
            ),


            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data_2.length,
                itemBuilder:(context,index){
                  return Commented(
                      name: data_2[index].name, comment: data_2[index].comment, imgCircular: data_2[index].imgCircular,);
                },
            ),



           //
          ],
        ),
      ),
    );
  }
}


