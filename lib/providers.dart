import 'package:boilerplate_flutter/core/services/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumerProvider
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: NavigationService())
];

List<SingleChildWidget> dependentServices = [];

List<SingleChildWidget> uiConsumerProvider = [];
