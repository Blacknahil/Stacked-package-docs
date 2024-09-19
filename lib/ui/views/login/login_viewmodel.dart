import 'package:first_app/app/app.locator.dart';
import 'package:first_app/app/app.router.dart';
import 'package:first_app/ui/transitions/shared_axis.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationServices = locator<NavigationService>();

  void navigateToHomePage() async {
    await _navigationServices.navigateTo(
      Routes.homeView,
      transition: CustomRouteTransition.SharedAxis,
    );
  }
}
