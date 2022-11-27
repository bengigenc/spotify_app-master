import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/modeList_provider.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  ModeListProvider? modeData;
  @override
  void initState() {
    super.initState();
    modeData = Provider.of<ModeListProvider>(context, listen: false);
    modeData!.GetModeData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ModeListProvider value, child) {
        return Container(
          height: 63.h,
          width: 100.w,
          margin: EdgeInsets.only(top: 3.h),
          child: value.isModeDataLoaded == true
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 5 / 3,
                      crossAxisSpacing: 4.w,
                      mainAxisSpacing: 2.h),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.sp, color: Colors.black),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "${value.modeData!.categories!.items![index].icons![0].url}"),
                              fit: BoxFit.cover)),
                      child: Text(
                        "${value.modeData!.categories!.items![index].name}",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    );
                  })
              : Container(),
        );
      },
    );
  }
}
