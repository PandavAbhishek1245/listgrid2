import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SixScreen extends StatefulWidget {
  const SixScreen({Key? key}) : super(key: key);

  @override
  State<SixScreen> createState() => _SixScreenState();
}

class _SixScreenState extends State<SixScreen> {

  var name= [
    'Popular',
    'Beach',
    'New',
    'Near',
    'Temple',
  ];

  var grid=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgV6pECTFXVOU0SVCEAT7rw8-UHq09Ret9TQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Yh0dyuEChjsfPswy_p20SDJPiAsFOu75Xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbMgzQdbkr-jP7AIcP-ixasMG4yjLuBcfjUg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUP0SAh5-0s-FjkagWMSnz2j01yirtXP_l6g&usqp=CAU",
  ];

  var place=[
    'byron beach',
    'Colosseum',
    'kudah island',
    'Crown beach',
  ];

  var location=[
    'Australia',
    'Maldives',
    'Maldives',
    'Australia',
  ];

  var Selected=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
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

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 6.h,
                  width: 100.w,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Container(
                      height: 1.5.h,
                      width: 30.w,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      color: Colors.black12.withOpacity(0.1),
                      ),
                      child: Center(child: Text(name[index]),),
                    );
                  }, separatorBuilder: (context,index){return SizedBox(width: 5.w,);}, itemCount: 5),
                ),
              ),

             SizedBox(height: 3.h,),

              Stack(
               children: [
                Container(
                 height: 54.h,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10,right: 10),
                   child: GridView.builder(
                     scrollDirection: Axis.vertical,
                       itemCount: 4,
                       shrinkWrap: true,
                       gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (
                         crossAxisCount: 2,
                         crossAxisSpacing: 10,
                         mainAxisSpacing: 10,
                         mainAxisExtent: 210,

                       ), itemBuilder: (context,index){
                         return Container(
                           decoration: BoxDecoration(
                             image: DecorationImage(image: NetworkImage(grid[index],),fit: BoxFit.fill),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Column(
                               children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                               Padding(
                               padding: const EdgeInsets.all(15.0),
                               child: Container(
                                 height: 5.h,
                                 width: 10.w,
                                 child: Icon(Icons.messenger_sharp,color: Colors.blue,),
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(7),
                                 ),
                               ),
                             ),
                           ],
                         ),
                                 SizedBox(height: 12.h,),

                                 Row(
                                   children: [
                                     SizedBox(width: 4.w,),
                                     Text(place[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                                 ],
                                 ),
                                 SizedBox(height: 1.h,),

                                 Row(
                                   children: [
                                     SizedBox(width: 3.w,),
                                     Icon(Icons.location_on_rounded,size: 20,color: Colors.white,),
                                     Text(location[index],style: TextStyle(color: Colors.white.withOpacity(0.7),),),
                                   ],
                                 ),

                               ],
                           ),
                         );
                      },
                   ),
                 ),
               ),


                 // Positioned(
                 //   top:415,
                 //   child: Container(
                 //     height: 12.h,
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
                 //           icon: GestureDetector(
                 //             onTap: (){
                 //               Navigator.pushNamed(context, '/second');
                 //             },
                 //             child: Icon(Icons.home),
                 //           ),
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
                 //
                 //   ),
                 // ),

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
