import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/service_card_model.dart';

class ServiceCardWidget extends StatelessWidget {
  final ServiceCardModel model;
  final VoidCallback? onTap;
  final int index;

  const ServiceCardWidget({
    super.key,
    required this.model,
    this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2021,
          borderRadius: BorderRadius.circular(15.h),
          border: Border.all(color: appTheme.colorFF2C2D),
        ),
        child: Row(
          children: [
            Container(
              width: 47.h,
              height: 47.h,
              decoration: BoxDecoration(
                color: model.hasCustomBackground ? Color(0xFF2F2F39) : null,
                borderRadius: BorderRadius.circular(10.h),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: model.iconPath,
                  height: model.hasCustomBackground ? 30.h : 47.h,
                  width: model.hasCustomBackground ? 30.h : 47.h,
                ),
              ),
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title,
                    style: TextStyleHelper.instance.body15Bold,
                  ),
                  Text(
                    model.description,
                    style: TextStyleHelper.instance.body13.copyWith(
                      color: appTheme.whiteCustom.withAlpha(204),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 33.h,
              width: 33.h,
            ),
          ],
        ),
      ),
    );
  }
}
