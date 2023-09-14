import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class MostVisitedDestinationPotrait extends StatelessWidget {
  MostVisitedDestinationPotrait({
    super.key,
    required this.index,
    required this.data,
  });
  int index;
  Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["destination_name"]!.toString(),
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
    );
  }
}

// ignore: must_be_immutable
class MostVisitedDestinationLandscape extends StatelessWidget {
  MostVisitedDestinationLandscape({
    super.key,
    required this.index,
    required this.data,
  });
  int index;
  Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.only(
        right: 5 == index + 1 ? 0 : 10.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              topRight: Radius.circular(15.r),
            ),
            child: Image(
              height: 150.h,
              width: 150.w,
              image: AssetImage(
                data["main_image"].toString(),
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["destination_name"]!.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 8.sp,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      data["description"]!.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 6.sp,
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
    );
  }
}
