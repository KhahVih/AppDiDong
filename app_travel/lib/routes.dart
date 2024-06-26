import 'package:app_travel/data/model/hotel_model.dart';
import 'package:app_travel/data/model/room_model.dart';
import 'package:app_travel/representation/screens/all_screen.dart';
import 'package:app_travel/representation/screens/book_ticket.dart';
import 'package:app_travel/representation/screens/check_out_screen.dart';
import 'package:app_travel/representation/screens/detail_hotel_screen.dart';
import 'package:app_travel/representation/screens/flight_screen.dart';
import 'package:app_travel/representation/screens/flights_booking_screen.dart';
import 'package:app_travel/representation/screens/guest_and_room_screen.dart';
import 'package:app_travel/representation/screens/home_screen.dart';
import 'package:app_travel/representation/screens/hotel_booking_screen.dart';
import 'package:app_travel/representation/screens/hotels_screen.dart';
import 'package:app_travel/login.dart';
import 'package:app_travel/representation/screens/main_app.dart';
import 'package:app_travel/representation/screens/rooms_screen.dart';
import 'package:app_travel/representation/screens/select_date_screen.dart';
import 'package:app_travel/representation/screens/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
final Map<String, WidgetBuilder> routes = {
  MainApp.routeName: (context) => MainApp(),
  HotelsScreen.routeName: (context) => HotelsScreen(),
  FlightsScreen.routeName: (context) => FlightsScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => GuestAndRoomScreen(),
  Ticket.routeName: (context) => Ticket(),
  RoomsScreen.routeName: (context) => RoomsScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AllScreen.routeName: (context) => AllScreen(),
  BookTicket.routeName: (context) => BookTicket(),
  LoginScreen.routeName: (context) => LoginScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DetailHotelScreen.routeName:
      final HotelModel hotelModel = (settings.arguments as HotelModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DetailHotelScreen(
          hotelModel: hotelModel,
        ),
      );
    case CheckOutScreen.routeName:
      final RoomModel roomModel = (settings.arguments as RoomModel);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => CheckOutScreen(
          roomModel: roomModel,
        ),
      );

    case HotelBookingScreen.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => HotelBookingScreen(
          destination: destination,
        ),
      );
    case FlightsBookingScreen.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => FlightsBookingScreen(
          destination: destination,
        ),
      );
    default:
      return null;
  }
}
