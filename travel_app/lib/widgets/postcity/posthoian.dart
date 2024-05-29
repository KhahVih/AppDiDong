
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom/bottom_hoian.dart';
import 'package:travel_app/widgets/post_app_bar.dart';
import 'package:travel_app/widgets/post_bottom_bar.dart';

class PostHoiAn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hoian/hoian1.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomHoiAn(),
      ),
    );
  }

}