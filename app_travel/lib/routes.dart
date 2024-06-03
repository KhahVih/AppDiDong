import 'package:app_travel/data/model/hotel_model.dart';
import 'package:app_travel/data/model/room_model.dart';
import 'package:app_travel/representation/screens/check_out_screen.dart';
import 'package:app_travel/representation/screens/detail_hotel_screen.dart';
import 'package:app_travel/representation/screens/flights_booking_screen.dart';
import 'package:app_travel/representation/screens/guest_and_room_screen.dart';
import 'package:app_travel/representation/screens/home_screen.dart';
import 'package:app_travel/representation/screens/hotel_booking_screen.dart';
import 'package:app_travel/representation/screens/hotels_screen.dart';
import 'package:app_travel/representation/screens/intro_screen.dart';
import 'package:app_travel/representation/screens/main_app.dart';
import 'package:app_travel/representation/screens/rooms_screen.dart';
import 'package:app_travel/representation/screens/select_date_screen.dart';
import 'package:flutter/material.dart';
final Map<String, WidgetBuilder> routes = {
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => MainApp(),
  HotelsScreen.routeName: (context) => HotelsScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomScreen.routeName: (context) => GuestAndRoomScreen(),
  RoomsScreen.routeName: (context) => RoomsScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
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
