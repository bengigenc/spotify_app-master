import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsAlbumList extends StatefulWidget {
  const ArticsAlbumList({super.key});

  @override
  State<ArticsAlbumList> createState() => _ArticsAlbumListState();
}

class _ArticsAlbumListState extends State<ArticsAlbumList> {
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.only(left: 6.w, top: 2.h),
      height: 22.h,
      
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 3.w),
                  height: 17.h,
                  width: 35.w,
                  //margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      color: Colors.grey.shade400,
                      image: DecorationImage(image: AssetImage("assets/images/ArticsBanner.png"), fit: BoxFit.cover)),
                  //child: Image.asset("assets/images/ArticsBanner.png",),
                ),
                Container(
                  margin: EdgeInsets.only(right: 4.w, top: 2.h),
                  alignment: Alignment.centerLeft,
                  child: Text("Lilbubblegum", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16.sp))),
               
              ],
            );
          }),
    );
  }
}
