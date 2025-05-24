import 'package:flutter/material.dart';

import '../presentation/music_services_home_screen/music_services_home_screen.dart';
import '../presentation/service_detail_screen/service_detail_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String serviceDetailScreen = '/service-detail-screen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: MusicServicesHomeScreen.builder,
        serviceDetailScreen: ServiceDetailScreen.builder,
      };
}
