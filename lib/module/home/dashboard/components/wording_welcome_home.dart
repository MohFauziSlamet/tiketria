import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiketria/constant/icon/image_icon.dart';

class WordingHomeWellcomePotrait extends StatelessWidget {
  const WordingHomeWellcomePotrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class WordingHomeWellcomeLandscape extends StatelessWidget {
  const WordingHomeWellcomeLandscape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 20.h,
      ),
      child: SizedBox(
        height: 50.h,
        child: Row(
          children: [
            /// icon app
            Container(
              height: 50.h,
              width: 50.h,
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 2.w,
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

            /// wording wellcome
            Text(
              'Selamat Datang di Tiketria',
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 10.w,
            ),

            /// icon lonceng
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
    );
  }
}
