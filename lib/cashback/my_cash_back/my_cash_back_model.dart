import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/cashback/components/balance_cashback/balance_cashback_widget.dart';
import '/cashback/components/foot_divider/foot_divider_widget.dart';
import '/cashback/components/terms_and_help_cash/terms_and_help_cash_widget.dart';
import '/cashback/components/trade_cash_for_azul_points/trade_cash_for_azul_points_widget.dart';
import '/cashback/components/trade_cash_for_products/trade_cash_for_products_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'my_cash_back_widget.dart' show MyCashBackWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCashBackModel extends FlutterFlowModel<MyCashBackWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for balanceCashback component.
  late BalanceCashbackModel balanceCashbackModel;
  // Model for tradeCashForProducts component.
  late TradeCashForProductsModel tradeCashForProductsModel;
  // Model for tradeCashForAzulPoints component.
  late TradeCashForAzulPointsModel tradeCashForAzulPointsModel;
  // Model for termsAndHelpCash component.
  late TermsAndHelpCashModel termsAndHelpCashModel;
  // Model for footDivider component.
  late FootDividerModel footDividerModel;

  @override
  void initState(BuildContext context) {
    balanceCashbackModel = createModel(context, () => BalanceCashbackModel());
    tradeCashForProductsModel =
        createModel(context, () => TradeCashForProductsModel());
    tradeCashForAzulPointsModel =
        createModel(context, () => TradeCashForAzulPointsModel());
    termsAndHelpCashModel = createModel(context, () => TermsAndHelpCashModel());
    footDividerModel = createModel(context, () => FootDividerModel());
  }

  @override
  void dispose() {
    balanceCashbackModel.dispose();
    tradeCashForProductsModel.dispose();
    tradeCashForAzulPointsModel.dispose();
    termsAndHelpCashModel.dispose();
    footDividerModel.dispose();
  }
}
