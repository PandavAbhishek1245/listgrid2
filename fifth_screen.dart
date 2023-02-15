import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  var nameList=['PayPal','Mastercard','Visa Card',];
  bool like =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
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
                        Navigator.pushNamed(context,'/Forth');
                      },
                        child: Icon(Icons.arrow_back,color: Color(0xff4e5764),),
                    ),
                  ),
                  Text("Payment",style: TextStyle(fontSize: 25, color: Color(0xff4e5764),),),
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.add,color: Color(0xff4e5764),),
                  ),
                ],
              ),

              SizedBox(height: 4.h,),

              Container(
                height: 25.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXmLrqPFn6XgTtsfg7jSxlDBP-tv4fMeVQZw&usqp=CAU"),fit: BoxFit.fill),
                ),
              ),

              SizedBox(height: 4.h,),

              Row(
                children: [
                  Text("Select payment method ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 4.h,),

              Container(
                height: 31.h,
                child: ListView.separated(itemBuilder: (context,index){
                  return Container(
                    height: 9.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: ListTile(
                      leading: Icon(Icons.paypal,size: 40,color: Colors.blue,),
                      title: Text(nameList[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: GestureDetector(
                        onTap: (){
                          like=!like;
                          setState(() {

                          });
                        },
                          child: Icon(Icons.radio_button_unchecked,color:like==true? Color(0xff17b3c4):Colors.black,),
                      ),

                    ),
                  );
                },
                    separatorBuilder: (context,index){return SizedBox(height: 2.h,);}, itemCount: nameList.length),
              ),

              SizedBox(height: 7.h),

              Container(
                height: 8.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff17b3c4),
                ),

                child: Center(child: GestureDetector(
                  onTap: (){
                    print("congratulation");
                    Navigator.pushNamed(context, '/Six');
                  },
                    child: Text("Pay Now",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
