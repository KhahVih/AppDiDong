
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom/bottom_dalat.dart';
import 'package:travel_app/widgets/post_app_bar.dart';
import 'package:travel_app/widgets/post_bottom_bar.dart';

class PostDaLat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/dalat/dalat3.jpg'),
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
        bottomNavigationBar: PostBottomDaLat(),
      ),
    );
  }

}