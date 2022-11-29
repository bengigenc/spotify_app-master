import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_app/providers/search_provider.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, SearchProvider value, child) =>
            value.isSearchDataLoaded == false
                ? CircularProgressIndicator()
                : Container(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: value.searchData!.artists!.items!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 1.h),
                            height: 7.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.1.h, color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10.sp)),
                            child: Row(
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 15.w,
                                  child: Image.network(
                                    value.searchData!.artists!.items![index]
                                            .images!.isEmpty
                                        ? "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Souvenir_silhouette_post_card._Toledo%27s_greatest_store%3B_Tiedtke%27s._The_store_for_all_the_people_-_DPLA_-_f00a78fe61c216236a13cdebf588d3c3_%28page_1%29.jpg/1200px-Souvenir_silhouette_post_card._Toledo%27s_greatest_store%3B_Tiedtke%27s._The_store_for_all_the_people_-_DPLA_-_f00a78fe61c216236a13cdebf588d3c3_%28page_1%29.jpg"
                                        : value.searchData!.artists!
                                            .items![index].images![0].url!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: 72.w,
                                  height: 20.h,
                                  padding: EdgeInsets.only(left: 4.w, top: 1.h),
                                  child: Text(
                                    value.searchData!.tracks!.items2![index]
                                        .name!,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ));
  }
}
