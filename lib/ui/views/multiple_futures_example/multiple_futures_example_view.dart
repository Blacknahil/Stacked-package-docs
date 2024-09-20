import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'multiple_futures_example_viewmodel.dart';

class MultipleFuturesExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MultipleFuturesExampleViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
          body: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: viewModel.fetchingNumber
                ? const CircularProgressIndicator()
                : Text(
                    viewModel.fetchedNumber.toString(),
                  ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: viewModel.fetchingString
                ? const CircularProgressIndicator()
                : Text(
                    viewModel.fetchedString,
                  ),
          )
        ],
      )),
      viewModelBuilder: () => MultipleFuturesExampleViewModel(),
    );
  }
}
