import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/search_provider.dart';
import 'package:spotify_app/widgets/mode_grwidget.dart';
import 'package:spotify_app/widgets/mode_search.dart';

import '../widgets/mode_SearchList.dart';

class ModePage extends StatefulWidget {
  const ModePage({super.key});

  @override
  State<ModePage> createState() => _ModePageState();
}

class _ModePageState extends State<ModePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        
        title: Text(
          "Ara",
textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline6,
        ),
     
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 6.w, right: 6.w),
          child: Column(
            children: [
              SearchBarWidget(),
      
      
      Consumer(builder: (context,SearchProvider value, child) => value.textCharacter==true?SearchList():  Column(children: [
                 Container(
                margin: EdgeInsets.only(top: 3.h),
                child: Text("Hepsine Göz At",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontSize: 16.sp)),
              ),
              GridViewWidget(),
              ],))
             
             
              
            ],
          ),
        ),
      ),
    );
  }
}
