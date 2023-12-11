import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: Column(
        
        children: [
      Expanded(
        flex: 1,
        child:
        Row(
          children: [
            Container(
            margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 50.h),
              height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(25.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Flexible(child:  Text("FINISH YOUR \n      WORK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12.sp),)),
                    ),
                    Flexible(child: Icon(Icons.work,size: 45.r,color: Colors.amber.shade50,)),
                  ],
                ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 25.w,right: 25.w,top: 50.h),
              height: 100.h,
              width: 100.h,
              decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(25.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Flexible(child: Text("TAKE YOUR MEDICINE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.sp),)),
                  ),
                  Flexible(child: Icon(Icons.medical_services_outlined,size: 45.r,color: Colors.amber.shade50,)),
                ],
              ),
            ),
          ],
        ),
      ),
          Padding(
            padding: EdgeInsets.only(left: 20.w,right: 20.w),
            child: Divider(color: Colors.orangeAccent,thickness: 2.h,),
          ),
          Expanded(
            flex: 3,
              child: Padding(
                padding: EdgeInsets.all(20.r),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context,index){
                    return SizedBox(
                      height: 100.h,
                      width: 300.w,
                      child: Card(
                        shadowColor: Colors.orangeAccent,
                        elevation: 8,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                        color: Colors.orangeAccent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.r),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("- your vitamine at 6:00 pm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10.h,),
                                  Text("- your medicine at 10:00 pm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),


                                ],),
                            ),
                            Spacer(),
                            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.delete_simple,color: Colors.amber.shade50,size: 25.r,)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.amber.shade50,size: 25.r)),
                          ],
                        ),
                      ),
                    );
                },
                    separatorBuilder: (context,index){ return SizedBox(height: 16.h,);},
                    itemCount: 4),
              )),
      ],),
    );
  }
}
