import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SevenScreen extends StatefulWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  State<SevenScreen> createState() => _SevenScreenState();
}

class _SevenScreenState extends State<SevenScreen> {

  var images=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Yh0dyuEChjsfPswy_p20SDJPiAsFOu75Xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbMgzQdbkr-jP7AIcP-ixasMG4yjLuBcfjUg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUP0SAh5-0s-FjkagWMSnz2j01yirtXP_l6g&usqp=CAU",
  ];

  var place=[
    'Colossem',
    'Byron Beach',
    'kudah island',
  ];

  var location=[
    'Maldives',
    'Australia',
    'Maldives',
  ];

  var Selected=2;

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

              SizedBox(height: 3.h,),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    // fillColor: Color(0xfffefeff),
                    fillColor: Colors.black12.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon:Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.search,size: 30,color: Colors.black,),
                    ),
                    hintText:"Search...",
                    suffixIcon: Container(
                      height: 7.4.h,
                      width: 3.w,
                      decoration: BoxDecoration(
                        color: Color(0xff17b3c4),
                        borderRadius: BorderRadius.only(topRight:Radius.circular(40),bottomRight: Radius.circular(40),),
                      ),
                      child: Icon(Icons.arrow_circle_right_rounded,color: Colors.white,),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 3.h,),


              Stack(
                children: [
                Container(
                  height: 74.h,
                  // width: 100.w,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,index){
                          return Container(
                            height: 23.h,
                            width: 65.w,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: NetworkImage(images[index]),fit: BoxFit.fill),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                      children: [
                                        Text(place[index],style: TextStyle(color: Colors.white,fontSize: 22),)
                                      ],
                                    ),

                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded,size: 20,color: Colors.white,),
                                      Text(location[index],style: TextStyle(color: Colors.white.withOpacity(0.7),),),
                                      SizedBox(width: 50.w,),
                                      Container(
                                        height: 5.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.white,
                                        ),
                                        child: Icon(Icons.messenger_sharp,color: Colors.cyan,),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),

                          );
                        }, separatorBuilder: (context,index){
                      return SizedBox(height: 2.h,);
                    }, itemCount: images.length),
                  ),
                ),


                  // Positioned(
                  //   top:480,
                  //   child: Container(
                  //     height: 10.h,
                  //     width: 100.w,
                  //     child: BottomNavigationBar(
                  //       currentIndex: Selected,
                  //       onTap: (index){
                  //         setState(() {
                  //           Selected=index;
                  //         });
                  //       },
                  //       type: BottomNavigationBarType.fixed,
                  //       backgroundColor:Colors.white,
                  //
                  //       items: [
                  //         BottomNavigationBarItem(
                  //           icon: Icon(Icons.home),
                  //           label: "Home",
                  //         ),
                  //         BottomNavigationBarItem(
                  //           icon: GestureDetector(
                  //               onTap: (){
                  //                 Navigator.pushNamed(context, '/Six');
                  //               },
                  //               child: Icon(Icons.explore)
                  //           ),
                  //           label: "Explore",
                  //         ),
                  //         BottomNavigationBarItem(
                  //           icon: GestureDetector(
                  //             onTap: (){
                  //               Navigator.pushNamed(context, '/Seven');
                  //             },
                  //             child: Icon(Icons.save),
                  //           ),
                  //           label: "Save",
                  //         ),
                  //         BottomNavigationBarItem(
                  //           icon: GestureDetector(
                  //               onTap: (){
                  //                 Navigator.pushNamed(context,'/Eight');
                  //               },
                  //               child: Icon(Icons.notifications)
                  //           ),
                  //           label: "Notification",
                  //         ),
                  //
                  //       ],
                  //     ),
                  //   ),
                  // ),


                ],
              ),

            ],
          ),
        ),

        bottomNavigationBar:BottomNavigationBar(
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
              icon: Icon(Icons.home),
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
