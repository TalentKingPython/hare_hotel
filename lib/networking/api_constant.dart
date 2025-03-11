import '../constant/constant.dart';

class BaseUrl {
  //Dev
  // static const domain = "https://hare.io/";
  static const domain = "http://srv721977.hstgr.cloud/";

  static const endPointBaseUrlApi = "api/";
  static const endPointBaseUrlCustomer = "customer/";
  static const endPointBaseUrlStore = "store/";
  static const baseUrl = domain + endPointBaseUrlApi + endPointBaseUrlCustomer;
  static const baseStoreUrl =
      domain + endPointBaseUrlApi + endPointBaseUrlStore;

  //Map
  static const mapBaseUrl = "https://maps.googleapis.com/";

  //Vipps
  static const vippsBaseUrl = "https://apitest.vipps.no/";
  // static const vippsBaseUrl = "https://api.vipps.no/";

  //Firebase
  static String firebaseBaseUrl =
      "https://fcm.googleapis.com/v1/projects/$firebaseProjectId/messages:";
}

class ApiConst {
  static const endPointDelivery = "delivery/";

  // static const END_POINT_ON_DEMAND = "on-demand/";
  static const endPointTransport = "transport/";
  static const endPointTransportRental = "transport/rental/";

  static const endPointSendOtp = "otp-send";

  //Google API
  static const endPointGoogleMap = "google-map";

  //Splash
  static const endPointGetRunningService = "get-running-service";
  static const endPointAppVersionCheck = "app-version-check";

  //Terms And Condition
  static const endPointTermsAndConditions = 'terms-and-conditions';

  //Select Language And Currency
  static const endPointCountryCurrency = 'country-and-currency-list';
  static const endPointUpdateCountryCurrency = 'update-country-and-currency';

  //SigUp
  static const endPointRegister = 'register';

  //Login
  static const endPointLogin = "login";
  static const endPointForgotPassReq = "forgot-password-request";
  static const endPointForgotChangePass = "forgot-change-password";

  //OTP
  static const endPointVerifyOtp = "contact-verification";
  static const endPointResendOtp = "resend-otp-verification";
  static const endPointChangeNumber = "change-contact-number";

  //Required Information
  static const endPointSocialRequiredField = "social-required-field";

  //Home
  static const endPointLogout = "logout";

  //Notifications
  static const endPointMassNotificationList = "mass-notification-list";

  //Support
  static const endPointSupportPages = "support-pages";

  //My Profile
  static const endPointEditProfile = "edit-profile";
  static const endPointGetProfile = "get-profile";
  static const endPointRemoveAccount = "remove-account";
  static const endPointErrorProfile = "error-profile";

  //Change Password
  static const endPointChangePassword = "change-password";

  //Order History
  static const endPointRideHistory = "ride-history";
  static const endPointGetHareCities = "hare-cities";

  //Order Detail
  static const endPointDeliveryRideInvoice = "delivery-ride-invoice";

  //Search Store
  static const endPointSearchStore = "${endPointDelivery}search-store";
  static const endPointSearchProduct = "${endPointDelivery}search-product";
  static const endPointSearchHare = "${endPointDelivery}search-hare";

  //Store Detail
  static const endPointStoreDetails = "${endPointDelivery}store-details";
  static const endPointAddOrderCart = "${endPointDelivery}add-order-cart";
  static const endPointGetOrderCart = "${endPointDelivery}get-order-cart";
  static const endPointChangeOrderQuantity =
      "${endPointDelivery}change-quantity-order";
  static const endPointDeleteOrderCart = "${endPointDelivery}delete-order-cart";
  static const endPointFavorite = "${endPointDelivery}add-favourite-store";
  static const endPointStoreReviewList = "store-review-list";
  static const endPointGetAddOns = "get-topping-option";

  //Product List
  static const endPointStoreProductList =
      "${endPointDelivery}store-product-list";

  //Checkout
  static const endPointOrderPreview = "${endPointDelivery}order-preview";
  static const endPointPromoCodeList = "get-promocode-list";
  static const endPointDsPlaceOrder = "${endPointDelivery}store-place-order";

  //Track Order
  static const endPointHomeTrackOrder = "${endPointDelivery}home-track-order";
  static const endPointDsTrackOrder = "${endPointDelivery}track-order";
  static const endPointDsOrderCancel = "${endPointDelivery}order-cancelled";
  static const endPointOrderRating = "${endPointDelivery}order-rating";
  static const endPointAddProductRate = "${endPointDelivery}add-product-rate";

  //My Wallet
  static const endPointGetWalletBalance = "get-wallet-balance";
  static const endPointWalletBalance = "add-wallet-balance";
  static const endPointUpdateOrderStatus = "update-order-status";

  //Wallet Transfer
  static const String endPointSearchUser = "search-wallet-transfer-user-list";
  static const String endPointWalletTransfer = "wallet-transfer";

  //Wallet Transaction
  static const endPointWalletTransactions = "wallet-transaction";

  //Stripe
  static const endPointPaymentIntent = "payment-intent";

  //Home
  static const endPointHome = "home";
  static const endPointHomePageFeatureStore = "home-page-feature-store";
  static const endPointReferCode = "refer-code";

