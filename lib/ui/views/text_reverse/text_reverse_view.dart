import 'package:first_app/ui/views/text_reverse/text_reverse_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'text_reverse_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: "reverseInput"),
  ],
)
class TextReverseView extends StackedView<TextReverseViewModel>
    with $TextReverseView {
  @override
  Widget builder(
    BuildContext context,
    TextReverseViewModel viewModel,
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
  TextReverseViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextReverseViewModel();
}
