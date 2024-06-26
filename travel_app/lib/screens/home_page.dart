import 'package:flutter/material.dart';
import 'package:travel_app/screens/post_screen.dart';
import 'package:travel_app/widgets/home_botton_bar.dart';
import 'package:travel_app/widgets/homeappbar.dart';
import 'package:travel_app/widgets/post_hcm.dart';
import 'package:travel_app/widgets/postcity/postdalat.dart';
import 'package:travel_app/widgets/postcity/posthoian.dart';
import 'package:travel_app/widgets/postcity/posthue.dart';
import 'package:travel_app/widgets/postcity/postphuquoc.dart';

class HomePage extends StatelessWidget{

  var category = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:PreferredSize(
       preferredSize: Size.fromHeight(90.0),
       child: HomeAppBar(),
     ),
     body: SafeArea(
       child: Padding(
         padding: EdgeInsets.symmetric(vertical: 30),
         child: SingleChildScrollView(
           child: Column(
             children: [
               Row(
                 children: [
                   Expanded(
                     child: Container(
                       height: 200,
                       child: ListView.builder(
                           itemCount: 6,
                           scrollDirection: Axis.horizontal,
                           shrinkWrap: true,
                           itemBuilder: (BuildContext context, int index){
                             return InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(
                                   builder: (context) => PostScreen(),)
                                 );
                               },
                               child: Container(
                                 width: 100,
                                 padding: EdgeInsets.all(20),
                                 margin: EdgeInsets.only(left: 15),
                                 decoration: BoxDecoration(
                                     color: Colors.black,
                                     borderRadius:  BorderRadius.circular(15),
                                     image: DecorationImage(
                                       //hanoi
                                       image: AssetImage('assets/city${index+1}.png'),
                                       fit: BoxFit.cover,
                                       opacity: 0.7,
                                     )
                                 ),
                                 child: Column(
                                   children: [
                                     Container(
                                       alignment: Alignment.topRight,
                                       child: Icon(
                                         Icons.bookmark_border_outlined,
                                         color: Colors.white,
                                         size: 30,
                                       ),
                                     ),
                                     Spacer(),
                                     Container(
                                       alignment: Alignment.bottomLeft,
                                       child: Text(
                                         'City ',
                                         style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 18,
                                           fontWeight: FontWeight.w600,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             );
                           }),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 20),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Padding(
                   padding: EdgeInsets.all(8),
                   child: Row(
                     children: [
                       for(int i = 0; i < 6; i++)
                          Container(
                           margin: EdgeInsets.symmetric(horizontal: 10),
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black26,
                                 blurRadius: 4,
                               ),
                             ],
                           ),
                           child: Text(
                             category[i],
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 15,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                         ),
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 10),
               ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 itemCount: 1,
                 shrinkWrap: true,
                 itemBuilder: (BuildContext context, int index){
                   return Padding(
                     padding: EdgeInsets.all(15),
                     child: Column(
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                                 builder: (context) => PostScreen(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city1.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                             padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                   'Hà Nội',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                             ),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) => PostHCM(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city2.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Hồ Chí Minh',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) => PostHue(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city3.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Huế',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) => PostDaLat(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city4.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Đà Lạt',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) => PostHoiAn(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city5.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Hội An',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(
                               builder: (context) => PostPhuQuoc(),)
                             );
                           },
                           child: Container(
                             height: 200,
                             decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(15),
                                 image: DecorationImage(
                                   image: AssetImage('assets/city6.png'),
                                   fit: BoxFit.cover,
                                   opacity: 0.8,
                                 )
                             ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'Phú Quốc',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                               Icon(Icons.more_vert, size: 30),
                             ],
                           ),
                         ),
                         SizedBox(height: 5),
                         Row(
                           children: [
                             Icon(
                               Icons.star,
                               color: Colors.amber,
                               size: 20,
                             ),
                             Text(
                               '4.5',
                               style: TextStyle(
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   );
                 },
               ),
             ],
           ),
         ),
       ),
     ),
     bottomNavigationBar: HomeBottomBar(),
   );
  }

}