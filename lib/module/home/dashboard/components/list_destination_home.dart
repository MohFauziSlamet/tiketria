// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiketria/data/dashboard_data.dart';

// ignore: must_be_immutable
class ListDestinationHomePotrait extends StatelessWidget {
  ListDestinationHomePotrait({super.key, required this.data});
  Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}

// ignore: must_be_immutable
class ListDestinationHomeLandscape extends StatelessWidget {
  ListDestinationHomeLandscape({
    super.key,
    required this.data,
    required this.index,
  });
  Map<String, dynamic> data;
  int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom:
                index == DashboardData.destinationFav.length - 1 ? 100.h : 0,
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              data["main_image"].toString(),
              width: 50.w,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            data["destination_name"]!.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
            ),
          ),
          subtitle: Text(
            data["description"]!.toString(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 8.sp,
              color: Colors.grey,
            ),
          ),
        ),
        if (index == DashboardData.destinationFav.length - 1)
          SizedBox(
            height: 50.h,
          )
      ],
    );
  }
}
