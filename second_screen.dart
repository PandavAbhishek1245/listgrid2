
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var Selected=0;
  var list1=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgV6pECTFXVOU0SVCEAT7rw8-UHq09Ret9TQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Yh0dyuEChjsfPswy_p20SDJPiAsFOu75Xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbMgzQdbkr-jP7AIcP-ixasMG4yjLuBcfjUg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUP0SAh5-0s-FjkagWMSnz2j01yirtXP_l6g&usqp=CAU",
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTsYalf1-vyPhddy5ycBW9SX6U9PC4yPjV6A&usqp=CAU",
  ];

  var list=[
    'Mountain',
    'Beach',
    'Byron',
    'Colosseum',
    'Crown',
  ];

  var location=[
    'Swiss',
    'Korea',
    'keneda',
    'Simla',
    'Dwarka',
  ];

  var place=[
    'Byron Beach',
    'Colosseum',
    'Kudah island',
    'Crown Beach',
    'mountain',
  ];

  var aaa=[
    'Australia',
    'Maldives',
    'Maldives',
    'Australia',
    'Surat',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Where do \nyou want to go ? ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(width: 27.w,),
                    CircleAvatar(
                      maxRadius: 27,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy4WrtfCmETpv3KiykxrIBByU5xgiXhpSmCQ&usqp=CAU",),
                    ),
                  ],
                ),

                SizedBox(height: 5.h,),

               Padding(
                 padding: const EdgeInsets.only(right: 25),
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
                     // suffixIcon: Icon(Icons.arrow_circle_right_rounded),
                     suffixIcon: Container(
                       height: 7.4.h,
                       width: 3.w,
                       decoration: BoxDecoration(
                         color: Color(0xff17b3c4),
                         borderRadius: BorderRadius.only(topRight:Radius.circular(40),bottomRight: Radius.circular(40),),
                       ),
                       child: Icon(Icons.arrow_circle_right_rounded),
                     ),
                   ),
                 ),
               ),

                SizedBox(height: 5.h,),

                Row(
                  children: [
                    Text("Travel places",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(width: 38.w,),
                    Text("See all"),
                  ],
                ),

                SizedBox(height: 4.h,),


               Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 10.w,
                      // color: Colors.cyan,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text('All', style: TextStyle(fontSize: 15),),
                                SizedBox(width: 12.w,),
                                Text("Latest",style: TextStyle(color: Colors.blue),),
                                SizedBox(width: 12.w,),
                                Text("Popular"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.h,),

                 Container(
                   height: 30.h,
                   width: 81.w,
                   color: Colors.white,
                   child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context,index){
                     return Container(
                       height: 30.h,
                       width: 65.w,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(20),
                         image: DecorationImage(
                             image: NetworkImage(list1[index]),fit: BoxFit.fill
                         ),
                       ),
                         child: Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(20.0),
                                   child: Container(
                                     height: 5.h,
                                     width: 10.w,
                                     child: GestureDetector(
                                       onTap: (){
                                         Navigator.pushNamed(context, '/Third');
                                       },
                                         child: Icon(Icons.messenger_sharp,color: Colors.blue,),
                                     ),
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(7),
                                     ),
                                   ),
                                 ),
                               ],
                             ),

                             SizedBox(height: 10.h,),

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
                                 Text(aaa[index],style: TextStyle(color: Colors.white.withOpacity(0.7),),),
                               ],
                             ),

                           ],
                         ),
                     );
                   }, separatorBuilder: (context,index){
                     return SizedBox(width: 4.w,);
                   }, itemCount: 5),
                 )
                  ],
                ),
                SizedBox(height: 5.h,),

                Row(
                  children: [
                    Text("Top Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(width: 33.w,),
                    Text("See all"),
                  ],
                ),

                SizedBox(height: 2.h,),
                Container(
                  height: 11.h,
                  width:100.w,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          height: 9.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Container(
                                   height: 9.h,
                                   width: 20.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: NetworkImage( list1[index]),fit: BoxFit.fill),
                                  ),
                                 ),
                               ),

                               Column(
                                 children: [
                                   SizedBox(height: 2.h,),
                                   Text(list[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 20),
                                     child: Row(
                                       children: [
                                         SizedBox(height: 4.h,),
                                         Icon(Icons.remove_circle,size: 19,),
                                         Text(location[index]),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                        );
                      }, separatorBuilder: (context,index){
                    return SizedBox(width: 10.w,);
                  }, itemCount: 5),
                ),

              ],
            ),
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
