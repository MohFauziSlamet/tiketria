// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiketria/shared/show_image.dart';

// ignore: must_be_immutable
class DetailDestination extends StatefulWidget {
  DetailDestination({
    Key? key,
    required this.data,
  }) : super(key: key);
  Map<String, dynamic> data;

  @override
  State<DetailDestination> createState() => _DetailDestinationState();
}

class _DetailDestinationState extends State<DetailDestination> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.data["destination_name"]!,
          )),
      body: currOrientation == Orientation.portrait
          ? DetailDestinationPotrait(data: widget.data)
          : DetailDestinationLandscape(data: widget.data),
    );
  }
}

// ignore: must_be_immutable
class DetailDestinationPotrait extends StatefulWidget {
  DetailDestinationPotrait({super.key, required this.data});

  Map<String, dynamic> data;

  @override
  State<DetailDestinationPotrait> createState() =>
      _DetailDestinationPotraitState();
}

class _DetailDestinationPotraitState extends State<DetailDestinationPotrait> {
  bool isLike = false;
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) {
                      return ImagePreview(
                        img: widget.data["main_image"]!.toString(),
                        titlePage: widget.data["destination_name"]!,
                      );
                    },
                  ),
                );
              },
              child: Image(
                image: AssetImage(
                  widget.data["main_image"]!.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        widget.data["destination_name"]!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        isLike = !isLike;
                        setState(() {});
                      },
                      icon: Icon(
                        isLike ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                        size: 24.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        isBookmark = !isBookmark;
                        setState(() {});
                      },
                      icon: Icon(
                        isBookmark ? Icons.bookmark : Icons.bookmark_border,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.data["description"]!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Alamat :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.data["address_destination"]!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data["time_open"]!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Text(
                        "Harga tiket masuk : ${widget.data["ticket_price"]!}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DetailDestinationLandscape extends StatefulWidget {
  DetailDestinationLandscape({super.key, required this.data});

  Map<String, dynamic> data;

  @override
  State<DetailDestinationLandscape> createState() =>
      _DetailDestinationLandscapeState();
}

class _DetailDestinationLandscapeState
    extends State<DetailDestinationLandscape> {
  bool isLike = false;
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 400.h,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) {
                      return ImagePreview(
                        img: widget.data["main_image"]!.toString(),
                        titlePage: widget.data["destination_name"]!,
                      );
                    },
                  ),
                );
              },
              child: Image(
                image: AssetImage(
                  widget.data["main_image"]!.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.data["destination_name"]!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        isLike = !isLike;
                        setState(() {});
                      },
                      icon: Icon(
                        isLike ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                        size: 24.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        isBookmark = !isBookmark;
                        setState(() {});
                      },
                      icon: Icon(
                        isBookmark ? Icons.bookmark : Icons.bookmark_border,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.data["description"]!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Alamat :",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.data["address_destination"]!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data["time_open"]!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Text(
                        "Harga tiket masuk : ${widget.data["ticket_price"]!}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
