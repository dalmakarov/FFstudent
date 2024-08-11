import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'select_city_page_model.dart';
export 'select_city_page_model.dart';

class SelectCityPageWidget extends StatefulWidget {
  const SelectCityPageWidget({super.key});

  @override
  State<SelectCityPageWidget> createState() => _SelectCityPageWidgetState();
}

class _SelectCityPageWidgetState extends State<SelectCityPageWidget> {
  late SelectCityPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectCityPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          body: const SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
