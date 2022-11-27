import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/releases_provider.dart';

class HomeArtistBanner extends StatefulWidget {
  const HomeArtistBanner({
    super.key,
  });

  @override
  State<HomeArtistBanner> createState() => _HomeArtistBannerState();
}

class _HomeArtistBannerState extends State<HomeArtistBanner> {
  ReleasesProvider? releasesData;
  @override
  void initState() {
    super.initState();
    releasesData = Provider.of<ReleasesProvider>(context, listen: false);
    releasesData!.GetReleasesData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ReleasesProvider value, child) {
        return Container(
          margin: EdgeInsets.only(top: 2.h),
          alignment: Alignment.centerLeft,
          height: 31.h,
          width: double.infinity,
          child: value.isReleasesDataLoaded == true
              ? ListView.builder(
                  itemCount: value.releasesData!.albums!.items!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      
                      height: 27.h,
                      width: 30.w,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              height: 21.h,
                              width: 33.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${value.releasesData!.albums!.items![index].images![0].url}"),
                                      fit: BoxFit.cover)),
                              //child:
                              //Image.network("${value.releasesData!.albums!.items![index].images![0].url}"),
                            ),
                            Container(
                              height: 4.h,
                              margin: EdgeInsets.only(top: 19.h, left: 21.w),
                              child: Image.asset("assets/images/play.png"),
                            )
                          ]),
                          Container(
                            padding: EdgeInsets.only(left: 2.w),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${value.releasesData!.albums!.items![index].name}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(fontSize: 17.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 2.w, top: 1.h),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${value.releasesData!.albums!.items![index].artists![0].name}",
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    );
                  })
              : Container(),
        );
      },
    );
  }
}
