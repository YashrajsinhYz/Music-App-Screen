import 'package:flutter/material.dart';
import '../models/service_detail_model.dart';

class ServiceDetailProvider extends ChangeNotifier {
  ServiceDetailModel serviceDetailModel = ServiceDetailModel();

  void setServiceName(String name) {
    serviceDetailModel.serviceName = name;
    notifyListeners();
  }
}