import '/components/button_component/button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for buttonComponent component.
  late ButtonComponentModel buttonComponentModel;

  @override
  void initState(BuildContext context) {
    buttonComponentModel = createModel(context, () => ButtonComponentModel());
  }

  @override
  void dispose() {
    buttonComponentModel.dispose();
  }
}
