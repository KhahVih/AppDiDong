import 'package:flutter/material.dart';
import 'package:travel_app/widgets/bottom/bottom_hcm.dart';
import 'package:travel_app/widgets/post_app_bar.dart';

class PostHCM extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/city2.png'),
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
        bottomNavigationBar: PostBottomHCM(),
      ),
    );
  }

}