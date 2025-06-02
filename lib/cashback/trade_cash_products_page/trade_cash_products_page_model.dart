import '/cashback/components/cupons_items_cash_h/cupons_items_cash_h_widget.dart';
import '/cashback/components/cupons_items_cash_v/cupons_items_cash_v_widget.dart';
import '/cashback/components/products_items_cash_h/products_items_cash_h_widget.dart';
import '/cashback/components/products_items_cash_v/products_items_cash_v_widget.dart';
import '/cashback/components/search_default/search_default_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'trade_cash_products_page_widget.dart' show TradeCashProductsPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TradeCashProductsPageModel
    extends FlutterFlowModel<TradeCashProductsPageWidget> {
  ///  Local state fields for this page.

  String selectedFilter = 'todos';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for searchDefault component.
  late SearchDefaultModel searchDefaultModel;

  @override
  void initState(BuildContext context) {
    searchDefaultModel = createModel(context, () => SearchDefaultModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    searchDefaultModel.dispose();
  }
}
