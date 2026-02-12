// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_contact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllContactResponse _$AllContactResponseFromJson(Map<String, dynamic> json) =>
    _AllContactResponse(
      data:
          json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AllContactResponseToJson(_AllContactResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  responseInfo: json['responseInfo'],
  contactDetails:
      (json['contactDetails'] as List<dynamic>?)
          ?.map((e) => ContactDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
  page:
      json['page'] == null
          ? null
          : Page.fromJson(json['page'] as Map<String, dynamic>),
  totalRecord: (json['totalRecord'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'responseInfo': instance.responseInfo,
  'contactDetails': instance.contactDetails,
  'page': instance.page,
  'totalRecord': instance.totalRecord,
};

_Page _$PageFromJson(Map<String, dynamic> json) => _Page(
  sort:
      json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
  offset: (json['offset'] as num?)?.toInt(),
  pageNumber: (json['pageNumber'] as num?)?.toInt(),
  pageSize: (json['pageSize'] as num?)?.toInt(),
  paged: json['paged'] as bool?,
  unpaged: json['unpaged'] as bool?,
);

Map<String, dynamic> _$PageToJson(_Page instance) => <String, dynamic>{
  'sort': instance.sort,
  'offset': instance.offset,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'paged': instance.paged,
  'unpaged': instance.unpaged,
};

_Sort _$SortFromJson(Map<String, dynamic> json) => _Sort(
  empty: json['empty'] as bool?,
  sorted: json['sorted'] as bool?,
  unsorted: json['unsorted'] as bool?,
);

Map<String, dynamic> _$SortToJson(_Sort instance) => <String, dynamic>{
  'empty': instance.empty,
  'sorted': instance.sorted,
  'unsorted': instance.unsorted,
};

_ContactDetails _$ContactDetailsFromJson(Map<String, dynamic> json) =>
    _ContactDetails(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      contactCountryCode: json['contactCountryCode'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      contactState: json['contactState'],
      contactAddress: json['contactAddress'],
      email: json['email'] as String?,
      userId: json['userId'] as String?,
      adminUserId: json['adminUserId'],
      groupName: json['groupName'] as List<dynamic>?,
      groupId: json['groupId'] as List<dynamic>?,
      website: json['website'],
      jobTitle: json['jobTitle'],
      companyName: json['companyName'],
      companyCountryCode: json['companyCountryCode'],
      companyPhoneNumber: json['companyPhoneNumber'],
      companyState: json['companyState'],
      companyAddress: json['companyAddress'],
      facebookUrl: json['facebookUrl'],
      instagramUrl: json['instagramUrl'],
      photoUrl: json['photoUrl'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      sendwhatsapp: json['sendwhatsapp'] as bool?,
      createdBy: json['createdBy'],
      createdDate: (json['createdDate'] as num?)?.toInt(),
      updatedDate: (json['updatedDate'] as num?)?.toInt(),
      country: json['country'],
      contactCountryCodeInLetter: json['contactCountryCodeInLetter'],
      contactCountryFlag: json['contactCountryFlag'],
      companyCountryCodeInLetter: json['companyCountryCodeInLetter'],
      companyCountryFlag: json['companyCountryFlag'],
      city: json['city'],
      contactSource: json['contactSource'] as String?,
      userName: json['userName'] as String?,
      subject: json['subject'] as String?,
      comment: json['comment'] as String?,
      customFields: json['customFields'] as List<dynamic>?,
    );

Map<String, dynamic> _$ContactDetailsToJson(_ContactDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'contactCountryCode': instance.contactCountryCode,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'contactState': instance.contactState,
      'contactAddress': instance.contactAddress,
      'email': instance.email,
      'userId': instance.userId,
      'adminUserId': instance.adminUserId,
      'groupName': instance.groupName,
      'groupId': instance.groupId,
      'website': instance.website,
      'jobTitle': instance.jobTitle,
      'companyName': instance.companyName,
      'companyCountryCode': instance.companyCountryCode,
      'companyPhoneNumber': instance.companyPhoneNumber,
      'companyState': instance.companyState,
      'companyAddress': instance.companyAddress,
      'facebookUrl': instance.facebookUrl,
      'instagramUrl': instance.instagramUrl,
      'photoUrl': instance.photoUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'sendwhatsapp': instance.sendwhatsapp,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'updatedDate': instance.updatedDate,
      'country': instance.country,
      'contactCountryCodeInLetter': instance.contactCountryCodeInLetter,
      'contactCountryFlag': instance.contactCountryFlag,
      'companyCountryCodeInLetter': instance.companyCountryCodeInLetter,
      'companyCountryFlag': instance.companyCountryFlag,
      'city': instance.city,
      'contactSource': instance.contactSource,
      'userName': instance.userName,
      'subject': instance.subject,
      'comment': instance.comment,
      'customFields': instance.customFields,
    };
