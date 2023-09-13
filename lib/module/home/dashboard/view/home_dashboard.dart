import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiketria/constant/background/image_background.dart';
import 'package:tiketria/constant/icon/image_icon.dart';
import 'package:tiketria/data/dashboard_data.dart';
import 'package:tiketria/module/home/detail_destination/view/detail_destination.dart';
// import 'package:tiketria/constant/image_cons/destination_city_malang/beach/malang_beach_image_cons.dart';
// import 'package:tiketria/module/home/detail_destination/view/detail_destination.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              ImageBackgroundCons.bgHome,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.white.withOpacity(0.1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),

            /// content
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 12.h),
                    child: SizedBox(
                      height: 32.h,
                      child: Row(
                        children: [
                          Container(
                            height: 32.h,
                            width: 32.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.h,
                              vertical: 4.w,
                            ),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              ImageIconsConstan.icApp,
                            ),
                          ),
                          SizedBox(
                            width: 14.h,
                          ),
                          Text(
                            'Selamat Datang di Tiketria',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 10.w,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// card
                  SizedBox(
                    height: 250.h,
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
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            margin: EdgeInsets.only(
                              right: 5 == index + 1 ? 0 : 20.w,
                            ),
                            child: Container(
                              width: 250.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.r),
                                      topRight: Radius.circular(15.r),
                                    ),
                                    child: Image(
                                      height: 150.h,
                                      width: 250.w,
                                      image: AssetImage(
                                        data["main_image"].toString(),
                                      ),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data["destination_name"]!
                                                .toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              data["description"]!.toString(),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 400.h),
              height: (MediaQuery.of(context).size.height * 0.7) -
                  MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                itemCount: DashboardData.destinationFav.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
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
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.asset(
                          data["main_image"].toString(),
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        data["destination_name"]!.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      subtitle: Text(
                        data["description"]!.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey,
                        ),
                      ),
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
