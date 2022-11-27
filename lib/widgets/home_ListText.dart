import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeListText extends StatefulWidget {
  const HomeListText({super.key});

  @override
  State<HomeListText> createState() => _HomeListTextState();
}

class _HomeListTextState extends State<HomeListText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 4.h,
          bottom: 2.h,
        ),
        width: 100.w,
        height: 4.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(right: 3.w),
                  height: 5.h,
                  width: 25.w,
                  alignment: Alignment.centerLeft,
                  child: Text("New"));
            }));
  }
}
