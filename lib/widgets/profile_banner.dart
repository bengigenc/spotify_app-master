import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/profile_provider.dart';

class ProfileBanner extends StatefulWidget {
  const ProfileBanner({super.key});

  @override
  State<ProfileBanner> createState() => _ProfileBannerState();
}

class _ProfileBannerState extends State<ProfileBanner> {
  ProfileProvider? profileData;
  @override
  void initState() {
    super.initState();
    profileData = Provider.of<ProfileProvider>(context, listen: false);
    profileData!.GetProfilData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ProfileProvider value, child) {
        return  Container(
        padding: EdgeInsets.only(top: 3.h),
        height: 45.h,
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.sp),
                bottomRight: Radius.circular(35.sp)),
            color: Colors.white),
        child:  value.isProfileDataLoaded==true? Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5.h),
                              height: 17.h,
                              width: 30.w,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.amber,image: DecorationImage(image: NetworkImage("${value.profileData!.images![0].url}"))),
                              // child: Image.network(
                              //   "",
                              // ),
                            ),
                            Text("${value.profileData!.email!}"),
                            Text(
                              "${value.profileData!.displayName!}",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "${value.profileData!.followers!.total!}",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    Text("Followers"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "1",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    Text("Followers"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ):Container(),
                        );
        
      },
      
    );
                  
                
        }
      
  }

