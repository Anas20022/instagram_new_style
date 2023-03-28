//*************************************************************************************
//*************************************************************************************
/* ____________فكرة اخرى لصفحة (home page) بتثبيت الستوري عند عمل (scroll)_______ */
//*************************************************************************************
//*************************************************************************************


import 'package:flutter/material.dart';
import 'package:instgram_new_style/data.dart';
import 'package:instgram_new_style/ui/widget/post.dart';


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
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
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


      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
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
          const BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple.shade400,
              icon: const Icon(Icons.search_off_outlined),
              activeIcon: const Icon(Icons.search),
              label: "Search"),
          const BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite),
              label: "love"),
          BottomNavigationBarItem(
              backgroundColor: Colors.deepPurple.shade400,
              icon: const Icon(
                Icons.person_2_outlined,
              ),
              activeIcon: const Icon(Icons.person),
              label: "profile"),
        ],
      ),

      /* ____________فكرة اخرى لصفحة (home page) بتثبيت الستوري عند عمل (scroll)_______ */
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                  // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration:
                          const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black87,
                              offset: Offset(5, 5),
                              blurRadius: 10,
                            ),
                          ]),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              data[index].imageURL_story,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            //*************************End*********************//

            //نقل البيانات
            Expanded(
              child: ListView.builder(

                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return Post(
                      name: data[index].name,
                      subName:  data[index].subName,
                      imgPost:  data[index].imgPost,
                      imgCircular:  data[index].imgCircular,
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
