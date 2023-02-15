import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<EightScreen> createState() => _EightScreenState();
}

class _EightScreenState extends State<EightScreen> {

  var list=[
    'Rate us your experience.',
    'Your London trip is successfully \ncompleted.',
    'Your india trip is scheduled on \n2th April 2022.',
    'Your payment process & booking \nis completed.',
    'Your india trip is scheduled on \n02th April 2022',
    'Your payment process & booking \nis completed.',
    'Your india trip is scheduled on \n2th April 2022.',
  ];

  var hour=[
    '1 hour ago',
    '3 hour ago',
    '2 day ago',
    '2 day ago',
    '3 day ago',
    '5 day ago',
    '3 day ago',
  ];

  var Selected=3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                child: Row(
                  children: [
                    Text("Where do \nyou want to go ? ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(width: 27.w),
                    CircleAvatar(
                      maxRadius: 27,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy4WrtfCmETpv3KiykxrIBByU5xgiXhpSmCQ&usqp=CAU",),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 2.h,),

              Stack(
                children: [
               Container(
                  height: 85.h,
                  // width: 100.w,
                  child: ListView.separated(
                      itemBuilder: (context,index){
                    return Container(
                      height: 10.h,
                      width: 100.w,
                      // color: Colors.grey,
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              maxRadius: 26,
                              backgroundColor: Color(0xff17b3c4),
                              child: Icon(Icons.star),
                            ),
                          ],
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(height: 7.h,),
                                Text(list[index],style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),

                            Row(
                              children: [
                                Text(hour[index]),
                              ],
                            ),
                          ],
                        ),

                      ),
                    );
                  }, separatorBuilder: (context,index){return SizedBox(height: 2.h);}, itemCount: list.length),
                ),


                // Positioned(
                //   top: 570,
                //     child: Container(
                //       height: 10.h,
                //       width: 100.w,
                //       // color: Colors.grey,
                //       child: BottomNavigationBar(
                //        currentIndex: Selected,
                //        onTap: (index){
                //       setState(() {
                //         Selected=index;
                //       });
                //        },
                //       type: BottomNavigationBarType.fixed,
                //       backgroundColor:Colors.white,
                //
                //       items: [
                //         BottomNavigationBarItem(
                //           icon: GestureDetector(
                //             onTap: (){
                //               Navigator.pushNamed(context, '/second');
                //             },
                //             child: Icon(Icons.home),
                //           ),
                //           label: "Home",
                //         ),
                //       BottomNavigationBarItem(
                //         icon: GestureDetector(
                //             onTap: (){
                //               Navigator.pushNamed(context, '/Six');
                //             },
                //             child: Icon(Icons.explore)
                //         ),
                //         label: "Explore",
                //       ),
                //       BottomNavigationBarItem(
                //         icon: GestureDetector(
                //           onTap: (){
                //             Navigator.pushNamed(context, '/Seven');
                //           },
                //           child: Icon(Icons.save),
                //         ),
                //         label: "Save",
                //       ),
                //       BottomNavigationBarItem(
                //         icon: GestureDetector(
                //             onTap: (){
                //               Navigator.pushNamed(context,'/Eight');
                //             },
                //             child: Icon(Icons.notifications)
                //         ),
                //         label: "Notification",
                //       ),
                //
                //   ],
                // ),
                //
                //     ),
                //   ),
                //

               ],
              ),

            ],
          ),
        ),

       bottomNavigationBar: BottomNavigationBar(
          currentIndex: Selected,
          onTap: (index){
            setState(() {
              Selected=index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.white,

          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/second');
                },
                child: Icon(Icons.home),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/Six');
                  },
                  child: Icon(Icons.explore)
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/Seven');
                },
                child: Icon(Icons.save),
              ),
              label: "Save",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,'/Eight');
                  },
                  child: Icon(Icons.notifications)
              ),
              label: "Notification",
            ),

          ],
        ),


      ),
    );
  }
}
