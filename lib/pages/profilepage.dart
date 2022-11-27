import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/widgets/profile_banner.dart';
import 'package:spotify_app/widgets/profile_playlist.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey,),
        title: Text("Profile", style: Theme.of(context).textTheme.bodyText2,),
        actions: [Icon(Icons.more_vert, color: Colors.grey,)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileBanner(),
            Container(
              margin: EdgeInsets.only(top: 3.h, left: 6.w, bottom: 2.h),
              alignment: Alignment.centerLeft,
              child: Text(
                "PUBLIC PLAYLIST",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ProfilePlaylist(),
          ],
        ),
      ),
    );
  }
}
