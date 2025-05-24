import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './provider/service_detail_provider.dart';

class ServiceDetailScreen extends StatefulWidget {
  final String serviceName;

  const ServiceDetailScreen({super.key, required this.serviceName});

  static Widget builder(BuildContext context) {
    String serviceName = '';

    try {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is Map<String, dynamic> && args.containsKey('serviceName')) {
        serviceName = args['serviceName'] as String;
      }
    } catch (e) {
      debugPrint('Error parsing arguments: $e');
    }

    return ChangeNotifierProvider(
      create: (context) => ServiceDetailProvider()..setServiceName(serviceName),
      child: ServiceDetailScreen(serviceName: serviceName),
    );
  }

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1817,
        appBar: AppBar(
          backgroundColor: appTheme.colorFF2021,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: appTheme.whiteCustom,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Consumer<ServiceDetailProvider>(
      builder: (context, provider, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You tapped on : ",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                provider.serviceDetailModel.serviceName ?? '',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        );
      },
    );
  }
}
