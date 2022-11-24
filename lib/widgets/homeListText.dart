import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeListText extends StatefulWidget {
  const HomeListText({super.key});

  @override
  State<HomeListText> createState() => _HomeListTextState();
}

List<String>TextList=[



];


class _HomeListTextState extends State<HomeListText> {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("New", style: HomeListTextStyles.listStyle,),
          Text("Video", style: HomeListTextStyles.listStyle,),
          Text("Artist", style: HomeListTextStyles.listStyle,),
          Text("Podcast", style: HomeListTextStyles.listStyle,),
          Text("Podcast", style: HomeListTextStyles.listStyle,),
        
         

        ],),
      )
    ;
  }
}
class HomeListTextStyles {

static TextStyle listStyle = TextStyle(
fontSize: 20, color: Color(0xffBEBEBE)
);

}