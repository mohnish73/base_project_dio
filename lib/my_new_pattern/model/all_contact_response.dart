import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_contact_response.freezed.dart';
part 'all_contact_response.g.dart';

@freezed
abstract class AllContactResponse with _$AllContactResponse {
  const factory AllContactResponse({
    @JsonKey(name: 'data') Data? data,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'status') int? status,
  }) = _AllContactResponse;

  factory AllContactResponse.fromJson(Map<String, Object?> json) => _$AllContactResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'responseInfo') dynamic responseInfo,
    @JsonKey(name: 'contactDetails') List<ContactDetails>? contactDetails,
    @JsonKey(name: 'page') Page? page,
    @JsonKey(name: 'totalRecord') int? totalRecord,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
abstract class Page with _$Page {
  const factory Page({
    @JsonKey(name: 'sort') Sort? sort,
    @JsonKey(name: 'offset') int? offset,
    @JsonKey(name: 'pageNumber') int? pageNumber,
    @JsonKey(name: 'pageSize') int? pageSize,
    @JsonKey(name: 'paged') bool? paged,
    @JsonKey(name: 'unpaged') bool? unpaged,
  }) = _Page;

  factory Page.fromJson(Map<String, Object?> json) => _$PageFromJson(json);
}

@freezed
abstract class Sort with _$Sort {
  const factory Sort({
    @JsonKey(name: 'empty') bool? empty,
    @JsonKey(name: 'sorted') bool? sorted,
    @JsonKey(name: 'unsorted') bool? unsorted,
  }) = _Sort;

  factory Sort.fromJson(Map<String, Object?> json) => _$SortFromJson(json);
}

@freezed
abstract class ContactDetails with _$ContactDetails {
  const factory ContactDetails({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'contactCountryCode') String? contactCountryCode,
    @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
    @JsonKey(name: 'contactState') dynamic contactState,
    @JsonKey(name: 'contactAddress') dynamic contactAddress,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'adminUserId') dynamic adminUserId,
    @JsonKey(name: 'groupName') List<dynamic>? groupName,
    @JsonKey(name: 'groupId') List<dynamic>? groupId,
    @JsonKey(name: 'website') dynamic website,
    @JsonKey(name: 'jobTitle') dynamic jobTitle,
    @JsonKey(name: 'companyName') dynamic companyName,
    @JsonKey(name: 'companyCountryCode') dynamic companyCountryCode,
    @JsonKey(name: 'companyPhoneNumber') dynamic companyPhoneNumber,
    @JsonKey(name: 'companyState') dynamic companyState,
    @JsonKey(name: 'companyAddress') dynamic companyAddress,
    @JsonKey(name: 'facebookUrl') dynamic facebookUrl,
    @JsonKey(name: 'instagramUrl') dynamic instagramUrl,
    @JsonKey(name: 'photoUrl') dynamic photoUrl,
    @JsonKey(name: 'latitude') dynamic latitude,
    @JsonKey(name: 'longitude') dynamic longitude,
    @JsonKey(name: 'sendwhatsapp') bool? sendwhatsapp,
    @JsonKey(name: 'createdBy') dynamic createdBy,
    @JsonKey(name: 'createdDate') int? createdDate,
    @JsonKey(name: 'updatedDate') int? updatedDate,
    @JsonKey(name: 'country') dynamic country,
    @JsonKey(name: 'contactCountryCodeInLetter') dynamic contactCountryCodeInLetter,
    @JsonKey(name: 'contactCountryFlag') dynamic contactCountryFlag,
    @JsonKey(name: 'companyCountryCodeInLetter') dynamic companyCountryCodeInLetter,
    @JsonKey(name: 'companyCountryFlag') dynamic companyCountryFlag,
    @JsonKey(name: 'city') dynamic city,
    @JsonKey(name: 'contactSource') String? contactSource,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'customFields') List<dynamic>? customFields,
  }) = _ContactDetails;

  factory ContactDetails.fromJson(Map<String, Object?> json) => _$ContactDetailsFromJson(json);
}

