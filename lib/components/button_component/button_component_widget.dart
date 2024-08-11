import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'button_component_model.dart';
export 'button_component_model.dart';

class ButtonComponentWidget extends StatefulWidget {
  const ButtonComponentWidget({
    super.key,
    String? buttonText,
    double? fontSize,
    Color? colour,
    Color? textColour,
    required this.onTap,
  })  : buttonText = buttonText ?? '<Btext>',
        fontSize = fontSize ?? 10.0,
        colour = colour ?? const Color(0xFFFB6D3A),
        textColour = textColour ?? Colors.white;

  final String buttonText;
  final double fontSize;
  final Color colour;
  final Color textColour;
  final Future Function()? onTap;

  @override
  State<ButtonComponentWidget> createState() => _ButtonComponentWidgetState();
}

class _ButtonComponentWidgetState extends State<ButtonComponentWidget> {
  late ButtonComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: FFButtonWidget(
          onPressed: () async {
            unawaited(
              () async {
                await widget.onTap?.call();
              }(),
            );
          },
          text: widget.buttonText,
          options: FFButtonOptions(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.08,
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 8.0),
            color: FFAppConstants.activeButtonColour,
            textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Gilroy',
                  color: FFAppConstants.buttonTextColour,
                  fontSize: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return FFAppConstants.buttonFontSmall;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return FFAppConstants.buttonFontMedium;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return FFAppConstants.buttonFontBig;
                    } else {
                      return FFAppConstants.buttonFontSmall;
                    }
                  }(),
                  letterSpacing: 1.0,
                  useGoogleFonts: false,
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
