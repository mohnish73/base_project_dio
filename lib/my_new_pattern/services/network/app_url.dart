class AppUrl {
//'https://vcontact-cms-api.vseen.my'
  static const String baseUrl =
      'https://vcontact-cms-api.vseen.my'; // 'http://vcontact-api-142463463.ap-southeast-1.elb.amazonaws.com' ;



  // static const String baseUrl = 'http://vcontact-api-142463463.ap-southeast-1.elb.amazonaws.com' ;

  // static const String signUp = '$baseUrl/auth/signup' ;
  static const String signUp = '$baseUrl/admin/adminCreation' ;
  static const String login = '$baseUrl/auth/login' ;
  static const String forgotPassword = '$baseUrl/auth/resetPasswordforUser' ;
  // static const String getProfile = '$baseUrl/auth/getUser' ;
  static const String getProfile = '$baseUrl/admin/getUser';
  // static const String updateUser = '$baseUrl/auth/updateUser' ;
  static const String updateUserChild = '$baseUrl/admin/updateChildUser' ;
  static const String updateUserParent = '$baseUrl/admin/updateParentUser' ;
  static const String updatePassword = '$baseUrl/auth/updatePassword' ;

  /// contact

  static const String createContact = '$baseUrl/contact/createcontact' ;
  static const String uploadPhotoContact = '$baseUrl/contact/uploadPhotoContact' ;
  static const String getAllContact = '$baseUrl/contact/getAllContact' ;
  static const String getAllContactByAdmin = '$baseUrl/contact/getAllContactByAdmin' ;
  static const String deleteContactById = '$baseUrl/contact/deleteContactById' ;
  static const String getAllContactWithPagination = '$baseUrl/contact/getAllContactWithPagination';
  static const String getAllContactByAdminWithPagination = '$baseUrl/contact/getAllContactByAdminWithPagination';



  //card

  static const String createCard='$baseUrl/card/createcard';
  static const String getAllCard='$baseUrl/card/getAllCardss';
  static const String getAllCardsByAdmin='$baseUrl/card/getAllCardsByAdmin';
  static const String getCard='$baseUrl/card/getCard';
  static const String uploadPhotoCard='$baseUrl/card/uploadPhotoCard';
  static const String getCardByUsingQRCode='$baseUrl/card/getCardByUsingQRCode';
  static const String getCardByUsingActivationCode='$baseUrl/card/getCardByUsingActivationCode';
  static const String deleteCardById = '$baseUrl/card/deleteCardById' ;
  static const String getAllCardsWithPagination = '$baseUrl/card/getAllCardsWithPagination';
  static const String getAllCardsByAdminWithPAgination = '$baseUrl/card/getAllCardsByAdminWithPAgination';
  static const String getCardByUsingActivationCodeByDeepLink = '$baseUrl/deep/getCardByUsingActivationCode';
  static const String webPageApi = '$baseUrl/deep/';





  //card

  //history
  static const String addHistory='$baseUrl/history/addhistory';
  static const String getAllHistory='$baseUrl/history/getAllHistory';
  static const String getAllHistoryByAdmin='$baseUrl/history/getAllHistoryByAdmin';
  static const String deleteHistory='$baseUrl/history/deleteHistory';
  static const String getAllHistoryWithPagination = '$baseUrl/history/getAllHistoryWithPagination';
  static const String getAllHistoryByAdminWithPagination = '$baseUrl/history/getAllHistoryByAdminWithPagination';



  // group
  static const String createGroup='$baseUrl/group/creategroup';
  static const String deleteGroup='$baseUrl/group/deleteGroup';
  static const String  getAllGroups='$baseUrl/group/getAllGroups';
  static const String  getAllGroupsByAdmin='$baseUrl/group/getAllGroupsByAdmin';
  static const String  getGroup='$baseUrl/group/getGroup';

  //plans

  static const String  planByCountryCode='$baseUrl/plans/planByCountryCode';
  static const String  choosePlan='$baseUrl/subscription/choosePlan';
  static const String  createPaymentIntent='$baseUrl/subscription/createPaymentIntent';
  static const String  getUserSubscriptionPlanDetails='$baseUrl/subscription/getUserSubscriptionPlanUsageDetails';
  static const String  attachCustomerToPaymentMethod='$baseUrl/subscription/attachCustomerToPaymentMethod';
  static const String getPaymentMethods = '$baseUrl/subscription/getPaymentMethods';



  // user

  static const String  addNewUser='$baseUrl/admin/addNewUser';
  static const String  updateChildUser='$baseUrl/admin/updateChildUser';




  /// Contacts Analytics
  static const String contactsTotalContactsPerUser =
      '$baseUrl/contacts/analytics/totalContactsPerUser';

  static const String contactsGetUserContactsAnalyticsDeltaByPeriod =
      '$baseUrl/contacts/analytics/getUserContactsAnalyticsDeltaByPeriod';

  static const String contactsGetOverAllContactsAnalyticsWithinWeek =
      '$baseUrl/contacts/analytics/getOverAllContactsAnalyticsWithinWeek';

  static const String contactsGetTopContactDatesOfUser =
      '$baseUrl/contacts/analytics/getTopContactDatesOfUser';

  static const String contactsGetContactsAnalyticsPerUserByTimeRange =
      '$baseUrl/contacts/analytics/getContactsAnalyticsPerUserByTimeRange';

  static const String contactsGetContactMetricsByDateRange =
      '$baseUrl/contacts/analytics/getContactMetricsByDateRange';

  static const String getTopContactDatesOfUser =
      '$baseUrl/contacts/analytics/getTopContactDatesOfUser';


  static const String dashboardGetUserCardAnalyticsDeltaByPeriod =
      '$baseUrl/dashboard/analytics/getUserCardAnalyticsDeltaByPeriod';



  static const String getCardsSendCountDetails =
      '$baseUrl/dashboard/analytics/getCardsSendCountDetails';

  static const String getTopInvitedContacts =
      '$baseUrl/dashboard/analytics/getTopInvitedContacts';

  static const String getOverAllCardsIncreaseRateWithinWeek =
      '$baseUrl/dashboard/analytics/getOverAllCardsIncreaseRateWithinWeek';



}
