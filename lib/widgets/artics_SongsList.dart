import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SongsList extends StatefulWidget {
  const SongsList({super.key});

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6.w),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 1.h, right: 2.h),
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
                              ?.copyWith(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
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
                    Icons.favorite_border,
                    color: Color(0xffB4B4B4),
                    size: 18,
                  )
                ],
              ),
            );
          }),
    );
  }
}