  //View All Featured Store
  static const endPointViewAllFeatureStore = "view-all-feature-store";

  //Ride Home
  static const endPointTransportGetNearestDriver =
      "${endPointTransport}get-nearest-driver-position";
  static const endPointRentalGetNearestDriver =
      "${endPointTransportRental}get-nearest-driver-position";

  //Ride History
  static const endPointTransportRideHistory =
      "${endPointTransport}ride-history";
  static const endPointDsOrderHistory = "${endPointDelivery}order-history";
  static const endPointDsOrderDetail =
      "${endPointDelivery}order-history-detail";

  // static const END_POINT_OD_ORDER_HISTORY = END_POINT_ON_DEMAND + "order-history";

  //Delivery Reorder
  static const endPointOdReOrder = "${endPointDelivery}re-order";

  //Ride Detail
  static const endPointTransportRideReceiptDetail =
      "${endPointTransport}ride-receipt-details";
  static const endPointRentDetail = "${endPointTransportRental}ride-details";
  static const endPointRentPreview = "${endPointTransportRental}ride-preview";
  static const endPointTransportCancelRideBooking =
      "${endPointTransport}cancel-ride";

  //Ride Book
  static const endPointTransportServiceType =
      "${endPointTransport}service-type";
  static const endPointApplyPromoCode = "apply-promocode-check";
  static const endPointTransportRideBooking =
      "${endPointTransport}ride-booking";
  static const endPointTransportRidePreview =
      "${endPointTransport}ride-preview";
  static const endPointTransportSurchargeCharge =
      "${endPointTransport}surcharge-charge";

  //Ride Invoice
  static const endPointCardPaymentTransaction =
      "${endPointTransport}ride-payment";
  static const endPointTransportRideUserRating =
      "${endPointTransport}ride-user-rating";
  static const endPointTransportTip = "${endPointTransport}add-ride-tip";

  //Running Ride
  static const endPointTransportServiceHomePage =
      "${endPointTransport}service-home-page";

  //Rental Ride Book
  static const endPointRentServiceType =
      "${endPointTransportRental}service-type";
  static const endPointRentBooking = "${endPointTransportRental}ride-booking";
  static const endPointRentStatus =
      "${endPointTransportRental}update-ride-status";

  //DS Home
  static const endPointDsHomeStore = "${endPointDelivery}store-list";
  static const endPointDsFavouriteStoreLists =
      "${endPointDelivery}favourite-store-lists";
  static const endPointDsStoreProductCategoryLists =
      "${endPointDelivery}store-product-category-list";
  static const endPointDsStoreCategoryLists =
      "${endPointDelivery}store-category-list";
  static const endPointDsBrandLists = "${endPointDelivery}brand-list";

  //Hare Swipe
  static const endPointHareSwipe = "${endPointDelivery}hare-swipe";
  static const endPointHareExplore = "${endPointDelivery}hare-explore";

  //Deliveries Order Detail
  static const endPointDsOrderDetails = "${endPointDelivery}order-details";

  static const String endPointCardList = "card-list";
  static const String endPointAddCard = "add-card";
  static const String endPointCardRemove = "delete-card";

  //Coupon Deal Home
  static const endPointCdCouponList = "coupon-list";
  static const endPointCdPurchase = "purchase-coupon";

  //Coupon Detail
  static const endPointCdCouponDetail = "coupon-details";

  //My Coupons
  static const endPointCdMyCoupons = "purchase-coupon-list";

  //Manage Address
  static const endPointAddressList = "address-list";
  static const endPointDeleteAddress = "delete-address";
  static const endPointAddAddress = "add-address";
  static const endPointEditAddress = "edit-address";

  //------------------- Vipps ---------------
  static const endPointCreateVippsAccessToken = "accesstoken/get";
  static const endPointCreateVippsPayment = "epayment/v1/payments";
}

class ApiParam {
  //Common
  static const paramUserId = 'user_id';
  static const paramCartId = 'cart_id';
  static const paramDriverId = 'driver_id';
  static const paramAccessToken = 'access_token';
  static const paramAppVersion = 'app_version';

  //Google API
  static const paramUrl = 'url';

  //Select Language And Currency
  static const paramSelectLanguage = 'select_language';
  static const paramSelectLanguageHeader = 'select-language';
  static const paramSelectCountryCode = 'select_country_code';
  static const paramSelectCurrency = 'select_currency';

  //SignUp
  static const paramName = 'name';
  static const paramFullName = 'full_name';
  static const paramFirstName = 'first_name';
  static const paramLastName = 'last_name';
  static const paramEmail = 'email';
  static const paramGender = 'gender';
  static const paramPassword = 'password';
  static const paramContactNumber = 'contact_number';
  static const paramReferCode = 'refer_code';
  static const paramDeviceToken = 'device_token';
  static const paramLoginDevice = 'login_device';
  static const paramAppType = 'app_type';

  //Login
  static const paramLoginType = 'login_type';
  static const paramLoginId = 'login_id';
  static const paramProfileImage = 'profile_image';
  static const paramOtp = 'otp';
  static const paramNewPassword = 'new_password';

