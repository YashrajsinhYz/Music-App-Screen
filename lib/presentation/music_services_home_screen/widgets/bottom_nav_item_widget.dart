import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bottom_nav_item_model.dart';

class BottomNavItemWidget extends StatelessWidget {
  final BottomNavItemModel model;
  final VoidCallback? onTap;

  const BottomNavItemWidget({super.key, required this.model, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: model.iconPath ?? '',
                      height: 25.h,
                      width: 25.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      model.label ?? '',
                      style: TextStyleHelper.instance.label11.copyWith(
                        color:
                            (model.isActive ?? false)
                                ? appTheme.whiteCustom
                                : appTheme.colorFF6161,
                      ),
                    ),
                  ],
                ),
              ),
              if (model.isActive ?? false)
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse162,
                  height: 7.h,
                  width: 14.h,
                  color: Colors.white,
                ),
            ],
          ),
        ],
      ),
    );
  }
}