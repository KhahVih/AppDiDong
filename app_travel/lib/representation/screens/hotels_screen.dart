
import 'package:app_travel/core/helpers/assets_helper.dart';
import 'package:app_travel/data/model/hotel_model.dart';
import 'package:app_travel/representation/screens/detail_hotel_screen.dart';
import 'package:app_travel/representation/widgets/app_bar_container.dart';
import 'package:app_travel/representation/widgets/item_hotel_widget.dart';
import 'package:flutter/material.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  static const String routeName = '/hotels_screen';

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.hotel1,
      hotelName: 'Royal Palm Heritage',
      location: 'Việt Nam',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel2,
      hotelName: 'Grand Luxury\'s',
      location: 'Việt Nam',
      awayKilometer: '2.3 km',
      star: 4.2,
      numberOfReview: 3241,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel3,
      hotelName: 'The Orlando House',
      location: 'Việt Nam',
      awayKilometer: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      implementTraling: true,
      titleString: 'Hotels',
      child: SingleChildScrollView(
        child: Column(
          children: listHotel
              .map(
                (e) => ItemHotelWidget(
              hotelModel: e,
              onTap: () {
                Navigator.of(context).pushNamed(DetailHotelScreen.routeName, arguments: e);
              },
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
