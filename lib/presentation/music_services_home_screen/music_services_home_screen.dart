import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './provider/music_services_home_provider.dart';
import './widgets/bottom_nav_item_widget.dart';
import './widgets/service_card_widget.dart';

class MusicServicesHomeScreen extends StatefulWidget {
  const MusicServicesHomeScreen({super.key});

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MusicServicesHomeProvider()..initialize(),
      child: MusicServicesHomeScreen(),
    );
  }

  @override
  State<MusicServicesHomeScreen> createState() =>
      _MusicServicesHomeScreenState();
}

class _MusicServicesHomeScreenState extends State<MusicServicesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1817,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [_buildHeader(), _buildMainContent()]),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFA90140), Color(0xFF550120)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.h),
          bottomRight: Radius.circular(15.h),
        ),
      ),
      padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildSearchBar(), SizedBox(height: 25.h), _buildFreeDemo()],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Consumer<MusicServicesHomeProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            children: [
              Container(
                height: 44.h,
                width: 280.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2F2F,
                  borderRadius: BorderRadius.circular(10.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 20.h,
                      width: 20.h,
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: TextField(
                        controller: provider.searchController,
                        onChanged: provider.onSearchChanged,
                        style: TextStyleHelper.instance.body14Medium,
                        decoration: InputDecoration(
                          hintText: 'Search "Punjabi Lyrics"',
                          hintStyle: TextStyleHelper.instance.body14Medium,
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    Container(
                      height: 20.h,
                      width: 1.h,
                      color: appTheme.colorFF4545,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgMic,
                      height: 20.h,
                      width: 20.h,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 17.h),
              Container(
                width: 34.h,
                height: 34.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFEADD,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAvatarPlaceholder,
                    height: 21.h,
                    width: 23.h,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFreeDemo() {
    return Consumer<MusicServicesHomeProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Claim your',
                        style: TextStyleHelper.instance.title16Bold,
                      ),
                      Text(
                        'Free Demo',
                        style: TextStyleHelper.instance.display45Lobster
                            .copyWith(height: 1.27),
                      ),
                      Text(
                        'for custom Music Production',
                        style: TextStyleHelper.instance.title16,
                      ),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: provider.onBookNowPressed,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 12.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.whiteCustom,
                            borderRadius: BorderRadius.circular(30.h),
                          ),
                          child: Text(
                            'Book Now',
                            style: TextStyleHelper.instance.body13Bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.translate(
                offset: Offset(0, 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1,
                      fit: BoxFit.contain,
                      height: 120.h,
                      // width: 120.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1Pink800,
                      fit: BoxFit.contain,
                      height: 150.h,
                      // width: 180.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMainContent() {
    return Consumer<MusicServicesHomeProvider>(
      builder: (context, provider, child) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.h, 24.h, 20.h, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hire hand-picked Pros for popular music services',
                  style: TextStyleHelper.instance.body15,
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(bottom: 20.h),
                    itemCount: provider.servicesList.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 16.h),
                    itemBuilder: (context, index) {
                      return ServiceCardWidget(
                        model: provider.servicesList[index],
                        index: index,
                        onTap: () => provider.onServiceCardTapped(index),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigation() {
    return Consumer<MusicServicesHomeProvider>(
      builder: (context, provider, child) {
        return Container(
          height: 61.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1817,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.h),
              topRight: Radius.circular(10.h),
            ),
            border: Border(top: BorderSide(color: appTheme.colorFF2C2D)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              provider.bottomNavItems.length,
              (index) => BottomNavItemWidget(
                model: provider.bottomNavItems[index],
                onTap: () => provider.onBottomNavItemTapped(index),
              ),
            ),
          ),
        );
      },
    );
  }
}
