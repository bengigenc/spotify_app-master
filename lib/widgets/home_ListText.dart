import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/pages/articspage.dart';

class HomeListText extends StatefulWidget {
  const HomeListText({super.key});

  @override
  State<HomeListText> createState() => _HomeListTextState();
}

class _HomeListTextState extends State<HomeListText> {

final kategoriler= [
  "New",
  "Video",
  "Artists",
  "Podcast"
];

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(
            top: 2.h,
            
          ),
          width: 100.w,
          height: 4.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: kategoriler.length,
              itemBuilder: (context, index) {
                return Container(
                    
                    height: 5.h,
                    width: 24.w,
                    alignment: Alignment.centerLeft,
                    child: Text(kategoriler[index]));
              }),
             
    );
  }
}
