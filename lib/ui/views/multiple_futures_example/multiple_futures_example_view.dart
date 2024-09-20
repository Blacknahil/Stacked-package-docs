import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'multiple_futures_example_viewmodel.dart';

class MultipleFuturesExampleView
    extends StackedView<MultipleFuturesExampleViewModel> {
  const MultipleFuturesExampleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MultipleFuturesExampleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  MultipleFuturesExampleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MultipleFuturesExampleViewModel();
}
