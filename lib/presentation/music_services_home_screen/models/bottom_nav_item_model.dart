/// This class is used in the [bottom_nav_item_widget] widget.
class BottomNavItemModel {
  String? iconPath;
  String? label;
  bool? isActive;

  BottomNavItemModel({this.iconPath, this.label, this.isActive}) {
    iconPath = iconPath ?? '';
    label = label ?? '';
    isActive = isActive ?? false;
  }
}
