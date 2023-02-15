import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,'/second');
                        },
                          child: Icon(Icons.arrow_back,color: Color(0xff4e5764),),
                      ),
                  ),
                  Text("Details",style: TextStyle(fontSize: 25, color: Color(0xff4e5764),),),
                  Container(
                    height: 5.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.save,color: Color(0xff4e5764),),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 4.h),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                       color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgV6pECTFXVOU0SVCEAT7rw8-UHq09Ret9TQ&usqp=CAU"),fit: BoxFit.fill,
                      )
                    ),
                  ),

                  SizedBox(width: 2.8.w,),

                  Container(
                    height: 30.h,
                    width: 15.w,
                    child: Column(
                      children: [
                        SizedBox(height: 1.h,),
                        Container(
                          height: 6.h,
                            width: 11.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff97d0d8),
                          ),
                          child: Icon(Icons.place,color: Color(0xff17b3c4),),
                        ),
                        SizedBox(height: 1.h),
                        Text("20 Place",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

                        SizedBox(height: 1.2.h,),

                        Container(
                          height: 6.h,
                          width: 11.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff97d0d8),
                          ),
                          child: Icon(Icons.watch_later_outlined,color: Color(0xff17b3c4),),
                        ),
                        SizedBox(height: 1.h),
                        Text("3 Week",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

                        SizedBox(height: 1.2.h,),

                        Container(
                          height: 6.h,
                          width: 11.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff97d0d8),
                          ),
                          child: Icon(Icons.more,color: Color(0xff17b3c4),),
                        ),
                        SizedBox(height: 1.h),
                        Text("More",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 4.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text("Byron Beach",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            SizedBox(height: 1.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      like=!like;
                      setState(() {

                      });
                    },
                      child: Icon(Icons.star,color: like==true? Colors.grey:Colors.yellow.withOpacity(0.9),),
                  ),
                  SizedBox(width: 2.w,),
                  Text("4.5"),
                  SizedBox(width: 2.w,),
                  Text("(1045)"),
                ],
              ),
            ),

            SizedBox(height: 2.h,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                Text("Lorem ipsum is simply dummy text of the printing  and \n typesetting industry"),
              ],
              ),
            ),

            SizedBox(height: 4.h,),

            Stack(
              children: [
             Padding(
               padding: const EdgeInsets.only(left: 20.0,right: 20),
               child: Container(
                height: 33.h,
                width: 700.w,
                color: Colors.grey.withOpacity(0.4),
                child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr2qjO6i_HBeinHyO24oCm6PP2qI9WAQusdA&usqp=CAU",fit: BoxFit.fitWidth,),
                 ),
               ),
              ),

                Positioned(
                top: 165,
                  child: Container(
                  height:45.h,
                  width: 100.w,
                   color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 5.w,height: 10.h,),
                            Text("\$450",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            Text("/package"),

                            SizedBox(width: 10.w,),

                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                height: 7.h,
                                width: 47.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/Forth');
                                      },
                                        child: Text("Book Now",style: TextStyle(color: Colors.white),),
                                    ),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                ),

             ],
            ),



          ],
        ),
      ),
    );
  }
}
