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
      height: 21.h,
      
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 3.w),
                  height: 15.h,
                  width: 30.w,
                  //margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      color: Colors.grey.shade400),
                  child: Image.asset("assets/images/ArticsBanner.png",),
                ),
                Text("gdjhs"),
                Text("dghsjdh"),
              ],
            );
          }),
    );
  }
}
