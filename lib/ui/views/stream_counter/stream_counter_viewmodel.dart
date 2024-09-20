import 'package:first_app/app/app.locator.dart';
import 'package:first_app/services/epoch_service_service.dart';
import 'package:stacked/stacked.dart';

class StreamCounterViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in seconds $data';
  @override
  Stream<int> get stream =>
      locator<EpochServiceService>().epochUpdatesNumbers();
}
