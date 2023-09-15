// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:tiketria/module/home/detail_destination/components/orientation_detail_destination.dart';

// ignore: must_be_immutable
class DetailDestination extends StatelessWidget {
  DetailDestination({
    Key? key,
    required this.data,
  }) : super(key: key);
  Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            data["destination_name"]!,
          )),
      body: currOrientation == Orientation.portrait
          ? DetailDestinationPotrait(data: data)
          : DetailDestinationLandscape(data: data),
    );
  }
}
