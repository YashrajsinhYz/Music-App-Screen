# 🎵 Music Services Module – Flutter Mini Project

This Flutter project is a submission for the “Music Services Module” assignment, which replicates the **Home Screen** of the S.Rocks.Music app. The app is connected to **Firebase Firestore** and follows a clean architecture using **Provider** for state management.

> 🔗 [GitHub Repository](https://github.com/YashrajsinhYz/Music-App-Screen)

---

## 📱 Demo

▶️ **Watch Demo Video on YouTube**:  
[![Watch Demo](https://img.youtube.com/vi/10iejjZGKXY/0.jpg)](https://youtu.be/10iejjZGKXY)

---

## 🎯 Objective

- Recreate the UI from the provided Figma design.
- Load service data dynamically from **Firebase Firestore**.
- Handle navigation and state management using **Provider**.
- Follow a clean, scalable architecture.

---

## 📁 Folder Structure Overview

```plaintext
lib/
├── core/
│   └── utils/
│       ├── app_export.dart            # Common exports for easy access
│       ├── image_constant.dart        # Asset path constants
│       ├── navigator_service.dart     # Global navigation
│       ├── pref_utils.dart            # Shared Preferences wrapper
│       └── size_utils.dart            # Device-specific sizing helpers
│
├── presentation/
│   ├── music_services_home_screen/
│   │   ├── models/
│   │   │   ├── bottom_nav_item_model.dart
│   │   │   ├── music_services_home_model.dart
│   │   │   └── service_card_model.dart
│   │   ├── provider/
│   │   │   └── music_services_home_provider.dart
│   │   ├── widgets/
│   │   │   ├── bottom_nav_item_widget.dart
│   │   │   ├── service_card_widget.dart
│   │   │   └── music_services_home_screen.dart
│   │
│   └── service_detail_screen/
│       ├── models/
│       │   └── service_detail_model.dart
│       ├── provider/
│       │   └── service_detail_provider.dart
│       └── service_detail_screen.dart
│
├── routes/
│   └── app_routes.dart                # Route declarations
│
├── theme/
│   ├── text_style_helper.dart         # Centralized text styles
│   └── theme_helper.dart              # ThemeData and colors
│
├── widgets/
│   └── custom_image_view.dart         # Wrapper for displaying images
│
├── firebase_options.dart              # Firebase config (auto-generated)
└── main.dart                          # App entry point
