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

      height: 16.h,
      width: 100.w,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
            child: Image.asset("assets/images/play.png"),
          ),
          Container(
            margin: EdgeInsets.only(right: 45.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "evwewbkhk",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontSize: 10),
                ),
                Text(
                  "gdjhgsdfs",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 10),
                )
              ],
            ),
          ),
          Text("7:98", style: Theme.of(context).textTheme.subtitle2),
          Icon(
            Icons.favorite,
            color: Color(0xffB4B4B4), size: 18,
          )
              ],
            );
          }),
    );;
  }
}