import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/bottom_nav_item_model.dart';
import '../models/music_services_home_model.dart';
import '../models/service_card_model.dart';

class MusicServicesHomeProvider extends ChangeNotifier {
  MusicServicesHomeModel musicServicesHomeModel = MusicServicesHomeModel();
  TextEditingController searchController = TextEditingController();

  List<ServiceCardModel> servicesList = [];
  List<BottomNavItemModel> bottomNavItems = [];

  void initialize() async {
    // Initialize bottom navigation items
    bottomNavItems = [
      BottomNavItemModel(
        iconPath: ImageConstant.imgSRocksMusicStudio21,
        label: 'Home',
        isActive: true,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.imgVector,
        label: 'News',
        isActive: false,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.imgMusic,
        label: 'TrackBox',
        isActive: false,
      ),
      BottomNavItemModel(
        iconPath: ImageConstant.imgUnion,
        label: 'Projects',
        isActive: false,
      ),
    ];

    // Initialize service cards
    try {
      final snapshot =
          await FirebaseFirestore.instance.collection('Music Cards').get();

      servicesList = snapshot.docs
          .map((doc) => ServiceCardModel.fromFirestore(doc.data()))
          .toList();

      notifyListeners();
    } catch (e) {
      debugPrint('Error fetching music cards: $e');
    }
  }

  void onSearchChanged(String value) {
    musicServicesHomeModel.searchText = value;
    notifyListeners();
  }

  void onBookNowPressed() {
    // Implement book now action
    // Could navigate to booking screen or show dialog
  }

  void onServiceCardTapped(int index) {
    // Navigate to service detail screen with the selected service name
    if (index >= 0 && index < servicesList.length) {
      final serviceName = servicesList[index].title;
      NavigatorService.pushNamed(
        AppRoutes.serviceDetailScreen,
        arguments: {'serviceName': serviceName},
      );
    }
  }

  void onBottomNavItemTapped(int index) {
    // Update active status of bottom nav items
    for (int i = 0; i < bottomNavItems.length; i++) {
      bottomNavItems[i].isActive = i == index;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
