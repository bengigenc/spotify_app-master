import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(right: 6.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search, size: 26.sp,),
                  Container(
                    height: 7.h,
                    width: 30.w,
                    child: Image.asset("assets/images/spotifylogo.png"),
                  ),
                  Icon(Icons.more_vert, size: 26.sp,)
                ],
              ),
            );
  }
}