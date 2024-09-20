import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'artists_viewmodel.dart';

class ArtistsView extends StackedView<ArtistsViewModel> {
  const ArtistsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ArtistsViewModel viewModel,
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
  ArtistsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArtistsViewModel();
}
