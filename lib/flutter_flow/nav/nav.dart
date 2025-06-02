import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/main.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  AquiBrazilAuthUser? initialUser;
  AquiBrazilAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(AquiBrazilAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
          routes: [
            FFRoute(
              name: FavoriteCompanyWidget.routeName,
              path: FavoriteCompanyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'favoriteCompany')
                  : FavoriteCompanyWidget(),
            ),
            FFRoute(
              name: Temp8ConfirmWidget.routeName,
              path: Temp8ConfirmWidget.routePath,
              requireAuth: true,
              builder: (context, params) => Temp8ConfirmWidget(
                orderID: params.getParam(
                  'orderID',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SignupStep1Widget.routeName,
              path: SignupStep1Widget.routePath,
              builder: (context, params) => SignupStep1Widget(),
            ),
            FFRoute(
              name: SignupStep5Widget.routeName,
              path: SignupStep5Widget.routePath,
              builder: (context, params) => SignupStep5Widget(),
            ),
            FFRoute(
              name: ResetPasswordStep1Widget.routeName,
              path: ResetPasswordStep1Widget.routePath,
              builder: (context, params) => ResetPasswordStep1Widget(),
            ),
            FFRoute(
              name: ResetPasswordStep3Widget.routeName,
              path: ResetPasswordStep3Widget.routePath,
              builder: (context, params) => ResetPasswordStep3Widget(
                token: params.getParam(
                  'token',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SignupStep6Widget.routeName,
              path: SignupStep6Widget.routePath,
              builder: (context, params) => SignupStep6Widget(),
            ),
            FFRoute(
              name: PartnersWidget.routeName,
              path: PartnersWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'partners')
                  : PartnersWidget(),
            ),
            FFRoute(
              name: PaymentMethodWidget.routeName,
              path: PaymentMethodWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PaymentMethodWidget(),
            ),
            FFRoute(
              name: AccountDataWidget.routeName,
              path: AccountDataWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AccountDataWidget(),
            ),
            FFRoute(
              name: InfoEditWidget.routeName,
              path: InfoEditWidget.routePath,
              requireAuth: true,
              builder: (context, params) => InfoEditWidget(),
            ),
            FFRoute(
              name: AccessInfoWidget.routeName,
              path: AccessInfoWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AccessInfoWidget(),
            ),
            FFRoute(
              name: EmailEditWidget.routeName,
              path: EmailEditWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EmailEditWidget(),
            ),
            FFRoute(
              name: LanguageWidget.routeName,
              path: LanguageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LanguageWidget(),
            ),
            FFRoute(
              name: SecurityWidget.routeName,
              path: SecurityWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SecurityWidget(),
            ),
            FFRoute(
              name: OrderHistoryWidget.routeName,
              path: OrderHistoryWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'orderHistory')
                  : OrderHistoryWidget(),
            ),
            FFRoute(
              name: SignupStep2Widget.routeName,
              path: SignupStep2Widget.routePath,
              builder: (context, params) => SignupStep2Widget(),
            ),
            FFRoute(
              name: NotificationsAndMessageWidget.routeName,
              path: NotificationsAndMessageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NotificationsAndMessageWidget(),
            ),
            FFRoute(
              name: ResetPasswordStep2Widget.routeName,
              path: ResetPasswordStep2Widget.routePath,
              builder: (context, params) => ResetPasswordStep2Widget(
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SignupStep4Widget.routeName,
              path: SignupStep4Widget.routePath,
              builder: (context, params) => SignupStep4Widget(
                messageSource: params.getParam(
                  'messageSource',
                  ParamType.String,
                ),
                phone: params.getParam(
                  'phone',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PartnerWidget.routeName,
              path: PartnerWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PartnerWidget(
                partnerDetails: params.getParam(
                  'partnerDetails',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: aquibrazil_library_oi8i5r_data_schema
                      .CompanyPartnerStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: RentalAutomotiveWidget.routeName,
              path: RentalAutomotiveWidget.routePath,
              requireAuth: true,
              builder: (context, params) => RentalAutomotiveWidget(
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: CompanyStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: RentalAutomotiveScheduleWidget.routeName,
              path: RentalAutomotiveScheduleWidget.routePath,
              requireAuth: true,
              builder: (context, params) => RentalAutomotiveScheduleWidget(
                product: params.getParam(
                  'product',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: BaseProductStruct.fromSerializableMap,
                ),
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: CompanyStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: RentalHouseScheduleWidget.routeName,
              path: RentalHouseScheduleWidget.routePath,
              requireAuth: true,
              builder: (context, params) => RentalHouseScheduleWidget(
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: CompanyStruct.fromSerializableMap,
                ),
                property: params.getParam(
                  'property',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: BaseProductStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: SettingsWidget.routeName,
              path: SettingsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: NotificationManageWidget.routeName,
              path: NotificationManageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NotificationManageWidget(),
            ),
            FFRoute(
              name: AboutVersionWidget.routeName,
              path: AboutVersionWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AboutVersionWidget(),
            ),
            FFRoute(
              name: AddressDeliveryWidget.routeName,
              path: AddressDeliveryWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddressDeliveryWidget(),
            ),
            FFRoute(
              name: Step1Widget.routeName,
              path: Step1Widget.routePath,
              requireAuth: true,
              builder: (context, params) => Step1Widget(),
            ),
            FFRoute(
              name: Step2Widget.routeName,
              path: Step2Widget.routePath,
              requireAuth: true,
              builder: (context, params) => Step2Widget(),
            ),
            FFRoute(
              name: Step3Widget.routeName,
              path: Step3Widget.routePath,
              requireAuth: true,
              builder: (context, params) => Step3Widget(),
            ),
            FFRoute(
              name: TermsWidget.routeName,
              path: TermsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TermsWidget(),
            ),
            FFRoute(
              name: PolicyAzulWidget.routeName,
              path: PolicyAzulWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PolicyAzulWidget(),
            ),
            FFRoute(
              name: FaqWidget.routeName,
              path: FaqWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FaqWidget(),
            ),
            FFRoute(
              name: FaqAnswerWidget.routeName,
              path: FaqAnswerWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FaqAnswerWidget(
                faq: params.getParam(
                  'faq',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: FaqStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: FaqAnswerViewWidget.routeName,
              path: FaqAnswerViewWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FaqAnswerViewWidget(
                faqAnswer: params.getParam(
                  'faqAnswer',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: FaqAnswerStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: PagamentosWidget.routeName,
              path: PagamentosWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PagamentosWidget(),
            ),
            FFRoute(
              name: HistoricoDePagamentoWidget.routeName,
              path: HistoricoDePagamentoWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HistoricoDePagamentoWidget(),
            ),
            FFRoute(
              name: AddressDeliveryMapWidget.routeName,
              path: AddressDeliveryMapWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddressDeliveryMapWidget(
                selectedPrediction: params.getParam(
                  'selectedPrediction',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: PredictionsStruct.fromSerializableMap,
                ),
                location: params.getParam(
                  'location',
                  ParamType.LatLng,
                ),
                edit: params.getParam(
                  'edit',
                  ParamType.bool,
                ),
                addressSelected: params.getParam(
                  'addressSelected',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: AddressStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: PagOffAnuncioWidget.routeName,
              path: PagOffAnuncioWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PagOffAnuncioWidget(),
            ),
            FFRoute(
              name: EditPhoneWidget.routeName,
              path: EditPhoneWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditPhoneWidget(),
            ),
            FFRoute(
              name: AddressDeliveryAddEditWidget.routeName,
              path: AddressDeliveryAddEditWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddressDeliveryAddEditWidget(
                position: params.getParam(
                  'position',
                  ParamType.LatLng,
                ),
                address: params.getParam(
                  'address',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: AddressStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: MensagemHomeNoMensageWidget.routeName,
              path: MensagemHomeNoMensageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MensagemHomeNoMensageWidget(),
            ),
            FFRoute(
              name: ChatWidget.routeName,
              path: ChatWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ChatWidget(
                chatId: params.getParam(
                  'chatId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ExtractCashBackWidget.routeName,
              path: ExtractCashBackWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ExtractCashBackWidget(),
            ),
            FFRoute(
              name: TradeCashProductsPageWidget.routeName,
              path: TradeCashProductsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TradeCashProductsPageWidget(),
            ),
            FFRoute(
              name: VoeAzulSignupWidget.routeName,
              path: VoeAzulSignupWidget.routePath,
              requireAuth: true,
              builder: (context, params) => VoeAzulSignupWidget(),
            ),
            FFRoute(
              name: ProductDetailsWidget.routeName,
              path: ProductDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ProductDetailsWidget(),
            ),
            FFRoute(
              name: RentalHouseWidget.routeName,
              path: RentalHouseWidget.routePath,
              requireAuth: true,
              builder: (context, params) => RentalHouseWidget(
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: CompanyStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: MembershipManageWidget.routeName,
              path: MembershipManageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipManageWidget(),
            ),
            FFRoute(
              name: MembershipCancelWidget.routeName,
              path: MembershipCancelWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipCancelWidget(
                membership: params.getParam(
                  'membership',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: MembershipStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: MembershipWidget.routeName,
              path: MembershipWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipWidget(),
            ),
            FFRoute(
              name: FilterCompanyWidget.routeName,
              path: FilterCompanyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: FilterCompanyWidget(
                  category: params.getParam(
                    'category',
                    ParamType.DataStruct,
                    isList: false,
                    structBuilder: aquibrazil_library_oi8i5r_data_schema
                        .CategoryStruct.fromSerializableMap,
                  ),
                ),
              ),
            ),
            FFRoute(
              name: MembershipTermsWidget.routeName,
              path: MembershipTermsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipTermsWidget(),
            ),
            FFRoute(
              name: ConfirmPhoneWidget.routeName,
              path: ConfirmPhoneWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ConfirmPhoneWidget(
                messageSource: params.getParam(
                  'messageSource',
                  ParamType.String,
                ),
                phone: params.getParam(
                  'phone',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: HomeNoAuthWidget.routeName,
              path: HomeNoAuthWidget.routePath,
              builder: (context, params) => HomeNoAuthWidget(),
            ),
            FFRoute(
              name: AddressDeliveryNoAuthWidget.routeName,
              path: AddressDeliveryNoAuthWidget.routePath,
              builder: (context, params) => AddressDeliveryNoAuthWidget(),
            ),
            FFRoute(
              name: AddressDeliveryMapNoAuthWidget.routeName,
              path: AddressDeliveryMapNoAuthWidget.routePath,
              builder: (context, params) => AddressDeliveryMapNoAuthWidget(
                selectedPrediction: params.getParam(
                  'selectedPrediction',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: PredictionsStruct.fromSerializableMap,
                ),
                location: params.getParam(
                  'location',
                  ParamType.LatLng,
                ),
                edit: params.getParam(
                  'edit',
                  ParamType.bool,
                ),
                addressSelected: params.getParam(
                  'addressSelected',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: AddressStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: ConfirmOrderWidget.routeName,
              path: ConfirmOrderWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ConfirmOrderWidget(),
            ),
            FFRoute(
              name: TesteWidget.routeName,
              path: TesteWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TesteWidget(),
            ),
            FFRoute(
              name: CompleteProfileWidget.routeName,
              path: CompleteProfileWidget.routePath,
              builder: (context, params) => CompleteProfileWidget(),
            ),
            FFRoute(
              name: CompleteProfileNumberWidget.routeName,
              path: CompleteProfileNumberWidget.routePath,
              builder: (context, params) => CompleteProfileNumberWidget(),
            ),
            FFRoute(
              name: CompleteProfileValidateNumberWidget.routeName,
              path: CompleteProfileValidateNumberWidget.routePath,
              builder: (context, params) => CompleteProfileValidateNumberWidget(
                messageSource: params.getParam(
                  'messageSource',
                  ParamType.String,
                ),
                phone: params.getParam(
                  'phone',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: MembershipChangePlanWidget.routeName,
              path: MembershipChangePlanWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipChangePlanWidget(
                planActual: params.getParam(
                  'planActual',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: MembershipStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: SignupStep3Widget.routeName,
              path: SignupStep3Widget.routePath,
              builder: (context, params) => SignupStep3Widget(),
            ),
            FFRoute(
              name: ServiceWidget.routeName,
              path: ServiceWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ServiceWidget(
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: aquibrazil_library_oi8i5r_data_schema
                      .CompanyStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: MyCashBackWidget.routeName,
              path: MyCashBackWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MyCashBackWidget(),
            ),
            FFRoute(
              name: MembershipCheckoutWidget.routeName,
              path: MembershipCheckoutWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipCheckoutWidget(
                couponCode: params.getParam(
                  'couponCode',
                  ParamType.String,
                ),
                document: params.getParam(
                  'document',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: MembershipCheckoutChangePlanWidget.routeName,
              path: MembershipCheckoutChangePlanWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MembershipCheckoutChangePlanWidget(
                couponCode: params.getParam(
                  'couponCode',
                  ParamType.String,
                ),
                planActual: params.getParam(
                  'planActual',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: MembershipStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: Cart4Widget.routeName,
              path: Cart4Widget.routePath,
              requireAuth: true,
              builder: (context, params) => Cart4Widget(
                deliveryTip: params.getParam(
                  'deliveryTip',
                  ParamType.int,
                ),
                isPickup: params.getParam(
                  'isPickup',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: AllCategoriesWidget.routeName,
              path: AllCategoriesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AllCategoriesWidget(),
            ),
            FFRoute(
              name: LoginWidget.routeName,
              path: LoginWidget.routePath,
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: ProfileWidget.routeName,
              path: ProfileWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'profile')
                  : NavBarPage(
                      initialPage: 'profile',
                      page: ProfileWidget(),
                    ),
            ),
            FFRoute(
              name: OrderDetailsWidget.routeName,
              path: OrderDetailsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OrderDetailsWidget(
                orderID: params.getParam(
                  'orderID',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: Temp7CheckoutWidget.routeName,
              path: Temp7CheckoutWidget.routePath,
              requireAuth: true,
              builder: (context, params) => Temp7CheckoutWidget(),
            ),
            FFRoute(
              name: DeliveryFoodWidget.routeName,
              path: DeliveryFoodWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DeliveryFoodWidget(
                companyId: params.getParam(
                  'companyId',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: TrackOrderWidget.routeName,
              path: TrackOrderWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: TrackOrderWidget(
                  orderId: params.getParam(
                    'orderId',
                    ParamType.String,
                  ),
                ),
              ),
            ),
            FFRoute(
              name: OrderDetailsServiceWidget.routeName,
              path: OrderDetailsServiceWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OrderDetailsServiceWidget(
                orderID: params.getParam(
                  'orderID',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: Temp3AppointmentWidget.routeName,
              path: Temp3AppointmentWidget.routePath,
              requireAuth: true,
              builder: (context, params) => Temp3AppointmentWidget(
                product: params.getParam(
                  'product',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: aquibrazil_library_oi8i5r_data_schema
                      .BaseProductStruct.fromSerializableMap,
                ),
                company: params.getParam(
                  'company',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: aquibrazil_library_oi8i5r_data_schema
                      .CompanyStruct.fromSerializableMap,
                ),
                hasMoreService: params.getParam(
                  'hasMoreService',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: HelpWidget.routeName,
              path: HelpWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HelpWidget(),
            ),
            FFRoute(
              name: ViewLinkTrackerWidget.routeName,
              path: ViewLinkTrackerWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ViewLinkTrackerWidget(
                tracerLink: params.getParam(
                  'tracerLink',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ErrorPageWidget.routeName,
              path: ErrorPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ErrorPageWidget(
                details: params.getParam(
                  'details',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: HomeWidget.routeName,
              path: HomeWidget.routePath,
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home')
                  : HomeWidget(),
            ),
            FFRoute(
              name: Cart1Widget.routeName,
              path: Cart1Widget.routePath,
              requireAuth: true,
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Cart1Widget(),
              ),
            ),
            FFRoute(
              name: Cart2Widget.routeName,
              path: Cart2Widget.routePath,
              requireAuth: true,
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: Cart2Widget(
                  deliveryDuration: params.getParam(
                    'deliveryDuration',
                    ParamType.int,
                  ),
                  total: params.getParam(
                    'total',
                    ParamType.double,
                  ),
                  operatingHours: params.getParam<
                      aquibrazil_library_oi8i5r_data_schema
                      .OperatingHourStruct>(
                    'operatingHours',
                    ParamType.DataStruct,
                    isList: true,
                    structBuilder: aquibrazil_library_oi8i5r_data_schema
                        .OperatingHourStruct.fromSerializableMap,
                  ),
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Sequencia_01_1.gif',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
