import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_app/navbar/navbar.dart';
import 'package:spotify_app/pages/articspage.dart';
import 'package:spotify_app/pages/homepage.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/pages/modepage.dart';
import 'package:spotify_app/pages/profilepage.dart';
import 'package:spotify_app/providers/modeList_provider.dart';
import 'package:spotify_app/providers/profileList_provider.dart';
import 'package:spotify_app/providers/profile_provider.dart';
import 'package:spotify_app/providers/releases_provider.dart';
import 'package:spotify_app/widgets/home_ArtistBanner.dart';
import 'package:spotify_app/widgets/home_Banner.dart';
import 'package:spotify_app/widgets/home_ListText.dart';
import 'package:spotify_app/widgets/home_playList.dart';
import 'package:spotify_app/widgets/mode_grwidget.dart';
import 'package:spotify_app/widgets/mode_search.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(create: (context) => MainProvider(),),
    ChangeNotifierProvider(create: (context) => ReleasesProvider(),),
    ChangeNotifierProvider(create: (context) => ProfileProvider(),),
    ChangeNotifierProvider(create: (context) => ProfileListProvider(),),
    ChangeNotifierProvider(create: (context) => ModeListProvider(),),
 
  ]));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(
              title: "",
        ));
      },
    );
  }
}


class MainProvider extends ChangeNotifier {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 int selectedIndex = 0;
  onTap(index) {
    setState(() {
      selectedIndex = index;
      print(index);
    });
  }

  final List<Widget> screens = [
    //Sayfaların liste içerisinde tanımlanması
    const HomePages(),
    const ModePage(),
    const ArticsPage(),
    const ProfilePage(),
  ];

  

// final List<Widget> _choice = [
//     HomePages(),
//     ModePage(),
//     ArticsPage(),
//     ModePage(),
  
//   ];




  @override
  Widget build(BuildContext context) {
    
    return Consumer(
      builder: (context, MainProvider value, child) {
        return Scaffold(
          body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/navbar_home.png",
                color:
                    selectedIndex == 0 ? Color(0xff1ED760) : Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/navbar_discover.png",
                color:
                    selectedIndex == 1 ? Color(0xff1ED760) : Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/navbar_heart.png",
                color:
                    selectedIndex == 2 ? Color(0xff1ED760) : Color(0xff808080),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/navbar_profile.png",
                color:
                    selectedIndex == 3 ? Color(0xff1ED760) : Color(0xff808080),
              ),
              label: ""),
        ],
      ),

          
        //  bottomNavigationBar: BottomNavigationBar(
        //     items: const <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home_max, size: 36,),
        //         label: ""
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.search, size: 36,),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person, size: 36,),
        //         label: '',
        //       ),
              
        //     ],
        //     currentIndex: value.selectedIndex,
        //     selectedItemColor: Colors.green[400],
        //  onTap: (de) {
           
        //    value.onItemTapped(de);
        //  },
        //   ),
        //   body:  _choice[value.selectedIndex]
      
        );
      },
    );
  }
}
/*BottomNavigationBar bottomNavManu() {
    var secilenMenuItem;
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff42C83C),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        currentIndex: secilenMenuItem,
        onTap: (index) {
          
            secilenMenuItem = index;
          
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              //activeIcon: Icon(Icons.home) (tıklandığında farklı icon oluşması için kullanılıyor)
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.timelapse), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "")
        ]);
  }*/
  
  
  
 
  
  
 
