import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/widgets/mode_grwidget.dart';
import 'package:spotify_app/widgets/mode_search.dart';

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
      body: Container(
        margin: EdgeInsets.only(left: 6.w, right: 6.w),
        child: Column(
          children: [
            SearchBarWidget(),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              child: Text("Hepsine Göz At",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontSize: 16.sp)),
            ),
            GridViewWidget(),
            
          ],
        ),
      ),
    );
  }
}
