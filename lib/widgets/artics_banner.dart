import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/pages/homepage.dart';

class ArticsBanner extends StatefulWidget {
  const ArticsBanner({super.key});

  @override
  State<ArticsBanner> createState() => _ArticsBannerState();
}

class _ArticsBannerState extends State<ArticsBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  child: Image.asset("assets/images/ArticsBanner.png"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 6.w, left: 6.w, top: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Icon(Icons.arrow_back_ios, color: Colors.white,),
                      
                      Icon(Icons.more_vert, color: Colors.white,)
                    ],
                  ),
                )
              ],
            );
  }
}