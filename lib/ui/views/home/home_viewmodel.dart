import 'package:first_app/app/app.bottomsheets.dart';
import 'package:first_app/app/app.dialogs.dart';
import 'package:first_app/app/app.locator.dart';
import 'package:first_app/app/app.router.dart';
import 'package:first_app/ui/common/app_strings.dart';
import 'package:first_app/ui/views/login/login_view.dart';
import 'package:first_app/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void navigateToLoginPage() {
    _navigationService.replaceWith(Routes.loginView);
  }
}
