import 'package:flutter/material.dart';

class PostBottomHCM extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2 ,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hồ Chí Minh, VN',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight:  FontWeight.w600,
                      ),
                    ),
                    // SizeBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  'Thành phố Hồ Chí Minh với lịch sử hình thành hơn 300 năm nên chứa đựng nhiều dấu ấn văn hoá - lịch sử'
                      ' hấp dẫn về hành trình gian nan mở cõi của người dân đất phương Nam. Ngày nay, thành phố bên bờ sông Sài Gòn với sự năng động, '
                      'trẻ trung hoà quyện với những yếu tố văn hoá – lịch sử truyền thống và đặc trưng sinh thái vùng đồng bằng sông Cửu Long đang là '
                      'điểm đến hấp dẫn dành cho du khách trong và ngoài nước.',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/city2.png',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/hcm/hcm1.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 90,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/hcm/hcm2.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.4,
                            )
                        ),
                        child: Text(
                          '10+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ]
                        ),
                        child: Icon(
                            Icons.bookmark_outline, size: 40),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}