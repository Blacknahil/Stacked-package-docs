class EpochServiceService {
  Stream<int> epochUpdatesNumbers() async* {
    while (true) {
      Future.delayed(const Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
