import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/search_provider.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {



  @override
  Widget build(BuildContext context) {
      return Container(
height: 10.h,
width: 100.w,
        child: 
         TextField(
          onChanged:(value) {
            if(value.length>3)
         {
Provider.of<SearchProvider>(context , listen: false).getSearchData(value);
Provider.of<SearchProvider>(context , listen: false).settextCharacter(true);

         }
         else
         {
          Provider.of<SearchProvider>(context , listen: false).settextCharacter(false);

         }
            
          }, 
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 26.sp,
              ),
              border: OutlineInputBorder(),
              hintText: "Ne dinlemek istiyorsun?"),
        )
      );
    
    
  }
}


