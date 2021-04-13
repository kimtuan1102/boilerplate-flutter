import 'package:boilerplate_flutter/core/enums/viewstate.dart';
import 'package:flutter/cupertino.dart';

class BaseModel extends ChangeNotifier{
  ViewState _state;
  ViewState get state => _state;

  setState(ViewState newState) {
    _state = newState;
  }
  @override
  void notifyListeners();
}