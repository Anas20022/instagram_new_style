import 'package:flutter/material.dart';
import 'package:instgram_new_style/data.dart';
import 'package:instgram_new_style/ui/screens/PostClick.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/post.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  int currentIndex = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.black,
      //   elevation: 10,
      // ),
      backgroundColor: Colors.grey.shade300,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        title:  Text(
          "Instagram",
          style: GoogleFonts.satisfy(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Image.asset('image/tele.png', height: 35, width: 35)),
          TextButton(
              onPressed: () {},
              child: Image.asset('image/send.png', height: 30, width: 30)),
        ],
      ),

      //  ****************************_bottomNavigationBar_1***************************************
      // bottomNavigationBar: Container(
      //   height: 70,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      //       color: Colors.white,
      //       boxShadow: [
      //         BoxShadow(
      //             color: Colors.black26,
      //             offset: Offset(10, -10),
      //             blurRadius: 10)
      //       ]),
      //   child: Row(
      //     children: [
      //       Expanded(
      //           child: IconButton(
      //               onPressed: () {},
      //               icon: Icon(Icons.home, size: 40, color: Colors.black))),
      //       Expanded(
      //           child: IconButton(
      //               onPressed: () {},
      //               icon: Icon(
      //                 Icons.search,
      //                 size: 35,
      //                 color: Colors.grey,
      //               ))),
      //       Expanded(
      //           child: IconButton(
      //               onPressed: () {},
      //               icon: Container(
      //                   width: 50,
      //                   height: 50,
      //                   decoration: BoxDecoration(
      //                     boxShadow: [
      //                       BoxShadow(
      //                           offset: Offset(10, 9),
      //                           blurRadius: 16,
      //                           color: Colors.black38)
      //                     ],
      //                     shape: BoxShape.circle,
      //                     color: Colors.black,
      //                   ),
      //                   child:
      //                       Icon(Icons.add, size: 40, color: Colors.white)))),
      //       Expanded(
      //           child: IconButton(
      //               onPressed: () {},
      //               icon: Icon(
      //                 Icons.favorite,
      //                 size: 35,
      //                 color: Colors.grey,
      //               ))),
      //       Expanded(
      //           child: IconButton(
      //               onPressed: () {},
      //               icon: Icon(
      //                 Icons.person,
      //                 size: 35,
      //                 color: Colors.grey,
      //               ))),
      //     ],
      //   ),
      // ),
      //    ***************************************End******************************************

      //  ****************************_bottomNavigationBar_2***************************************
      bottomNavigationBar: BottomNavigationBar(

        // showSelectedLabels: true,
        //showUnselectedLabels: true,
        selectedItemColor: Colors.deepPurple.shade700,
        unselectedItemColor: Colors.deepPurple.shade300,
        elevation: 15,
        //iconSize : 18,24,36,48 only
        iconSize: 30,
        //  type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        //يكون(type)من نوع (fixed)ما دون 3 عناصر ثم يصبح (shifting) عند 4 فما فوق
        currentIndex: widget.currentIndex,
        //widget.currentIndex --->(HomePage للوصول الى المتغير الي في )
        onTap: (int index) {
          return setState(() {
            widget.currentIndex = index;
          });
        },

        items: [
           BottomNavigationBarItem(
              //  backgroundColor: Colors.deepPurple,
              backgroundColor: Colors.white,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: const Icon(Icons.search_off_outlined),
              activeIcon: const Icon(Icons.search),
              label: "Search"),
           BottomNavigationBarItem(
               backgroundColor: Colors.white,
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: "love"),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: InkWell(

                onTap: (){
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1666594351951-43f58d69c93f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                ),

              ),
              activeIcon: InkWell(
                onTap: (){},
                child:  CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1666594351951-43f58d69c93f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),

              label: "profile"),
        ],
      ),
      //************************************End********************************************
      body: ListView(
        children: [
          //Row of story in instgram
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 90,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length + 1,
                  itemBuilder: (context, index) {
                    //case : 1 without border the instagram story.....
                    /* if (index == 0) {
                    //   return Stack(
                    //     alignment: AlignmentDirectional.centerStart,
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.all(5.0),
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //              // border: Border.all(color: Colors.red, width: 2),
                    //            //   borderRadius: BorderRadius.circular(20),
                    //               shape: BoxShape.circle,
                    //               boxShadow: [
                    //                 BoxShadow(
                    //                   color: Colors.black87,
                    //                   offset: Offset(5, 5),
                    //                   blurRadius: 10,
                    //
                    //                 ),
                    //
                    //               ]),
                    //
                    //           child: const CircleAvatar(
                    //             radius: 30,
                    //             backgroundImage: NetworkImage(
                    //               "https://images.unsplash.com/photo-1607346256330-dee7af15f7c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       // Material(color: Colors.red,child: Icon(Icons.add,weight: ,)),
                    //
                    //       // SizedBox(width: 60,child: Align(alignment: Alignment.bottomRight,child: Icon(Icons.add)))
                    //     ],
                    //   );
                    // } else {
                    //   return Padding(
                    //     padding: const EdgeInsets.all(5.0),
                    //     child: Container(
                    //       decoration: const BoxDecoration(
                    //           shape: BoxShape.circle,
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.black87,
                    //               offset: Offset(5, 5),
                    //               blurRadius: 10,
                    //             ),
                    //           ]),
                    //       child: CircleAvatar(
                    //         radius: 30,
                    //         backgroundImage: NetworkImage(
                    //           data[index - 1].imageURL_story,
                    //         ),
                    //       ),
                    //     ),
                    //   );
                     }*/
                    //case : 2 with border the instagram.....
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(2),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1666594351951-43f58d69c93f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              top: 50,
                              child: Container(
                                height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey.shade300,width: 2),
                                    color: Colors.blue.shade600
                                  ),
                                child: IconButton(padding: EdgeInsets.zero,onPressed: (){},icon:const Icon(Icons.add,color: Colors.white,size: 22,)),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(

                                colors: [
                                  Color(0xff611ed7),
                                   Color(0xffEEA863),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 66,
                              width: 66,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            data[index - 1].imageURL_story),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  }),
            ),
          ),

          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) {
                      return PostClick(
                          data: Data(
                              imgCircular: data[index].imgCircular,
                              imgPost: data[index].imgPost,
                              name: data[index].name,
                              subName: data[index].subName,
                              imageURL_story: ''));
                    }));
                  },
                  child: Post(
                    name: data[index].name,
                    subName: data[index].subName,
                    imgPost: data[index].imgPost,
                    imgCircular: data[index].imgCircular,
                  ),
                );
              }),
        ],
      ),
    );
  }
}

