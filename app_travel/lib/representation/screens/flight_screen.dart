import 'package:app_travel/core/helpers/assets_helper.dart';
import 'package:app_travel/data/model/flight_model.dart';
import 'package:app_travel/representation/screens/book_ticket.dart';
import 'package:app_travel/representation/screens/main_app.dart';
import 'package:app_travel/representation/widgets/app_bar_container.dart';
import 'package:app_travel/representation/widgets/item_flight_widget.dart';
import 'package:flutter/material.dart';

class FlightsScreen extends StatefulWidget {
  const FlightsScreen({Key? key}) : super(key: key);

  static const String routeName = '/flight_screen';

  @override
  State<FlightsScreen> createState() => _FlightsScreenState();
}

class _FlightsScreenState extends State<FlightsScreen>{

final List<FlightModel> listFlight = [
  FlightModel(
    hotelImage: AssetHelper.Flight1,
    hotelName: 'Vietnam Airlines (VNA)',
    location: 'Việt Nam',
    price: 200,
  ),
  FlightModel(
    hotelImage: AssetHelper.Flight2,
    hotelName: 'Vietjet Air (VJ)',
    location: 'Việt Nam',
    price: 150,
  ),
];

  @override
  Widget build(BuildContext context) {
    return AppBarContainer(
      implementTraling: true,
      titleString: 'Flights',
      child: SingleChildScrollView(
        child: Column(
          children: listFlight
              .map(
                (e) => ItemFlightWidget(
              flightModel: e,
              onTap: () {
                Navigator.of(context).pushNamed(BookTicket.routeName);
              },
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}