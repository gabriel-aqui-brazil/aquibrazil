import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Main Group Code

class MainGroup {
  static String getBaseUrl({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    return 'https://x0lt-picx-zmmr.n7d.xano.io/api:ywIjzSH2';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'X-data-source': '[dataSource]',
    'X-branch': '[branchSource]',
  };
  static UpdatePaymentMethodNicknameCall updatePaymentMethodNicknameCall =
      UpdatePaymentMethodNicknameCall();
  static EditFcmIdCall editFcmIdCall = EditFcmIdCall();
  static QueryMembershipPlanCall queryMembershipPlanCall =
      QueryMembershipPlanCall();
  static QueryPaymentMethodCall queryPaymentMethodCall =
      QueryPaymentMethodCall();
  static DeleteAccountCall deleteAccountCall = DeleteAccountCall();
  static GETCashbackTransactionHistoryCall gETCashbackTransactionHistoryCall =
      GETCashbackTransactionHistoryCall();
  static CartServiceReviewCall cartServiceReviewCall = CartServiceReviewCall();
  static ResetPasswordValidateCodeCall resetPasswordValidateCodeCall =
      ResetPasswordValidateCodeCall();
  static QueryCompanySearchCall queryCompanySearchCall =
      QueryCompanySearchCall();
  static GetOrderDetailServiceCall getOrderDetailServiceCall =
      GetOrderDetailServiceCall();
  static GetOrderCall getOrderCall = GetOrderCall();
  static CartProductReviewCall cartProductReviewCall = CartProductReviewCall();
  static LoginSignupSocialCall loginSignupSocialCall = LoginSignupSocialCall();
  static QueryCategoryCall queryCategoryCall = QueryCategoryCall();
  static SignupValidateWhatsappCall signupValidateWhatsappCall =
      SignupValidateWhatsappCall();
  static QueryAppointmentCheckHourCall queryAppointmentCheckHourCall =
      QueryAppointmentCheckHourCall();
  static QueryProductOfServiceCall queryProductOfServiceCall =
      QueryProductOfServiceCall();
  static QueryAddressCall queryAddressCall = QueryAddressCall();
  static QueryAppointmentProviderCall queryAppointmentProviderCall =
      QueryAppointmentProviderCall();
  static OrderServiceCall orderServiceCall = OrderServiceCall();
  static OrderDeliveryConfirmCall orderDeliveryConfirmCall =
      OrderDeliveryConfirmCall();
  static CompleteProfileCall completeProfileCall = CompleteProfileCall();
  static FaqEmailCall faqEmailCall = FaqEmailCall();
  static QueryAdsCompanyCall queryAdsCompanyCall = QueryAdsCompanyCall();
  static UpdateDocumentProfileCall updateDocumentProfileCall =
      UpdateDocumentProfileCall();
  static QueryCompanyPartnerCall queryCompanyPartnerCall =
      QueryCompanyPartnerCall();
  static ResetPasswordCall resetPasswordCall = ResetPasswordCall();
  static RemoveFavoriteCompanyCall removeFavoriteCompanyCall =
      RemoveFavoriteCompanyCall();
  static SignupRequestCodeSmsCall signupRequestCodeSmsCall =
      SignupRequestCodeSmsCall();
  static POSTChatMessageCall pOSTChatMessageCall = POSTChatMessageCall();
  static UpdateTokenFcmCall updateTokenFcmCall = UpdateTokenFcmCall();
  static InsertAddressCall insertAddressCall = InsertAddressCall();
  static EditProfileValidateCodeSmsCall editProfileValidateCodeSmsCall =
      EditProfileValidateCodeSmsCall();
  static QueryFaqAnswerCall queryFaqAnswerCall = QueryFaqAnswerCall();
  static QueryCompanyFilterWithCategoryCall queryCompanyFilterWithCategoryCall =
      QueryCompanyFilterWithCategoryCall();
  static PostStripeSubscriptionsCall postStripeSubscriptionsCall =
      PostStripeSubscriptionsCall();
  static FaqFeedbackCall faqFeedbackCall = FaqFeedbackCall();
  static UpdateCustomerCall updateCustomerCall = UpdateCustomerCall();
  static InsertAnalyticsCall insertAnalyticsCall = InsertAnalyticsCall();
  static InsertAppointmentCall insertAppointmentCall = InsertAppointmentCall();
  static QueryCompanyHomeNoAuthCall queryCompanyHomeNoAuthCall =
      QueryCompanyHomeNoAuthCall();
  static QueryFavoriteCompanyCall queryFavoriteCompanyCall =
      QueryFavoriteCompanyCall();
  static QueryOrderHistoryCall queryOrderHistoryCall = QueryOrderHistoryCall();
  static InsertComplaintCall insertComplaintCall = InsertComplaintCall();
  static GetHomeCall getHomeCall = GetHomeCall();
  static QueryNotificationsCall queryNotificationsCall =
      QueryNotificationsCall();
  static SignupValidateSmsCall signupValidateSmsCall = SignupValidateSmsCall();
  static EditProfileRequestCodeWhatsappCall editProfileRequestCodeWhatsappCall =
      EditProfileRequestCodeWhatsappCall();
  static QueryCompanyHomeCall queryCompanyHomeCall = QueryCompanyHomeCall();
  static MembershipCartReviewCall membershipCartReviewCall =
      MembershipCartReviewCall();
  static GetHomeNoAuthCall getHomeNoAuthCall = GetHomeNoAuthCall();
  static ValidateCodeDeleteAccountCall validateCodeDeleteAccountCall =
      ValidateCodeDeleteAccountCall();
  static UpdateAddressCopyCall updateAddressCopyCall = UpdateAddressCopyCall();
  static UpdateAddressCall updateAddressCall = UpdateAddressCall();
  static QueryServiceCall queryServiceCall = QueryServiceCall();
  static AppointmentReviewCall appointmentReviewCall = AppointmentReviewCall();
  static EditProfileValidateCodeWhatsappCall
      editProfileValidateCodeWhatsappCall =
      EditProfileValidateCodeWhatsappCall();
  static OrderProductCall orderProductCall = OrderProductCall();
  static QueryRatingCall queryRatingCall = QueryRatingCall();
  static EditAddressCall editAddressCall = EditAddressCall();
  static AppointmentReescheduleCall appointmentReescheduleCall =
      AppointmentReescheduleCall();
  static InsertFavoritePartnerPageCall insertFavoritePartnerPageCall =
      InsertFavoritePartnerPageCall();
  static RemoveFavoritePartnerPageCall removeFavoritePartnerPageCall =
      RemoveFavoritePartnerPageCall();
  static QuerySessionPropertyCall querySessionPropertyCall =
      QuerySessionPropertyCall();
  static GETCashBackAvaliableCall gETCashBackAvaliableCall =
      GETCashBackAvaliableCall();
  static UpdatePasswordCall updatePasswordCall = UpdatePasswordCall();
  static PaymentMethodAttachCall paymentMethodAttachCall =
      PaymentMethodAttachCall();
  static QuerySessionAutomotiveCall querySessionAutomotiveCall =
      QuerySessionAutomotiveCall();
  static SignupRequestCodeEmailCall signupRequestCodeEmailCall =
      SignupRequestCodeEmailCall();
  static POSTRedeemAzulPointsCall pOSTRedeemAzulPointsCall =
      POSTRedeemAzulPointsCall();
  static EditProfileRequestCodeSmsCall editProfileRequestCodeSmsCall =
      EditProfileRequestCodeSmsCall();
  static QueryMessagesCall queryMessagesCall = QueryMessagesCall();
  static GetCodeDeleteAccountCall getCodeDeleteAccountCall =
      GetCodeDeleteAccountCall();
  static QueryFaqCall queryFaqCall = QueryFaqCall();
  static MembershipCheckoutCall membershipCheckoutCall =
      MembershipCheckoutCall();
  static DeletePaymentMethodCall deletePaymentMethodCall =
      DeletePaymentMethodCall();
  static SignupCall signupCall = SignupCall();
  static QuerySessionProductsDeliveryCall querySessionProductsDeliveryCall =
      QuerySessionProductsDeliveryCall();
  static GetFavoritePagePartnerCall getFavoritePagePartnerCall =
      GetFavoritePagePartnerCall();
  static SignupValidateEmailCall signupValidateEmailCall =
      SignupValidateEmailCall();
  static GETAppVersionAvaliableCall gETAppVersionAvaliableCall =
      GETAppVersionAvaliableCall();
  static QueryAppointmentReviewCall queryAppointmentReviewCall =
      QueryAppointmentReviewCall();
  static GetOrderDetailCall getOrderDetailCall = GetOrderDetailCall();
  static SignupRequestCodeWhatsappCall signupRequestCodeWhatsappCall =
      SignupRequestCodeWhatsappCall();
  static EditCustomerEmailCall editCustomerEmailCall = EditCustomerEmailCall();
  static PostImagemChatCall postImagemChatCall = PostImagemChatCall();
  static GETChatExistCall gETChatExistCall = GETChatExistCall();
  static InsertRatingCall insertRatingCall = InsertRatingCall();
  static GetCouponCall getCouponCall = GetCouponCall();
  static MembershipCancelCall membershipCancelCall = MembershipCancelCall();
  static MembershipCheckoutChangePlanCall membershipCheckoutChangePlanCall =
      MembershipCheckoutChangePlanCall();
  static InsertFavoriteCompanyCall insertFavoriteCompanyCall =
      InsertFavoriteCompanyCall();
  static LoginCall loginCall = LoginCall();
  static GetChatMessageCall getChatMessageCall = GetChatMessageCall();
  static QueryCashbackHistoryCall queryCashbackHistoryCall =
      QueryCashbackHistoryCall();
  static GETMessagesCall gETMessagesCall = GETMessagesCall();
  static PostChatCall postChatCall = PostChatCall();
  static GetMembershipCurrentCall getMembershipCurrentCall =
      GetMembershipCurrentCall();
  static GetComplaintHistoryCall getComplaintHistoryCall =
      GetComplaintHistoryCall();
}

class UpdatePaymentMethodNicknameCall {
  Future<ApiCallResponse> call({
    String? nickname = '',
    String? paymentMethodId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "nickname": "${escapeStringForJson(nickname)}",
  "payment_method_id": "${escapeStringForJson(paymentMethodId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update payment method nickname',
      apiUrl: '${baseUrl}/payment-method/nickname',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditFcmIdCall {
  Future<ApiCallResponse> call({
    String? fcmId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "fcm_id": "${escapeStringForJson(fcmId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit fcm id',
      apiUrl: '${baseUrl}/fcm_id',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryMembershipPlanCall {
  Future<ApiCallResponse> call({
    String? coupon = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query membership plan',
      apiUrl: '${baseUrl}/membership/plan',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'coupon': coupon,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryPaymentMethodCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query payment method',
      apiUrl: '${baseUrl}/payment-method',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAccountCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete account',
      apiUrl: '${baseUrl}/delete-account',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETCashbackTransactionHistoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET Cashback transaction history',
      apiUrl: '${baseUrl}/cashback_transaction/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CartServiceReviewCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    dynamic? itemsJson,
    String? customerPaymentMethodId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
{
  "company_id": "${escapeStringForJson(companyId)}",
  "items": ${items},
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cart service review',
      apiUrl: '${baseUrl}/cart/service/review',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetPasswordValidateCodeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset password validate code',
      apiUrl: '${baseUrl}/auth/reset-password/validate-code',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCompanySearchCall {
  Future<ApiCallResponse> call({
    String? search = '',
    String? categoryId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query company search',
      apiUrl: '${baseUrl}/company/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'search': search,
        'category_id': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrderDetailServiceCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get order detail service',
      apiUrl: '${baseUrl}/order/detail/service',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrderCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get order',
      apiUrl: '${baseUrl}/order/detail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CartProductReviewCall {
  Future<ApiCallResponse> call({
    String? dropoffAddressId = '',
    double? deliveryTip,
    String? companyId = '',
    bool? isPickup,
    dynamic? itemsJson,
    String? customerPaymentMethodId = '',
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
{
  "dropoff_address_id": "${escapeStringForJson(dropoffAddressId)}",
  "delivery_tip": ${deliveryTip},
  "company_id": "${escapeStringForJson(companyId)}",
  "is_pickup": ${isPickup},
  "items": ${items},
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}",
  "timezone": "${escapeStringForJson(timezone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cart product review',
      apiUrl: '${baseUrl}/cart/product/review',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginSignupSocialCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? authId = '',
    String? firstName = '',
    String? provider = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "email": "${email}",
  "auth_id": "${authId}",
  "provider": "${provider}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login Signup social',
      apiUrl: '${baseUrl}/auth/login-social',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.auth_token''',
      ));
  int? expirationToken(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiration_token''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class QueryCategoryCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query category',
      apiUrl: '${baseUrl}/category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'category_id': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupValidateWhatsappCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${phone}",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup validate whatsapp',
      apiUrl: '${baseUrl}/auth/validate-whatsapp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAppointmentCheckHourCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? providerId = '',
    String? companyId = '',
    String? baseProductId = '',
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query appointment check hour',
      apiUrl: '${baseUrl}/appointment/check-hour',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'date': date,
        'provider_id': providerId,
        'company_id': companyId,
        'base_product_id': baseProductId,
        'timezone': timezone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryProductOfServiceCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? search = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query product of service',
      apiUrl: '${baseUrl}/service/product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAddressCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query address',
      apiUrl: '${baseUrl}/address',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAppointmentProviderCall {
  Future<ApiCallResponse> call({
    String? baseProductId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query appointment provider',
      apiUrl: '${baseUrl}/appointment/provider',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'base_product_id': baseProductId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderServiceCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    double? subtotal,
    double? taxAndServiceFee,
    double? aquipassSaved,
    double? membershipCashback,
    double? totalAmount,
    String? customerPaymentMethodId = '',
    dynamic? itemsJson,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
{
  "company_id": "${escapeStringForJson(companyId)}",
  "subtotal": ${subtotal},
  "tax_and_service_fee": ${taxAndServiceFee},
  "aquipass_saved": ${aquipassSaved},
  "membership_cashback": ${membershipCashback},
  "total_amount": ${totalAmount},
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}",
  "items": ${items}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order service',
      apiUrl: '${baseUrl}/order/service',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderDeliveryConfirmCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "order_id": "${escapeStringForJson(orderId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order delivery confirm',
      apiUrl: '${baseUrl}/order/delivery-confirm',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompleteProfileCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? fcmId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}",
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}",
  "email": "${escapeStringForJson(email)}",
  "fcm_id": "${escapeStringForJson(fcmId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Complete profile',
      apiUrl: '${baseUrl}/auth/complete-profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FaqEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? content = '',
    String? name = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "email": "${escapeStringForJson(email)}",
  "content": "${escapeStringForJson(content)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Faq email',
      apiUrl: '${baseUrl}/faq-email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAdsCompanyCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query Ads Company',
      apiUrl: '${baseUrl}/ads-company',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDocumentProfileCall {
  Future<ApiCallResponse> call({
    String? document = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "document": "${escapeStringForJson(document)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update document profile',
      apiUrl: '${baseUrl}/update_profile/document',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCompanyPartnerCall {
  Future<ApiCallResponse> call({
    String? categoryId,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    categoryId ??= '';
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query Company Partner',
      apiUrl: '${baseUrl}/company-partner',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'category_id': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset password',
      apiUrl: '${baseUrl}/auth/reset-password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFavoriteCompanyCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Remove favorite company',
      apiUrl: '${baseUrl}/favorite-company/${companyId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupRequestCodeSmsCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup request code sms',
      apiUrl: '${baseUrl}/auth/request-code-sms',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTChatMessageCall {
  Future<ApiCallResponse> call({
    String? chatId = '',
    String? message = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "chat_id": "${escapeStringForJson(chatId)}",
  "message": "${escapeStringForJson(message)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Chat message',
      apiUrl: '${baseUrl}/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTokenFcmCall {
  Future<ApiCallResponse> call({
    String? fcm = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "fcm_id": "${escapeStringForJson(fcm)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update token fcm',
      apiUrl: '${baseUrl}/update_profile/notification',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertAddressCall {
  Future<ApiCallResponse> call({
    String? address = '',
    String? zipcode = '',
    String? city = '',
    String? state = '',
    String? latitude = '',
    String? longitude = '',
    String? type = '',
    String? address2 = '',
    String? referencePoint = '',
    String? number = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "address": "${address}",
  "zipcode": "${zipcode}",
  "city": "${city}",
  "state": "${state}",
  "address2": "${address2}",
  "latitude": "${latitude}",
  "longitude": "${longitude}",
  "type": "${type}",
  "reference_point": "${referencePoint}",
  "number": "${number}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert address',
      apiUrl: '${baseUrl}/address',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isMain(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_main''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address''',
      ));
  String? zipcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.zipcode''',
      ));
  String? number(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.number''',
      ));
  String? referencePoint(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reference_point''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? logitude(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.longitude''',
      ));
  String? latitude(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.latitude''',
      ));
  String? address2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address2''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
}

class EditProfileValidateCodeSmsCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "code": "${escapeStringForJson(code)}",
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit profile validate code sms',
      apiUrl: '${baseUrl}/profile/validate-sms',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryFaqAnswerCall {
  Future<ApiCallResponse> call({
    String? faqId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query faq answer',
      apiUrl: '${baseUrl}/faq-answer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'faq_id': faqId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCompanyFilterWithCategoryCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
    double? discount,
    bool? isPickup,
    String? searchCompanyName = '',
    bool? isFreeDelivery,
    double? distance,
    double? rating,
    double? price,
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query company filter with category',
      apiUrl: '${baseUrl}/company-filter-with-category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'category_id': categoryId,
        'discount': discount,
        'is_pickup': isPickup,
        'search_company_name': searchCompanyName,
        'is_free_delivery': isFreeDelivery,
        'distance': distance,
        'rating': rating,
        'price': price,
        'timezone': timezone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostStripeSubscriptionsCall {
  Future<ApiCallResponse> call({
    String? priceId = '',
    String? couponId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "price_id": "${escapeStringForJson(priceId)}",
  "coupon_id": "${escapeStringForJson(couponId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Stripe Subscriptions',
      apiUrl: '${baseUrl}/stripe/subscriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FaqFeedbackCall {
  Future<ApiCallResponse> call({
    String? faqAnswerId = '',
    bool? isLike,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "faq_answer_id": "${faqAnswerId}",
  "is_like": ${isLike}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Faq feedback',
      apiUrl: '${baseUrl}/faq-feedback',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCustomerCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update customer',
      apiUrl: '${baseUrl}/customer',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertAnalyticsCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? eventName = '',
    String? pageId = '',
    String? type = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "company_id": "${escapeStringForJson(companyId)}",
  "event_name": "${escapeStringForJson(eventName)}",
  "company_partner_page_id": "${escapeStringForJson(pageId)}",
  "type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert analytics',
      apiUrl: '${baseUrl}/analytics',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertAppointmentCall {
  Future<ApiCallResponse> call({
    dynamic? serviceJson,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final service = _serializeJson(serviceJson, true);
    final ffApiRequestBody = '''
{
  "service": ${service}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert appointment',
      apiUrl: '${baseUrl}/appointment',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCompanyHomeNoAuthCall {
  Future<ApiCallResponse> call({
    String? primaryCategoryId = '',
    double? discount,
    bool? isPickup,
    bool? isFreeDelivery,
    double? distance,
    String? latitude = '',
    String? longitude = '',
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query company home no auth',
      apiUrl: '${baseUrl}/company/no-auth',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'primary_category_id': primaryCategoryId,
        'discount': discount,
        'is_pickup': isPickup,
        'is_free_delivery': isFreeDelivery,
        'distance': distance,
        'latitude': latitude,
        'longitude': longitude,
        'timezone': timezone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryFavoriteCompanyCall {
  Future<ApiCallResponse> call({
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query favorite company',
      apiUrl: '${baseUrl}/favorite-company',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'timezone': timezone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryOrderHistoryCall {
  Future<ApiCallResponse> call({
    String? orderType = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query order history',
      apiUrl: '${baseUrl}/order/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_type': orderType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertComplaintCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? reason = '',
    String? comment = '',
    FFUploadedFile? complaintImage1,
    FFUploadedFile? complaintImage2,
    FFUploadedFile? complaintImage3,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Insert complaint',
      apiUrl: '${baseUrl}/complaint',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
        'reason': reason,
        'comment': comment,
        'complaint_image_1': complaintImage1,
        'complaint_image_2': complaintImage2,
        'complaint_image_3': complaintImage3,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHomeCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get home',
      apiUrl: '${baseUrl}/home',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryNotificationsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query notifications',
      apiUrl: '${baseUrl}/notifications',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupValidateSmsCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${phone}",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup validate sms',
      apiUrl: '${baseUrl}/auth/validate-sms',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProfileRequestCodeWhatsappCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit profile request code whatsapp',
      apiUrl: '${baseUrl}/profile/request-code-whatsapp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCompanyHomeCall {
  Future<ApiCallResponse> call({
    String? primaryCategoryId = '',
    double? discount,
    String? filterCategoryId = '',
    bool? isPickup,
    String? searchCompanyName = '',
    bool? isFreeDelivery,
    double? distance,
    String? timezone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query company home',
      apiUrl: '${baseUrl}/company',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'primary_category_id': primaryCategoryId,
        'discount': discount,
        'filter_category_id': filterCategoryId,
        'is_pickup': isPickup,
        'search_company_name': searchCompanyName,
        'is_free_delivery': isFreeDelivery,
        'distance': distance,
        'timezone': timezone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MembershipCartReviewCall {
  Future<ApiCallResponse> call({
    String? customerPaymentMethodId = '',
    double? membershipValue,
    String? membershipId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Membership cart review',
      apiUrl: '${baseUrl}/membership/cart/review',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'customer_payment_method_id': customerPaymentMethodId,
        'membership_value': membershipValue,
        'membership_id': membershipId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHomeNoAuthCall {
  Future<ApiCallResponse> call({
    String? latitude = '',
    String? longitude = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get home no auth',
      apiUrl: '${baseUrl}/home/no-auth',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'latitude': latitude,
        'longitude': longitude,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateCodeDeleteAccountCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "code": "${escapeStringForJson(code)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Validate code delete account',
      apiUrl: '${baseUrl}/delete-account/validate-code',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAddressCopyCall {
  Future<ApiCallResponse> call({
    String? addressId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Address Copy',
      apiUrl: '${baseUrl}/address/${addressId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAddressCall {
  Future<ApiCallResponse> call({
    String? addressId = '',
    bool? isMain,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "address_id": "${escapeStringForJson(addressId)}",
  "is_main": ${isMain}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Address',
      apiUrl: '${baseUrl}/address/${addressId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryServiceCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? sessionId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query service',
      apiUrl: '${baseUrl}/service',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AppointmentReviewCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? status = '',
    int? selectedDate,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "order_id": "${escapeStringForJson(orderId)}",
  "status": "${escapeStringForJson(status)}",
  "selected_date": ${selectedDate}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Appointment review',
      apiUrl: '${baseUrl}/appointment/review',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProfileValidateCodeWhatsappCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "code": "${escapeStringForJson(code)}",
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit profile validate code whatsapp',
      apiUrl: '${baseUrl}/profile/validate-whatsapp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderProductCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    double? subtotal,
    double? taxAndServiceFee,
    double? aquipassSaved,
    double? membershipCashback,
    double? totalAmount,
    String? customerPaymentMethodId = '',
    dynamic? itemsJson,
    double? tip,
    double? deliveryFee,
    String? dropoffAddressId = '',
    bool? isPickup,
    String? observation = '',
    String? preferredTime = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
{
  "company_id": "${escapeStringForJson(companyId)}",
  "subtotal": ${subtotal},
  "tax_and_service_fee": ${taxAndServiceFee},
  "aquipass_saved": ${aquipassSaved},
  "membership_cashback": ${membershipCashback},
  "total_amount": ${totalAmount},
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}",
  "items": ${items},
  "tip": ${tip},
  "delivery_fee": ${deliveryFee},
  "dropoff_address_id": "${escapeStringForJson(dropoffAddressId)}",
  "is_pickup": ${isPickup},
  "observation": "${escapeStringForJson(observation)}",
  "preferred_time": "${escapeStringForJson(preferredTime)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Order product',
      apiUrl: '${baseUrl}/order/product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryRatingCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    int? limit,
    int? offset,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query rating',
      apiUrl: '${baseUrl}/rating',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditAddressCall {
  Future<ApiCallResponse> call({
    String? address = '',
    String? zipcode = '',
    String? city = '',
    String? state = '',
    String? latitude = '',
    String? longitude = '',
    String? type = '',
    String? address2 = '',
    String? referencePoint = '',
    String? number = '',
    String? addressId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "address": "${address}",
  "zipcode": "${zipcode}",
  "city": "${city}",
  "state": "${state}",
  "address2": "${address2}",
  "latitude": "${latitude}",
  "longitude": "${longitude}",
  "type": "${type}",
  "reference_point": "${referencePoint}",
  "number": "${number}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit address',
      apiUrl: '${baseUrl}/address/${addressId}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AppointmentReescheduleCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    int? selectedDate,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "order_id": "${escapeStringForJson(orderId)}",
  "selected_date": ${selectedDate}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Appointment reeschedule',
      apiUrl: '${baseUrl}/appointment/reeschedule',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertFavoritePartnerPageCall {
  Future<ApiCallResponse> call({
    String? companyPartnerPageId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "company_partner_page_id": "${escapeStringForJson(companyPartnerPageId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert favorite partner page',
      apiUrl: '${baseUrl}/favorite-partner-page',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFavoritePartnerPageCall {
  Future<ApiCallResponse> call({
    String? companyPartnerPageId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Remove favorite partner page',
      apiUrl: '${baseUrl}/favorite-partner-page/${companyPartnerPageId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuerySessionPropertyCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? sessionId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query session property',
      apiUrl: '${baseUrl}/property',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETCashBackAvaliableCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET CashBack avaliable',
      apiUrl: '${baseUrl}/cashback_transactions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.cashback_transactions_amount''',
      ));
}

class UpdatePasswordCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update password',
      apiUrl: '${baseUrl}/auth/password',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PaymentMethodAttachCall {
  Future<ApiCallResponse> call({
    String? paymentMethodId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
"payment_method_id": "${escapeStringForJson(paymentMethodId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment method attach',
      apiUrl: '${baseUrl}/payment-method/attach',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QuerySessionAutomotiveCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? sessionId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query session automotive',
      apiUrl: '${baseUrl}/automotive',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupRequestCodeEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup request code email',
      apiUrl: '${baseUrl}/auth/request-code-email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTRedeemAzulPointsCall {
  Future<ApiCallResponse> call({
    int? value,
    String? cpf = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "value": ${value},
  "cpf": "${escapeStringForJson(cpf)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Redeem azul points',
      apiUrl: '${baseUrl}/azul/redeempoints',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class EditProfileRequestCodeSmsCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit profile request code sms',
      apiUrl: '${baseUrl}/profile/request-code-sms',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryMessagesCall {
  Future<ApiCallResponse> call({
    int? page,
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query messages',
      apiUrl: '${baseUrl}/message_customer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCodeDeleteAccountCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get code delete account',
      apiUrl: '${baseUrl}/delete-account/request-code',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryFaqCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query faq',
      apiUrl: '${baseUrl}/faq',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MembershipCheckoutCall {
  Future<ApiCallResponse> call({
    String? customerPaymentMethodId = '',
    String? membershipId = '',
    double? taxAndServiceAmount,
    double? discountAmount,
    String? couponCode = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}",
  "membership_id": "${escapeStringForJson(membershipId)}",
  "tax_and_service_amount": ${taxAndServiceAmount},
  "discount_amount": ${discountAmount},
  "coupon_code": "${escapeStringForJson(couponCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Membership checkout',
      apiUrl: '${baseUrl}/membership/checkout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePaymentMethodCall {
  Future<ApiCallResponse> call({
    String? paymentMethodId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete payment method',
      apiUrl: '${baseUrl}/payment-method/${paymentMethodId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? phone = '',
    String? email = '',
    String? password = '',
    String? authId = '',
    String? fcmId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "phone": "${phone}",
  "email": "${email}",
  "password": "${password}",
  "auth_id": "${authId}",
  "fcm_id": "${fcmId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.auth_token''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.first_name''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.last_name''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  int? expirationToken(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiration_token''',
      ));
}

class QuerySessionProductsDeliveryCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? sessionId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query session products delivery',
      apiUrl: '${baseUrl}/product/delivery',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_id': companyId,
        'session_id': sessionId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFavoritePagePartnerCall {
  Future<ApiCallResponse> call({
    String? companyPartnerPageId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get favorite page partner',
      apiUrl: '${baseUrl}/favorite-partner-page',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'company_partner_page_id': companyPartnerPageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupValidateEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup validate email',
      apiUrl: '${baseUrl}/auth/validate-email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETAppVersionAvaliableCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET App version avaliable',
      apiUrl: '${baseUrl}/app_version',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? actualVersion(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class QueryAppointmentReviewCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query appointment review',
      apiUrl: '${baseUrl}/appointment/review',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrderDetailCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get order detail',
      apiUrl: '${baseUrl}/order/detail',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupRequestCodeWhatsappCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup request code whatsapp',
      apiUrl: '${baseUrl}/auth/request-code-whatsapp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCustomerEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit customer email',
      apiUrl: '${baseUrl}/profile/email',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostImagemChatCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? chatId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'POST IMAGEM CHAT',
      apiUrl: '${baseUrl}/message-image',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'image': image,
        'chat_id': chatId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETChatExistCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET Chat exist',
      apiUrl: '${baseUrl}/chats/customer/id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? chatid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class InsertRatingCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    double? rating,
    String? ratingDescription = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "order_id": "${escapeStringForJson(orderId)}",
  "rating": ${rating},
  "rating_description": "${escapeStringForJson(ratingDescription)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert rating',
      apiUrl: '${baseUrl}/rating',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCouponCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Coupon',
      apiUrl: '${baseUrl}/coupon',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MembershipCancelCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Membership cancel',
      apiUrl: '${baseUrl}/membership/cancel',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MembershipCheckoutChangePlanCall {
  Future<ApiCallResponse> call({
    String? customerPaymentMethodId = '',
    String? membershipId = '',
    double? taxAndServiceAmount,
    double? discountAmount,
    String? couponCode = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "customer_payment_method_id": "${escapeStringForJson(customerPaymentMethodId)}",
  "membership_id": "${escapeStringForJson(membershipId)}",
  "tax_and_service_amount": ${taxAndServiceAmount},
  "discount_amount": ${discountAmount},
  "coupon_code": "${escapeStringForJson(couponCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Membership checkout change plan',
      apiUrl: '${baseUrl}/membership/checkout_change_plan',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertFavoriteCompanyCall {
  Future<ApiCallResponse> call({
    String? companyId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "company_id": "${escapeStringForJson(companyId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert favorite company',
      apiUrl: '${baseUrl}/favorite-company',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? authId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "auth_id": "${authId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.auth_token''',
      ));
  int? expirationToken(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiration_token''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetChatMessageCall {
  Future<ApiCallResponse> call({
    String? chatId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET CHAT MESSAGE',
      apiUrl: '${baseUrl}/chat-messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryCashbackHistoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Query cashback history',
      apiUrl: '${baseUrl}/cashback/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETMessagesCall {
  Future<ApiCallResponse> call({
    String? chatId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GET Messages',
      apiUrl: '${baseUrl}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'chat_id': chatId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  dynamic items(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class PostChatCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'POST CHAT',
      apiUrl: '${baseUrl}/chats',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMembershipCurrentCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get membership current',
      apiUrl: '${baseUrl}/membership/current',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetComplaintHistoryCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
    String? dataSource,
    String? branchSource,
  }) async {
    dataSource ??= FFDevEnvironmentValues().dataResource;
    branchSource ??= FFDevEnvironmentValues().branchVar;
    final baseUrl = MainGroup.getBaseUrl(
      token: token,
      dataSource: dataSource,
      branchSource: branchSource,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get complaint history',
      apiUrl: '${baseUrl}/complaint/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-data-source': '${dataSource}',
        'X-branch': '${branchSource}',
      },
      params: {
        'order_id': orderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Main Group Code

class MapsPlaceGeocodeCall {
  static Future<ApiCallResponse> call({
    String? latlng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Maps place geocode',
      apiUrl:
          'https://fierce-gorge-10603-4854bc8b7c1f.herokuapp.com/https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyD0Ezf2QjOGru1paxVZy8S-KdFs85nLifQ",
        'language': "en_us",
        'latlng': latlng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MapsPlaceDetailsCall {
  static Future<ApiCallResponse> call({
    String? placeid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Maps place details',
      apiUrl:
          'https://fierce-gorge-10603-4854bc8b7c1f.herokuapp.com/https://maps.googleapis.com/maps/api/place/details/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'placeid': placeid,
        'language': "en_us",
        'key': "AIzaSyD0Ezf2QjOGru1paxVZy8S-KdFs85nLifQ",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? address(dynamic response) => getJsonField(
        response,
        r'''$.result.address_components[:]''',
        true,
      ) as List?;
}

class MapsPlaceAutocompleteCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Maps place autocomplete',
      apiUrl:
          'https://fierce-gorge-10603-4854bc8b7c1f.herokuapp.com/https://maps.googleapis.com/maps/api/place/autocomplete/json?components=country:US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'language': "en_us",
        'key': "AIzaSyD0Ezf2QjOGru1paxVZy8S-KdFs85nLifQ",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
