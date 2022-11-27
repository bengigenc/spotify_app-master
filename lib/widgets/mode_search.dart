import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, size: 26.sp,),
              border: OutlineInputBorder(),
              
              hintText: "Ne dinlemek istiyorsun?"),
        ),
      )
    ;
  }
}
