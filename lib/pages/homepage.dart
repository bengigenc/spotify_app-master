import 'dart:core';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:spotify_app/pages/articspage.dart';
import 'package:spotify_app/pages/profilepage.dart';
import 'package:spotify_app/widgets/home_ArtistBanner.dart';
import 'package:spotify_app/widgets/home_Banner.dart';
import 'package:spotify_app/widgets/home_ListText.dart';
import 'package:spotify_app/widgets/home_Topbar.dart';
import 'package:spotify_app/widgets/home_playList.dart';

import 'modepage.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 6.w, top: 3.h, bottom: 3.h),
          child: Column(children: [
            Stack(
              children: [
                TopBar(),
                HomeBanner(),
                Positioned(
                  child: Image.asset("assets/images/billie.png"),
                  left: 40.w,top: 4.2.h,
                )
              ],
            ),
            HomeListText(),
            HomeArtistBanner(),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              alignment: Alignment.centerLeft,
              child: Text(
                "Playlist",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
            PlayList(),
          ]),
        ),
      ),
    );
  }
}
