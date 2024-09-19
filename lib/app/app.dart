import 'package:first_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:first_app/ui/transitions/shared_axis.dart';
import 'package:first_app/ui/views/home/home_view.dart';
import 'package:first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:first_app/ui/views/counter/counter_view.dart';
import 'package:first_app/ui/views/login/login_view.dart';
import 'package:first_app/services/authentication_service.dart';
import 'package:first_app/ui/views/text_reverse/text_reverse_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
    CustomRoute(
      page: LoginView,
      transitionsBuilder: CustomRouteTransition.SharedAxis,
    ),
    MaterialRoute(page: TextReverseView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
