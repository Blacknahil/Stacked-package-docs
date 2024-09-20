import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'stream_counter_viewmodel.dart';

class StreamCounterView extends StackedView<StreamCounterViewModel> {
  const StreamCounterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StreamCounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Text(viewModel.title),
      ),
    );
  }

  @override
  StreamCounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StreamCounterViewModel();
}
