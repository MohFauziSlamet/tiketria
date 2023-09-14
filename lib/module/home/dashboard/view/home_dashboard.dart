import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiketria/data/dashboard_data.dart';
import 'package:tiketria/module/home/dashboard/components/background_home.dart';
import 'package:tiketria/module/home/dashboard/components/list_destination_home.dart';
import 'package:tiketria/module/home/dashboard/components/most_visited_destination_home.dart';
import 'package:tiketria/module/home/dashboard/components/wording_welcome_home.dart';
import 'package:tiketria/module/home/detail_destination/view/detail_destination.dart';
// import 'package:tiketria/constant/image_cons/destination_city_malang/beach/malang_beach_image_cons.dart';
// import 'package:tiketria/module/home/detail_destination/view/detail_destination.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            if (orientation == Orientation.portrait) ...[
              ///* view potrait
              const BackgroundHomePotrait(),
            ] else ...[
              ///* view landscape
              const BackgroundHomeLandscape(),
            ],

            /// content
            SafeArea(
              child: Column(
                children: [
                  ///* text wellcome
                  if (orientation == Orientation.portrait) ...[
                    /// view potrait
                    const WordingHomeWellcomePotrait(),
                  ] else ...[
                    /// view landscape
                    const WordingHomeWellcomeLandscape(),
                    SizedBox(height: 10.h),
                  ],

                  /// the most visited destination
                  SizedBox(
                    height: orientation == Orientation.portrait ? 250.h : 320.h,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      itemCount: DashboardData.destinationFav.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var data = DashboardData.destinationFav[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) {
                                  return DetailDestination(
                                    data: data,
                                  );
                                },
                              ),
                            );
                          },
                          child: orientation == Orientation.portrait
                              ?
                              // view potrait
                              MostVisitedDestinationPotrait(
                                  index: index,
                                  data: data,
                                )
                              :
                              // view landscape
                              MostVisitedDestinationLandscape(
                                  index: index,
                                  data: data,
                                ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                  top: orientation == Orientation.portrait ? 400.h : 500.h),
              height: (MediaQuery.of(context).size.height * 0.6) -
                  MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                itemCount: DashboardData.destinationFav.length,
                itemBuilder: (context, index) {
                  var data = DashboardData.destinationFav[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) {
                            return DetailDestination(data: data);
                          },
                        ),
                      );
                    },
                    child: orientation == Orientation.portrait
                        ?
                        // view potrait
                        ListDestinationHomePotrait(
                            data: data,
                          )
                        :
                        // view landscape
                        ListDestinationHomeLandscape(
                            data: data,
                            index: index,
                          ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
