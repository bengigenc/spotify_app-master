import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/widgets/artics_AlbumList.dart';
import 'package:spotify_app/widgets/artics_BanText.dart';
import 'package:spotify_app/widgets/artics_SongsList.dart';
import 'package:spotify_app/widgets/artics_banner.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key});

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArticsBanner(),
            ArticsBannerText(),
            Container(
                margin: EdgeInsets.only(right: 6.w, left: 6.w, top: 2.h),
                alignment: Alignment.topLeft,
                child: Text(
                  "Albums",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontWeight: FontWeight.bold),
                )),
                ArticsAlbumList(),

                Container(
              margin: EdgeInsets.only(top: 3.h, left: 6.w),
              alignment: Alignment.centerLeft,
              child: Text(
                "Songs",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
SongsList()

          ],
        ),
      ),
    );
  }
}
