import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_page.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/travelimage.png'),
          fit: BoxFit.cover,
          opacity: 0.7,
        )
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enjoy',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'The Work!',
                  style: TextStyle(
                    color: Colors.lightBlue.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                ),
                ),
                SizedBox(height: 250),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                  style: TextStyle(
                    color: Colors.black38.withOpacity(0.7),
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomePage(),)
                    );
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),


                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}