  //My Profile
  static const paramDescription = "description";
  static const paramEmergencyContact = "emergency_contact";

  //Change Password
  static const paramOldPassword = "old_password";

  //Order Detail
  static const paramRideId = "ride_id";

  //Home
  static const paramLatLong = "lat_long";
  static const paramFilterType = "filter_type";
  static const paramServiceCatId = "service_category_id";
  static const paramProductId = "product_id";
  static const paramQuantity = "quantity";
  static const paramSizeId = "size_id";
  static const paramColorId = "color_id";
  static const paramOptionsList = "option_id";
  static const paramFilterKey = "filter_key";
  static const paramViewAll = "view_all";

  //Search Store
  static const paramSearch = "search";
  static const paramCategoryList = "category_list";

  //Store Detail
  static const paramStoreId = "store_id";
  static const paramIsFavourite = "is_favourite";
  static const paramCategoryId = "category_id";
  static const paramBrandId = "brand_id";
  static const paramPage = "page";
  static const paramPerPage = "per_page";

  //Checkout
  static const paramPromoCodeId = "promocode_id";
  static const paramProductList = "product_list";
  static const paramPaymentType = "payment_type";
  static const paramAdditionalInfo = "additional_info";
  static const paramScheduleDateTime = "schedule_date_time";
  static const paramAddress = "address";
  static const paramPrescription = "prescription";
  static const paramUserTakenType = "user_taken_type";

  //Manage Address
  static const paramAddressId = "address_id";

  //Manage Card
  static const paramCardId = "card_id";

  //My wallet
  static const paramAmount = "amount";

  static const paramTransferId = "transfer_id";
  static const paramWalletProviderType = "wallet_provider_type";

  //Ride Home
  static const paramCurrentLat = "current_lat";
  static const paramCurrentLng = "current_long";

  //History
  static const paramTimeZone = "timezone";

  //Ride Book
  static const paramHandicap = "handicap";
  static const paramChildSeat = "child_seat";
  static const paramOrderAmount = "order_amount";
  static const paramAddressList = "address_list";
  static const paramEstimatedTime = "estimated_time";
  static const paramTotalDistance = "total_distance";
  static const paramServiceTypeId = "service_type_id";
  static const paramPickupDateTime = "pickup_date_time";
  static const paramPromoCode = "promo_code";
  static const paramCredit = "credit";
  static const paramContactNumberOfOther = "other_contact_number";
  static const paramBookForOther = "ride_for_other";
  static const paramGoodName = "parcel_name";

  // Courier Book

  //Ride Invoice
  static const paramRating = "rating";
  static const paramComment = "comment";
  static const paramTip = "tip";

  //Rental Detail
  static const paramVehicleTypeId = "vehicle_type_id";
  static const paramStartDateTime = "start_date_time";
  static const paramEndDateTime = "end_date_time";
  static const paramTotalKm = "total_km";
  static const paramPickupLocation = "pickup_location";
  static const paramPickupLat = "pickup_lat";
  static const paramPickupLong = "pickup_long";
  static const paramDropLocation = "drop_location";
  static const paramDropLat = "drop_lat";
  static const paramDropLong = "drop_long";
  static const paramRideStatus = "ride_status";
  static const paramReason = "reason";

  //Courier Booking Detail
  static const paramRecipientName = "recipient_name";
  static const paramHouseName = "house_name";

  static const paramRHouseName = "recipient_house_name";
  static const paramCourierType = "courier_type";
  static const paramPurchaseItems = "purchase_items";
  static const paramRecipientContactNo = "recipient_contact_no";
  static const paramGoodsHeight = "goods_height";
  static const paramGoodsWidth = "goods_width";
  static const paramGoodsLength = "goods_length";
  static const paramGoodsWeight = "goods_weight";
  static const paramDeliveryInstruction = "delivery_instruction";
  static const paramWeightId = "weight_id";
  static const paramSenderLandmark = "sender_landmark";
  static const paramRecipientLandmark = "recipient_landmark";
  static const paramEstimatePrice = "estimate_price";
  static const paramShopName = "shop_name";
  static const paramShopLandmark = "shop_landmark";
  static const paramSenderName = "sender_name";
  static const paramSenderContactNumber = "sender_contact_number";

  //Running Ride
  static const paramCancelReason = "cancel_reason";

  //Deliveries Order Detail
  static const paramOrderId = "order_id";
  static const paramUpdateStatus = "update_status";
  static const paramRate = "rate";

  //Track Order
  static const paramDriverRating = "driver_rating";
  static const paramDriverComment = "driver_comment";
  static const paramStoreRating = "store_rating";
  static const paramStoreComment = "store_comment";

  //Add Card
  static const paramHolderName = "holder_name";
  static const paramCardNumber = "card_number";
  static const paramMonth = "month";
  static const paramYear = "year";
  static const paramCvv = "cvv";

  //Manage Address
  static const paramType = "type";
  static const paramLat = "lat";
  static const paramLong = "long";
  static const paramFlatNo = "flat_no";
  static const paramLandmark = "landmark";
}
