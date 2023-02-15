import 'package:flutter/material.dart';
import 'package:listgrid2ui/fifth_screen.dart';
import 'package:listgrid2ui/third_screen.dart';
import 'package:sizer/sizer.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  bool like =false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                          // Navigator.pop(context, MaterialPageRoute(builder: (context)=>ThirdScreen()),);
                          Navigator.pushNamed(context, '/Third');
                        },
                          child: Icon(Icons.arrow_back,color: Color(0xff4e5764),),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    Text("Checkout",style: TextStyle(fontSize: 25, color: Color(0xff4e5764),),),
                  ],
                ),
                SizedBox(height: 2.h,),

                Container(
                  height: 15.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12.withOpacity(0.1),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          height: 20.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgV6pECTFXVOU0SVCEAT7rw8-UHq09Ret9TQ&usqp=CAU"),fit: BoxFit.fill),
                          ),
                        ),
                      ),


                     Column(
                       children: [
                         SizedBox(height: 2.h,),
                         Padding(
                           padding: const EdgeInsets.only(right: 80),
                           child: Text("Byron Beach",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         ),
                         SizedBox(height: 1.h,),

                         Padding(
                           padding: const EdgeInsets.only(right: 120),
                           child: Row(
                             children: [
                               Icon(Icons.location_on_rounded,color: Color(0xff17b3c4),),
                               Text("Australia"),
                             ],
                           ),
                         ),

                         SizedBox(height: 1.h,),

                         Row(
                           children: [
                             GestureDetector(
                               onTap: (){
                                 like=!like;
                                 setState(() {

                                 });
                               },
                               child: Icon(Icons.star,color: like==true? Colors.grey:Colors.yellow.withOpacity(0.9),),
                             ),
                             SizedBox(width: 1.w,),
                             Text("4.5"),
                             SizedBox(width: 2.w,),
                             Text("(1045)"),
                             SizedBox(width: 15.w,),
                             Text("\$450",style: TextStyle(fontSize: 20,color: Color(0xff17b3c4), ),),
                           ],
                         ),
                       ],
                     ),
                    ],
                  ),
                ),

                SizedBox(height: 1.7.h,),

                Row(
                  children: [
                    Text("Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(height: 1.7.h,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12.withOpacity(0.1),
                          hintText: "Start date",
                          suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w,),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                            fillColor: Colors.black12.withOpacity(0.1),
                            hintText: "End date",
                            suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 1.7.h,),
                Row(
                  children: [
                    Text("Person",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 1.7.h,),

                Container(
                  height: 10.h,
                  width: 90.w,
                  color: Colors.blue,
                ),

                SizedBox(height: 1.7.h,),

                Row(
                  children: [
                    Text("Price Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(height: 1.7.h,),

                Container(
                  height: 22.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  Colors.black12.withOpacity(0.1),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Travel fee:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            SizedBox(width: 48.w,),
                            Text("\$450"),
                          ],
                        ),

                        SizedBox(height: 2.h,),

                        Row(
                          children: [
                            Text("Discount:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            SizedBox(width: 49.w,),
                            Text("- \$10"),
                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Text("-----------------------------------------------------------------------------"),

                        SizedBox(height: 1.h,),

                        Row(
                          children: [
                            Text("Total:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                            SizedBox(width: 57.w,),
                            Text("\$440"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 1.7.h,),

                Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff17b3c4),
                  ),

                  child: Center(child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/Fifth');
                    },
                      child: Text("Confirm",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
