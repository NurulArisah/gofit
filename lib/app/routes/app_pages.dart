import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/auth/views/login_view.dart';

class AppPages {
  static const INITIAL = '/login';
  static final routes = [
    GetPage(name: '/home', page: () => HomeView()),
    GetPage(name: '/login', page: () => LoginView()),
  ];
}
