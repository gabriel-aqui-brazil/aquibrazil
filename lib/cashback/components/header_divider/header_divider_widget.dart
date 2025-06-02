import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_divider_model.dart';
export 'header_divider_model.dart';

class HeaderDividerWidget extends StatefulWidget {
  const HeaderDividerWidget({super.key});

  @override
  State<HeaderDividerWidget> createState() => _HeaderDividerWidgetState();
}

class _HeaderDividerWidgetState extends State<HeaderDividerWidget> {
  late HeaderDividerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderDividerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.0,
      height: 4.0,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(800.0),
      ),
    );
  }
}
