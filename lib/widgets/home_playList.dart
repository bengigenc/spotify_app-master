import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayList extends StatefulWidget {
  const PlayList(
      {super.key,
     });

  

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
         
              margin: EdgeInsets.only(bottom: 1.h,right: 2.h),
              height: 7.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                   Container(
                  
              child: Image.asset("assets/images/play.png"),
          ),
          Container(
              margin: EdgeInsets.only(right: 25.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "As It Was",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Harry Styles",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontSize: 14.sp),
                  )
                ],
              ),
          ),
          Text("5:33", style: Theme.of(context).textTheme.bodyText2),
          Icon(
              Icons.favorite,
              color: Color(0xffB4B4B4), size: 18,
          )
                ],
              ),
            );
          }),
    );
    
    
    
    
    
    
  
  }
}
