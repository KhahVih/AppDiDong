import 'package:app_travel/core/helpers/assets_helper.dart';
import 'package:app_travel/data/model/hotel_model.dart';
import 'package:app_travel/representation/screens/detail_hotel_screen.dart';
import 'package:app_travel/representation/widgets/container_booking.dart';
import 'package:app_travel/representation/widgets/item_booking_widget.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget{
  const Booking({Key? key}): super(key: key);

  static const routeName = '/booking_screen';

  @override
  State<Booking> createState() => _BookingState();
}
class _BookingState extends  State<Booking>{

  final booking = [
    HotelModel(
      hotelImage: AssetHelper.hotel1,
      hotelName: 'Royal Palm Heritage',
      location: 'Việt Nam',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  ContainerBooking(
      implementTraling: true,
      titleString: 'Booking',
      child: SingleChildScrollView(
        child: Column(
          children: booking
              .map(
                (e) => ItemBookingWidget(
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