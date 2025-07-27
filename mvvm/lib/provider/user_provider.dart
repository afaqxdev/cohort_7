import 'package:flutter/widgets.dart';
import 'package:mvvm/serives/api_services.dart';

class UserProvider with ChangeNotifier {
  List<String> users = [];

  bool isloading = true;
  ApiServices apiServices = ApiServices();
  void getUserData() async {
    isloading = true;
    notifyListeners();
    users = await apiServices.getUsers();
    isloading = false;
    notifyListeners();
  }
}
