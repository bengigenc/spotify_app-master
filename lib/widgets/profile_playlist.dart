import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../providers/profileList_provider.dart';

class ProfilePlaylist extends StatefulWidget {
  const ProfilePlaylist({super.key});

  @override
  State<ProfilePlaylist> createState() => _ProfilePlaylistState();
}

class _ProfilePlaylistState extends State<ProfilePlaylist> {
  ProfileListProvider? profileListData;
  @override
  void initState() {
    super.initState();
    profileListData = Provider.of<ProfileListProvider>(context, listen: false);
    profileListData!.GetProfilListData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ProfileListProvider value, child) {
        return Container(
            child: value.isProfileListDataLoaded == true
                ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: value.profileListData!.items!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 9.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 9.h,
                              width: 15.w,
                              child: value.profileListData!.items![index].images!.length== 0?Image.asset("assets/images/play.png"):
                              Image.network(
                                "${value.profileListData!.items![index].images![0].url!}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30.w),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${value.profileListData!.items![index].name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(fontSize: 10),
                                  ),
                                  Text(
                                    "${value.profileListData!.items![index].owner!.displayName}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            Text("${value.profileListData!.items![index].tracks!.total}",
                                style: Theme.of(context).textTheme.subtitle2),
                            Icon(
                              Icons.more_horiz,
                              color: Color(0xffB4B4B4),
                              size: 18,
                            )
                          ],
                        ),
                      );
                    })
                : Container());
      },
    );
  }
}
