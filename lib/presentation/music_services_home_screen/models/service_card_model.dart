// This class is used in the [service_card_widget] widget.

class ServiceCardModel {
  final String iconPath;
  final String title;
  final String description;
  final bool hasCustomBackground;

  ServiceCardModel({
    required this.iconPath,
    required this.title,
    required this.description,
    this.hasCustomBackground = true,
  });

  factory ServiceCardModel.fromFirestore(Map<String, dynamic> json) {
    return ServiceCardModel(
      iconPath: json['imagePath'] ?? '', // from Firestore
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
