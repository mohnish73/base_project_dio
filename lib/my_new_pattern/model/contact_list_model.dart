// class ContactListModel {
//   Data? data;
//   String? message;
//   int? status;
//
//   ContactListModel({this.data, this.message, this.status});
//
//   ContactListModel.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     message = json['message'];
//     status = json['status'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     data['message'] = this.message;
//     data['status'] = this.status;
//     return data;
//   }
// }
//
// class Data {
//   List<ContactDetails>? contactDetails;
//   Page? page;
//   int? totalRecord;
//
//   Data({this.contactDetails, this.page, this.totalRecord});
//
//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['contactDetails'] != null) {
//       contactDetails = <ContactDetails>[];
//       json['contactDetails'].forEach((v) {
//         contactDetails!.add(new ContactDetails.fromJson(v));
//       });
//     }
//     page = json['page'] != null ? new Page.fromJson(json['page']) : null;
//     totalRecord = json['totalRecord'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.contactDetails != null) {
//       data['contactDetails'] =
//           this.contactDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.page != null) {
//       data['page'] = this.page!.toJson();
//     }
//     data['totalRecord'] = this.totalRecord;
//     return data;
//   }
// }
//
// class ContactDetails {
//   int? id;
//   String? fullName;
//   String? contactCountryCode;
//   String? contactPhoneNumber;
//   String? contactState;
//   String? contactAddress;
//   String? email;
//   String? userId;
//   String? adminUserId;
//   List<String>? groupName;
//   List<String>? groupId;
//   String? website;
//   String? jobTitle;
//   String? companyName;
//   String? companyCountryCode;
//   String? companyPhoneNumber;
//   String? companyState;
//   String? companyAddress;
//   String? facebookUrl;
//   String? instagramUrl;
//   String? photoUrl;
//   String? latitude;
//   String? longitude;
//   bool? sendwhatsapp;
//   String? createdBy;
//   int? createdDate;
//   int? updatedDate;
//   String? country;
//   String? contactCountryCodeInLetter;
//   String? contactCountryFlag;
//   String? companyCountryCodeInLetter;
//   String? companyCountryFlag;
//   Null? city;
//   String? contactSource;
//   String? userName;
//   String? subject;
//   String? comment;
//   List<CustomFields>? customFields;
//
//   ContactDetails(
//       {this.id,
//         this.fullName,
//         this.contactCountryCode,
//         this.contactPhoneNumber,
//         this.contactState,
//         this.contactAddress,
//         this.email,
//         this.userId,
//         this.adminUserId,
//         this.groupName,
//         this.groupId,
//         this.website,
//         this.jobTitle,
//         this.companyName,
//         this.companyCountryCode,
//         this.companyPhoneNumber,
//         this.companyState,
//         this.companyAddress,
//         this.facebookUrl,
//         this.instagramUrl,
//         this.photoUrl,
//         this.latitude,
//         this.longitude,
//         this.sendwhatsapp,
//         this.createdBy,
//         this.createdDate,
//         this.updatedDate,
//         this.country,
//         this.contactCountryCodeInLetter,
//         this.contactCountryFlag,
//         this.companyCountryCodeInLetter,
//         this.companyCountryFlag,
//         this.city,
//         this.contactSource,
//         this.userName,
//         this.subject,
//         this.comment,
//         this.customFields});
//
//   ContactDetails.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     fullName = json['fullName'];
//     contactCountryCode = json['contactCountryCode'];
//     contactPhoneNumber = json['contactPhoneNumber'];
//     contactState = json['contactState'];
//     contactAddress = json['contactAddress'];
//     email = json['email'];
//     userId = json['userId'];
//     adminUserId = json['adminUserId'];
//     groupName = json['groupName'].cast<String>();
//     groupId = json['groupId'].cast<String>();
//     website = json['website'];
//     jobTitle = json['jobTitle'];
//     companyName = json['companyName'];
//     companyCountryCode = json['companyCountryCode'];
//     companyPhoneNumber = json['companyPhoneNumber'];
//     companyState = json['companyState'];
//     companyAddress = json['companyAddress'];
//     facebookUrl = json['facebookUrl'];
//     instagramUrl = json['instagramUrl'];
//     photoUrl = json['photoUrl'];
//     latitude = json['latitude'];
//     longitude = json['longitude'];
//     sendwhatsapp = json['sendwhatsapp'];
//     createdBy = json['createdBy'];
//     createdDate = json['createdDate'];
//     updatedDate = json['updatedDate'];
//     country = json['country'];
//     contactCountryCodeInLetter = json['contactCountryCodeInLetter'];
//     contactCountryFlag = json['contactCountryFlag'];
//     companyCountryCodeInLetter = json['companyCountryCodeInLetter'];
//     companyCountryFlag = json['companyCountryFlag'];
//     city = json['city'];
//     contactSource = json['contactSource'];
//     userName = json['userName'];
//     subject = json['subject'];
//     comment = json['comment'];
//     if (json['customFields'] != null) {
//       customFields = <CustomFields>[];
//       json['customFields'].forEach((v) {
//         customFields!.add(new CustomFields.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['fullName'] = this.fullName;
//     data['contactCountryCode'] = this.contactCountryCode;
//     data['contactPhoneNumber'] = this.contactPhoneNumber;
//     data['contactState'] = this.contactState;
//     data['contactAddress'] = this.contactAddress;
//     data['email'] = this.email;
//     data['userId'] = this.userId;
//     data['adminUserId'] = this.adminUserId;
//     data['groupName'] = this.groupName;
//     data['groupId'] = this.groupId;
//     data['website'] = this.website;
//     data['jobTitle'] = this.jobTitle;
//     data['companyName'] = this.companyName;
//     data['companyCountryCode'] = this.companyCountryCode;
//     data['companyPhoneNumber'] = this.companyPhoneNumber;
//     data['companyState'] = this.companyState;
//     data['companyAddress'] = this.companyAddress;
//     data['facebookUrl'] = this.facebookUrl;
//     data['instagramUrl'] = this.instagramUrl;
//     data['photoUrl'] = this.photoUrl;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     data['sendwhatsapp'] = this.sendwhatsapp;
//     data['createdBy'] = this.createdBy;
//     data['createdDate'] = this.createdDate;
//     data['updatedDate'] = this.updatedDate;
//     data['country'] = this.country;
//     data['contactCountryCodeInLetter'] = this.contactCountryCodeInLetter;
//     data['contactCountryFlag'] = this.contactCountryFlag;
//     data['companyCountryCodeInLetter'] = this.companyCountryCodeInLetter;
//     data['companyCountryFlag'] = this.companyCountryFlag;
//     data['city'] = this.city;
//     data['contactSource'] = this.contactSource;
//     data['userName'] = this.userName;
//     data['subject'] = this.subject;
//     data['comment'] = this.comment;
//     if (this.customFields != null) {
//       data['customFields'] = this.customFields!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class CustomFields {
//   String? fieldName;
//   List<Null>? fieldValue;
//   String? fieldType;
//   List<Null>? dropdownOptions;
//   List<Null>? dropdownSelectedValues;
//
//   CustomFields(
//       {this.fieldName,
//         this.fieldValue,
//         this.fieldType,
//         this.dropdownOptions,
//         this.dropdownSelectedValues});
//
//   CustomFields.fromJson(Map<String, dynamic> json) {
//     fieldName = json['fieldName'];
//     if (json['fieldValue'] != null) {
//       fieldValue = <Null>[];
//       json['fieldValue'].forEach((v) {
//         fieldValue!.add(new Null.fromJson(v));
//       });
//     }
//     fieldType = json['fieldType'];
//     if (json['dropdownOptions'] != null) {
//       dropdownOptions = <Null>[];
//       json['dropdownOptions'].forEach((v) {
//         dropdownOptions!.add(new Null.fromJson(v));
//       });
//     }
//     if (json['dropdownSelectedValues'] != null) {
//       dropdownSelectedValues = <Null>[];
//       json['dropdownSelectedValues'].forEach((v) {
//         dropdownSelectedValues!.add(new Null.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['fieldName'] = this.fieldName;
//     if (this.fieldValue != null) {
//       data['fieldValue'] = this.fieldValue!.map((v) => v.toJson()).toList();
//     }
//     data['fieldType'] = this.fieldType;
//     if (this.dropdownOptions != null) {
//       data['dropdownOptions'] =
//           this.dropdownOptions!.map((v) => v.toJson()).toList();
//     }
//     if (this.dropdownSelectedValues != null) {
//       data['dropdownSelectedValues'] =
//           this.dropdownSelectedValues!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Page {
//   Sort? sort;
//   int? offset;
//   int? pageNumber;
//   int? pageSize;
//   bool? paged;
//   bool? unpaged;
//
//   Page(
//       {this.sort,
//         this.offset,
//         this.pageNumber,
//         this.pageSize,
//         this.paged,
//         this.unpaged});
//
//   Page.fromJson(Map<String, dynamic> json) {
//     sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
//     offset = json['offset'];
//     pageNumber = json['pageNumber'];
//     pageSize = json['pageSize'];
//     paged = json['paged'];
//     unpaged = json['unpaged'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.sort != null) {
//       data['sort'] = this.sort!.toJson();
//     }
//     data['offset'] = this.offset;
//     data['pageNumber'] = this.pageNumber;
//     data['pageSize'] = this.pageSize;
//     data['paged'] = this.paged;
//     data['unpaged'] = this.unpaged;
//     return data;
//   }
// }
//
// class Sort {
//   bool? empty;
//   bool? sorted;
//   bool? unsorted;
//
//   Sort({this.empty, this.sorted, this.unsorted});
//
//   Sort.fromJson(Map<String, dynamic> json) {
//     empty = json['empty'];
//     sorted = json['sorted'];
//     unsorted = json['unsorted'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['empty'] = this.empty;
//     data['sorted'] = this.sorted;
//     data['unsorted'] = this.unsorted;
//     return data;
//   }
// }
