// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_contact_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllContactResponse {

@JsonKey(name: 'data') Data? get data;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'status') int? get status;
/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllContactResponseCopyWith<AllContactResponse> get copyWith => _$AllContactResponseCopyWithImpl<AllContactResponse>(this as AllContactResponse, _$identity);

  /// Serializes this AllContactResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllContactResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,status);

@override
String toString() {
  return 'AllContactResponse(data: $data, message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class $AllContactResponseCopyWith<$Res>  {
  factory $AllContactResponseCopyWith(AllContactResponse value, $Res Function(AllContactResponse) _then) = _$AllContactResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') Data? data,@JsonKey(name: 'message') String? message,@JsonKey(name: 'status') int? status
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AllContactResponseCopyWithImpl<$Res>
    implements $AllContactResponseCopyWith<$Res> {
  _$AllContactResponseCopyWithImpl(this._self, this._then);

  final AllContactResponse _self;
  final $Res Function(AllContactResponse) _then;

/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AllContactResponse].
extension AllContactResponsePatterns on AllContactResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllContactResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllContactResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllContactResponse value)  $default,){
final _that = this;
switch (_that) {
case _AllContactResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllContactResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AllContactResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  Data? data, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'status')  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllContactResponse() when $default != null:
return $default(_that.data,_that.message,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  Data? data, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'status')  int? status)  $default,) {final _that = this;
switch (_that) {
case _AllContactResponse():
return $default(_that.data,_that.message,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  Data? data, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'status')  int? status)?  $default,) {final _that = this;
switch (_that) {
case _AllContactResponse() when $default != null:
return $default(_that.data,_that.message,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllContactResponse implements AllContactResponse {
  const _AllContactResponse({@JsonKey(name: 'data') this.data, @JsonKey(name: 'message') this.message, @JsonKey(name: 'status') this.status});
  factory _AllContactResponse.fromJson(Map<String, dynamic> json) => _$AllContactResponseFromJson(json);

@override@JsonKey(name: 'data') final  Data? data;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'status') final  int? status;

/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllContactResponseCopyWith<_AllContactResponse> get copyWith => __$AllContactResponseCopyWithImpl<_AllContactResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllContactResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllContactResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,status);

@override
String toString() {
  return 'AllContactResponse(data: $data, message: $message, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AllContactResponseCopyWith<$Res> implements $AllContactResponseCopyWith<$Res> {
  factory _$AllContactResponseCopyWith(_AllContactResponse value, $Res Function(_AllContactResponse) _then) = __$AllContactResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') Data? data,@JsonKey(name: 'message') String? message,@JsonKey(name: 'status') int? status
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AllContactResponseCopyWithImpl<$Res>
    implements _$AllContactResponseCopyWith<$Res> {
  __$AllContactResponseCopyWithImpl(this._self, this._then);

  final _AllContactResponse _self;
  final $Res Function(_AllContactResponse) _then;

/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? status = freezed,}) {
  return _then(_AllContactResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AllContactResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: 'responseInfo') dynamic get responseInfo;@JsonKey(name: 'contactDetails') List<ContactDetails>? get contactDetails;@JsonKey(name: 'page') Page? get page;@JsonKey(name: 'totalRecord') int? get totalRecord;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&const DeepCollectionEquality().equals(other.responseInfo, responseInfo)&&const DeepCollectionEquality().equals(other.contactDetails, contactDetails)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalRecord, totalRecord) || other.totalRecord == totalRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(responseInfo),const DeepCollectionEquality().hash(contactDetails),page,totalRecord);

@override
String toString() {
  return 'Data(responseInfo: $responseInfo, contactDetails: $contactDetails, page: $page, totalRecord: $totalRecord)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'responseInfo') dynamic responseInfo,@JsonKey(name: 'contactDetails') List<ContactDetails>? contactDetails,@JsonKey(name: 'page') Page? page,@JsonKey(name: 'totalRecord') int? totalRecord
});


$PageCopyWith<$Res>? get page;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responseInfo = freezed,Object? contactDetails = freezed,Object? page = freezed,Object? totalRecord = freezed,}) {
  return _then(_self.copyWith(
responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as dynamic,contactDetails: freezed == contactDetails ? _self.contactDetails : contactDetails // ignore: cast_nullable_to_non_nullable
as List<ContactDetails>?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page?,totalRecord: freezed == totalRecord ? _self.totalRecord : totalRecord // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $PageCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'responseInfo')  dynamic responseInfo, @JsonKey(name: 'contactDetails')  List<ContactDetails>? contactDetails, @JsonKey(name: 'page')  Page? page, @JsonKey(name: 'totalRecord')  int? totalRecord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.responseInfo,_that.contactDetails,_that.page,_that.totalRecord);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'responseInfo')  dynamic responseInfo, @JsonKey(name: 'contactDetails')  List<ContactDetails>? contactDetails, @JsonKey(name: 'page')  Page? page, @JsonKey(name: 'totalRecord')  int? totalRecord)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.responseInfo,_that.contactDetails,_that.page,_that.totalRecord);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'responseInfo')  dynamic responseInfo, @JsonKey(name: 'contactDetails')  List<ContactDetails>? contactDetails, @JsonKey(name: 'page')  Page? page, @JsonKey(name: 'totalRecord')  int? totalRecord)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.responseInfo,_that.contactDetails,_that.page,_that.totalRecord);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: 'responseInfo') this.responseInfo, @JsonKey(name: 'contactDetails') final  List<ContactDetails>? contactDetails, @JsonKey(name: 'page') this.page, @JsonKey(name: 'totalRecord') this.totalRecord}): _contactDetails = contactDetails;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: 'responseInfo') final  dynamic responseInfo;
 final  List<ContactDetails>? _contactDetails;
@override@JsonKey(name: 'contactDetails') List<ContactDetails>? get contactDetails {
  final value = _contactDetails;
  if (value == null) return null;
  if (_contactDetails is EqualUnmodifiableListView) return _contactDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'page') final  Page? page;
@override@JsonKey(name: 'totalRecord') final  int? totalRecord;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other.responseInfo, responseInfo)&&const DeepCollectionEquality().equals(other._contactDetails, _contactDetails)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalRecord, totalRecord) || other.totalRecord == totalRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(responseInfo),const DeepCollectionEquality().hash(_contactDetails),page,totalRecord);

@override
String toString() {
  return 'Data(responseInfo: $responseInfo, contactDetails: $contactDetails, page: $page, totalRecord: $totalRecord)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'responseInfo') dynamic responseInfo,@JsonKey(name: 'contactDetails') List<ContactDetails>? contactDetails,@JsonKey(name: 'page') Page? page,@JsonKey(name: 'totalRecord') int? totalRecord
});


@override $PageCopyWith<$Res>? get page;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responseInfo = freezed,Object? contactDetails = freezed,Object? page = freezed,Object? totalRecord = freezed,}) {
  return _then(_Data(
responseInfo: freezed == responseInfo ? _self.responseInfo : responseInfo // ignore: cast_nullable_to_non_nullable
as dynamic,contactDetails: freezed == contactDetails ? _self._contactDetails : contactDetails // ignore: cast_nullable_to_non_nullable
as List<ContactDetails>?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page?,totalRecord: freezed == totalRecord ? _self.totalRecord : totalRecord // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageCopyWith<$Res>? get page {
    if (_self.page == null) {
    return null;
  }

  return $PageCopyWith<$Res>(_self.page!, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// @nodoc
mixin _$Page {

@JsonKey(name: 'sort') Sort? get sort;@JsonKey(name: 'offset') int? get offset;@JsonKey(name: 'pageNumber') int? get pageNumber;@JsonKey(name: 'pageSize') int? get pageSize;@JsonKey(name: 'paged') bool? get paged;@JsonKey(name: 'unpaged') bool? get unpaged;
/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageCopyWith<Page> get copyWith => _$PageCopyWithImpl<Page>(this as Page, _$identity);

  /// Serializes this Page to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Page&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.paged, paged) || other.paged == paged)&&(identical(other.unpaged, unpaged) || other.unpaged == unpaged));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,offset,pageNumber,pageSize,paged,unpaged);

@override
String toString() {
  return 'Page(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, unpaged: $unpaged)';
}


}

/// @nodoc
abstract mixin class $PageCopyWith<$Res>  {
  factory $PageCopyWith(Page value, $Res Function(Page) _then) = _$PageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sort') Sort? sort,@JsonKey(name: 'offset') int? offset,@JsonKey(name: 'pageNumber') int? pageNumber,@JsonKey(name: 'pageSize') int? pageSize,@JsonKey(name: 'paged') bool? paged,@JsonKey(name: 'unpaged') bool? unpaged
});


$SortCopyWith<$Res>? get sort;

}
/// @nodoc
class _$PageCopyWithImpl<$Res>
    implements $PageCopyWith<$Res> {
  _$PageCopyWithImpl(this._self, this._then);

  final Page _self;
  final $Res Function(Page) _then;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = freezed,Object? offset = freezed,Object? pageNumber = freezed,Object? pageSize = freezed,Object? paged = freezed,Object? unpaged = freezed,}) {
  return _then(_self.copyWith(
sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as Sort?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: freezed == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,paged: freezed == paged ? _self.paged : paged // ignore: cast_nullable_to_non_nullable
as bool?,unpaged: freezed == unpaged ? _self.unpaged : unpaged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
    return null;
  }

  return $SortCopyWith<$Res>(_self.sort!, (value) {
    return _then(_self.copyWith(sort: value));
  });
}
}


/// Adds pattern-matching-related methods to [Page].
extension PagePatterns on Page {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Page value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Page value)  $default,){
final _that = this;
switch (_that) {
case _Page():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Page value)?  $default,){
final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort')  Sort? sort, @JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'pageNumber')  int? pageNumber, @JsonKey(name: 'pageSize')  int? pageSize, @JsonKey(name: 'paged')  bool? paged, @JsonKey(name: 'unpaged')  bool? unpaged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that.sort,_that.offset,_that.pageNumber,_that.pageSize,_that.paged,_that.unpaged);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sort')  Sort? sort, @JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'pageNumber')  int? pageNumber, @JsonKey(name: 'pageSize')  int? pageSize, @JsonKey(name: 'paged')  bool? paged, @JsonKey(name: 'unpaged')  bool? unpaged)  $default,) {final _that = this;
switch (_that) {
case _Page():
return $default(_that.sort,_that.offset,_that.pageNumber,_that.pageSize,_that.paged,_that.unpaged);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sort')  Sort? sort, @JsonKey(name: 'offset')  int? offset, @JsonKey(name: 'pageNumber')  int? pageNumber, @JsonKey(name: 'pageSize')  int? pageSize, @JsonKey(name: 'paged')  bool? paged, @JsonKey(name: 'unpaged')  bool? unpaged)?  $default,) {final _that = this;
switch (_that) {
case _Page() when $default != null:
return $default(_that.sort,_that.offset,_that.pageNumber,_that.pageSize,_that.paged,_that.unpaged);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Page implements Page {
  const _Page({@JsonKey(name: 'sort') this.sort, @JsonKey(name: 'offset') this.offset, @JsonKey(name: 'pageNumber') this.pageNumber, @JsonKey(name: 'pageSize') this.pageSize, @JsonKey(name: 'paged') this.paged, @JsonKey(name: 'unpaged') this.unpaged});
  factory _Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

@override@JsonKey(name: 'sort') final  Sort? sort;
@override@JsonKey(name: 'offset') final  int? offset;
@override@JsonKey(name: 'pageNumber') final  int? pageNumber;
@override@JsonKey(name: 'pageSize') final  int? pageSize;
@override@JsonKey(name: 'paged') final  bool? paged;
@override@JsonKey(name: 'unpaged') final  bool? unpaged;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageCopyWith<_Page> get copyWith => __$PageCopyWithImpl<_Page>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Page&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.paged, paged) || other.paged == paged)&&(identical(other.unpaged, unpaged) || other.unpaged == unpaged));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sort,offset,pageNumber,pageSize,paged,unpaged);

@override
String toString() {
  return 'Page(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, unpaged: $unpaged)';
}


}

/// @nodoc
abstract mixin class _$PageCopyWith<$Res> implements $PageCopyWith<$Res> {
  factory _$PageCopyWith(_Page value, $Res Function(_Page) _then) = __$PageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sort') Sort? sort,@JsonKey(name: 'offset') int? offset,@JsonKey(name: 'pageNumber') int? pageNumber,@JsonKey(name: 'pageSize') int? pageSize,@JsonKey(name: 'paged') bool? paged,@JsonKey(name: 'unpaged') bool? unpaged
});


@override $SortCopyWith<$Res>? get sort;

}
/// @nodoc
class __$PageCopyWithImpl<$Res>
    implements _$PageCopyWith<$Res> {
  __$PageCopyWithImpl(this._self, this._then);

  final _Page _self;
  final $Res Function(_Page) _then;

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sort = freezed,Object? offset = freezed,Object? pageNumber = freezed,Object? pageSize = freezed,Object? paged = freezed,Object? unpaged = freezed,}) {
  return _then(_Page(
sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as Sort?,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: freezed == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,paged: freezed == paged ? _self.paged : paged // ignore: cast_nullable_to_non_nullable
as bool?,unpaged: freezed == unpaged ? _self.unpaged : unpaged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Page
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
    return null;
  }

  return $SortCopyWith<$Res>(_self.sort!, (value) {
    return _then(_self.copyWith(sort: value));
  });
}
}


/// @nodoc
mixin _$Sort {

@JsonKey(name: 'empty') bool? get empty;@JsonKey(name: 'sorted') bool? get sorted;@JsonKey(name: 'unsorted') bool? get unsorted;
/// Create a copy of Sort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortCopyWith<Sort> get copyWith => _$SortCopyWithImpl<Sort>(this as Sort, _$identity);

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sort&&(identical(other.empty, empty) || other.empty == empty)&&(identical(other.sorted, sorted) || other.sorted == sorted)&&(identical(other.unsorted, unsorted) || other.unsorted == unsorted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empty,sorted,unsorted);

@override
String toString() {
  return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
}


}

/// @nodoc
abstract mixin class $SortCopyWith<$Res>  {
  factory $SortCopyWith(Sort value, $Res Function(Sort) _then) = _$SortCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'empty') bool? empty,@JsonKey(name: 'sorted') bool? sorted,@JsonKey(name: 'unsorted') bool? unsorted
});




}
/// @nodoc
class _$SortCopyWithImpl<$Res>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._self, this._then);

  final Sort _self;
  final $Res Function(Sort) _then;

/// Create a copy of Sort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empty = freezed,Object? sorted = freezed,Object? unsorted = freezed,}) {
  return _then(_self.copyWith(
empty: freezed == empty ? _self.empty : empty // ignore: cast_nullable_to_non_nullable
as bool?,sorted: freezed == sorted ? _self.sorted : sorted // ignore: cast_nullable_to_non_nullable
as bool?,unsorted: freezed == unsorted ? _self.unsorted : unsorted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sort].
extension SortPatterns on Sort {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sort value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sort() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sort value)  $default,){
final _that = this;
switch (_that) {
case _Sort():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sort value)?  $default,){
final _that = this;
switch (_that) {
case _Sort() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'empty')  bool? empty, @JsonKey(name: 'sorted')  bool? sorted, @JsonKey(name: 'unsorted')  bool? unsorted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sort() when $default != null:
return $default(_that.empty,_that.sorted,_that.unsorted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'empty')  bool? empty, @JsonKey(name: 'sorted')  bool? sorted, @JsonKey(name: 'unsorted')  bool? unsorted)  $default,) {final _that = this;
switch (_that) {
case _Sort():
return $default(_that.empty,_that.sorted,_that.unsorted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'empty')  bool? empty, @JsonKey(name: 'sorted')  bool? sorted, @JsonKey(name: 'unsorted')  bool? unsorted)?  $default,) {final _that = this;
switch (_that) {
case _Sort() when $default != null:
return $default(_that.empty,_that.sorted,_that.unsorted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sort implements Sort {
  const _Sort({@JsonKey(name: 'empty') this.empty, @JsonKey(name: 'sorted') this.sorted, @JsonKey(name: 'unsorted') this.unsorted});
  factory _Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

@override@JsonKey(name: 'empty') final  bool? empty;
@override@JsonKey(name: 'sorted') final  bool? sorted;
@override@JsonKey(name: 'unsorted') final  bool? unsorted;

/// Create a copy of Sort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortCopyWith<_Sort> get copyWith => __$SortCopyWithImpl<_Sort>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SortToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sort&&(identical(other.empty, empty) || other.empty == empty)&&(identical(other.sorted, sorted) || other.sorted == sorted)&&(identical(other.unsorted, unsorted) || other.unsorted == unsorted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empty,sorted,unsorted);

@override
String toString() {
  return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
}


}

/// @nodoc
abstract mixin class _$SortCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$SortCopyWith(_Sort value, $Res Function(_Sort) _then) = __$SortCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'empty') bool? empty,@JsonKey(name: 'sorted') bool? sorted,@JsonKey(name: 'unsorted') bool? unsorted
});




}
/// @nodoc
class __$SortCopyWithImpl<$Res>
    implements _$SortCopyWith<$Res> {
  __$SortCopyWithImpl(this._self, this._then);

  final _Sort _self;
  final $Res Function(_Sort) _then;

/// Create a copy of Sort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empty = freezed,Object? sorted = freezed,Object? unsorted = freezed,}) {
  return _then(_Sort(
empty: freezed == empty ? _self.empty : empty // ignore: cast_nullable_to_non_nullable
as bool?,sorted: freezed == sorted ? _self.sorted : sorted // ignore: cast_nullable_to_non_nullable
as bool?,unsorted: freezed == unsorted ? _self.unsorted : unsorted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ContactDetails {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'fullName') String? get fullName;@JsonKey(name: 'contactCountryCode') String? get contactCountryCode;@JsonKey(name: 'contactPhoneNumber') String? get contactPhoneNumber;@JsonKey(name: 'contactState') dynamic get contactState;@JsonKey(name: 'contactAddress') dynamic get contactAddress;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'userId') String? get userId;@JsonKey(name: 'adminUserId') dynamic get adminUserId;@JsonKey(name: 'groupName') List<dynamic>? get groupName;@JsonKey(name: 'groupId') List<dynamic>? get groupId;@JsonKey(name: 'website') dynamic get website;@JsonKey(name: 'jobTitle') dynamic get jobTitle;@JsonKey(name: 'companyName') dynamic get companyName;@JsonKey(name: 'companyCountryCode') dynamic get companyCountryCode;@JsonKey(name: 'companyPhoneNumber') dynamic get companyPhoneNumber;@JsonKey(name: 'companyState') dynamic get companyState;@JsonKey(name: 'companyAddress') dynamic get companyAddress;@JsonKey(name: 'facebookUrl') dynamic get facebookUrl;@JsonKey(name: 'instagramUrl') dynamic get instagramUrl;@JsonKey(name: 'photoUrl') dynamic get photoUrl;@JsonKey(name: 'latitude') dynamic get latitude;@JsonKey(name: 'longitude') dynamic get longitude;@JsonKey(name: 'sendwhatsapp') bool? get sendwhatsapp;@JsonKey(name: 'createdBy') dynamic get createdBy;@JsonKey(name: 'createdDate') int? get createdDate;@JsonKey(name: 'updatedDate') int? get updatedDate;@JsonKey(name: 'country') dynamic get country;@JsonKey(name: 'contactCountryCodeInLetter') dynamic get contactCountryCodeInLetter;@JsonKey(name: 'contactCountryFlag') dynamic get contactCountryFlag;@JsonKey(name: 'companyCountryCodeInLetter') dynamic get companyCountryCodeInLetter;@JsonKey(name: 'companyCountryFlag') dynamic get companyCountryFlag;@JsonKey(name: 'city') dynamic get city;@JsonKey(name: 'contactSource') String? get contactSource;@JsonKey(name: 'userName') String? get userName;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'comment') String? get comment;@JsonKey(name: 'customFields') List<dynamic>? get customFields;
/// Create a copy of ContactDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactDetailsCopyWith<ContactDetails> get copyWith => _$ContactDetailsCopyWithImpl<ContactDetails>(this as ContactDetails, _$identity);

  /// Serializes this ContactDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.contactCountryCode, contactCountryCode) || other.contactCountryCode == contactCountryCode)&&(identical(other.contactPhoneNumber, contactPhoneNumber) || other.contactPhoneNumber == contactPhoneNumber)&&const DeepCollectionEquality().equals(other.contactState, contactState)&&const DeepCollectionEquality().equals(other.contactAddress, contactAddress)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.adminUserId, adminUserId)&&const DeepCollectionEquality().equals(other.groupName, groupName)&&const DeepCollectionEquality().equals(other.groupId, groupId)&&const DeepCollectionEquality().equals(other.website, website)&&const DeepCollectionEquality().equals(other.jobTitle, jobTitle)&&const DeepCollectionEquality().equals(other.companyName, companyName)&&const DeepCollectionEquality().equals(other.companyCountryCode, companyCountryCode)&&const DeepCollectionEquality().equals(other.companyPhoneNumber, companyPhoneNumber)&&const DeepCollectionEquality().equals(other.companyState, companyState)&&const DeepCollectionEquality().equals(other.companyAddress, companyAddress)&&const DeepCollectionEquality().equals(other.facebookUrl, facebookUrl)&&const DeepCollectionEquality().equals(other.instagramUrl, instagramUrl)&&const DeepCollectionEquality().equals(other.photoUrl, photoUrl)&&const DeepCollectionEquality().equals(other.latitude, latitude)&&const DeepCollectionEquality().equals(other.longitude, longitude)&&(identical(other.sendwhatsapp, sendwhatsapp) || other.sendwhatsapp == sendwhatsapp)&&const DeepCollectionEquality().equals(other.createdBy, createdBy)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.updatedDate, updatedDate) || other.updatedDate == updatedDate)&&const DeepCollectionEquality().equals(other.country, country)&&const DeepCollectionEquality().equals(other.contactCountryCodeInLetter, contactCountryCodeInLetter)&&const DeepCollectionEquality().equals(other.contactCountryFlag, contactCountryFlag)&&const DeepCollectionEquality().equals(other.companyCountryCodeInLetter, companyCountryCodeInLetter)&&const DeepCollectionEquality().equals(other.companyCountryFlag, companyCountryFlag)&&const DeepCollectionEquality().equals(other.city, city)&&(identical(other.contactSource, contactSource) || other.contactSource == contactSource)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fullName,contactCountryCode,contactPhoneNumber,const DeepCollectionEquality().hash(contactState),const DeepCollectionEquality().hash(contactAddress),email,userId,const DeepCollectionEquality().hash(adminUserId),const DeepCollectionEquality().hash(groupName),const DeepCollectionEquality().hash(groupId),const DeepCollectionEquality().hash(website),const DeepCollectionEquality().hash(jobTitle),const DeepCollectionEquality().hash(companyName),const DeepCollectionEquality().hash(companyCountryCode),const DeepCollectionEquality().hash(companyPhoneNumber),const DeepCollectionEquality().hash(companyState),const DeepCollectionEquality().hash(companyAddress),const DeepCollectionEquality().hash(facebookUrl),const DeepCollectionEquality().hash(instagramUrl),const DeepCollectionEquality().hash(photoUrl),const DeepCollectionEquality().hash(latitude),const DeepCollectionEquality().hash(longitude),sendwhatsapp,const DeepCollectionEquality().hash(createdBy),createdDate,updatedDate,const DeepCollectionEquality().hash(country),const DeepCollectionEquality().hash(contactCountryCodeInLetter),const DeepCollectionEquality().hash(contactCountryFlag),const DeepCollectionEquality().hash(companyCountryCodeInLetter),const DeepCollectionEquality().hash(companyCountryFlag),const DeepCollectionEquality().hash(city),contactSource,userName,subject,comment,const DeepCollectionEquality().hash(customFields)]);

@override
String toString() {
  return 'ContactDetails(id: $id, fullName: $fullName, contactCountryCode: $contactCountryCode, contactPhoneNumber: $contactPhoneNumber, contactState: $contactState, contactAddress: $contactAddress, email: $email, userId: $userId, adminUserId: $adminUserId, groupName: $groupName, groupId: $groupId, website: $website, jobTitle: $jobTitle, companyName: $companyName, companyCountryCode: $companyCountryCode, companyPhoneNumber: $companyPhoneNumber, companyState: $companyState, companyAddress: $companyAddress, facebookUrl: $facebookUrl, instagramUrl: $instagramUrl, photoUrl: $photoUrl, latitude: $latitude, longitude: $longitude, sendwhatsapp: $sendwhatsapp, createdBy: $createdBy, createdDate: $createdDate, updatedDate: $updatedDate, country: $country, contactCountryCodeInLetter: $contactCountryCodeInLetter, contactCountryFlag: $contactCountryFlag, companyCountryCodeInLetter: $companyCountryCodeInLetter, companyCountryFlag: $companyCountryFlag, city: $city, contactSource: $contactSource, userName: $userName, subject: $subject, comment: $comment, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class $ContactDetailsCopyWith<$Res>  {
  factory $ContactDetailsCopyWith(ContactDetails value, $Res Function(ContactDetails) _then) = _$ContactDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'fullName') String? fullName,@JsonKey(name: 'contactCountryCode') String? contactCountryCode,@JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,@JsonKey(name: 'contactState') dynamic contactState,@JsonKey(name: 'contactAddress') dynamic contactAddress,@JsonKey(name: 'email') String? email,@JsonKey(name: 'userId') String? userId,@JsonKey(name: 'adminUserId') dynamic adminUserId,@JsonKey(name: 'groupName') List<dynamic>? groupName,@JsonKey(name: 'groupId') List<dynamic>? groupId,@JsonKey(name: 'website') dynamic website,@JsonKey(name: 'jobTitle') dynamic jobTitle,@JsonKey(name: 'companyName') dynamic companyName,@JsonKey(name: 'companyCountryCode') dynamic companyCountryCode,@JsonKey(name: 'companyPhoneNumber') dynamic companyPhoneNumber,@JsonKey(name: 'companyState') dynamic companyState,@JsonKey(name: 'companyAddress') dynamic companyAddress,@JsonKey(name: 'facebookUrl') dynamic facebookUrl,@JsonKey(name: 'instagramUrl') dynamic instagramUrl,@JsonKey(name: 'photoUrl') dynamic photoUrl,@JsonKey(name: 'latitude') dynamic latitude,@JsonKey(name: 'longitude') dynamic longitude,@JsonKey(name: 'sendwhatsapp') bool? sendwhatsapp,@JsonKey(name: 'createdBy') dynamic createdBy,@JsonKey(name: 'createdDate') int? createdDate,@JsonKey(name: 'updatedDate') int? updatedDate,@JsonKey(name: 'country') dynamic country,@JsonKey(name: 'contactCountryCodeInLetter') dynamic contactCountryCodeInLetter,@JsonKey(name: 'contactCountryFlag') dynamic contactCountryFlag,@JsonKey(name: 'companyCountryCodeInLetter') dynamic companyCountryCodeInLetter,@JsonKey(name: 'companyCountryFlag') dynamic companyCountryFlag,@JsonKey(name: 'city') dynamic city,@JsonKey(name: 'contactSource') String? contactSource,@JsonKey(name: 'userName') String? userName,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'comment') String? comment,@JsonKey(name: 'customFields') List<dynamic>? customFields
});




}
/// @nodoc
class _$ContactDetailsCopyWithImpl<$Res>
    implements $ContactDetailsCopyWith<$Res> {
  _$ContactDetailsCopyWithImpl(this._self, this._then);

  final ContactDetails _self;
  final $Res Function(ContactDetails) _then;

/// Create a copy of ContactDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? contactCountryCode = freezed,Object? contactPhoneNumber = freezed,Object? contactState = freezed,Object? contactAddress = freezed,Object? email = freezed,Object? userId = freezed,Object? adminUserId = freezed,Object? groupName = freezed,Object? groupId = freezed,Object? website = freezed,Object? jobTitle = freezed,Object? companyName = freezed,Object? companyCountryCode = freezed,Object? companyPhoneNumber = freezed,Object? companyState = freezed,Object? companyAddress = freezed,Object? facebookUrl = freezed,Object? instagramUrl = freezed,Object? photoUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? sendwhatsapp = freezed,Object? createdBy = freezed,Object? createdDate = freezed,Object? updatedDate = freezed,Object? country = freezed,Object? contactCountryCodeInLetter = freezed,Object? contactCountryFlag = freezed,Object? companyCountryCodeInLetter = freezed,Object? companyCountryFlag = freezed,Object? city = freezed,Object? contactSource = freezed,Object? userName = freezed,Object? subject = freezed,Object? comment = freezed,Object? customFields = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,contactCountryCode: freezed == contactCountryCode ? _self.contactCountryCode : contactCountryCode // ignore: cast_nullable_to_non_nullable
as String?,contactPhoneNumber: freezed == contactPhoneNumber ? _self.contactPhoneNumber : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,contactState: freezed == contactState ? _self.contactState : contactState // ignore: cast_nullable_to_non_nullable
as dynamic,contactAddress: freezed == contactAddress ? _self.contactAddress : contactAddress // ignore: cast_nullable_to_non_nullable
as dynamic,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,adminUserId: freezed == adminUserId ? _self.adminUserId : adminUserId // ignore: cast_nullable_to_non_nullable
as dynamic,groupName: freezed == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,groupId: freezed == groupId ? _self.groupId : groupId // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as dynamic,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as dynamic,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryCode: freezed == companyCountryCode ? _self.companyCountryCode : companyCountryCode // ignore: cast_nullable_to_non_nullable
as dynamic,companyPhoneNumber: freezed == companyPhoneNumber ? _self.companyPhoneNumber : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
as dynamic,companyState: freezed == companyState ? _self.companyState : companyState // ignore: cast_nullable_to_non_nullable
as dynamic,companyAddress: freezed == companyAddress ? _self.companyAddress : companyAddress // ignore: cast_nullable_to_non_nullable
as dynamic,facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as dynamic,instagramUrl: freezed == instagramUrl ? _self.instagramUrl : instagramUrl // ignore: cast_nullable_to_non_nullable
as dynamic,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as dynamic,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,sendwhatsapp: freezed == sendwhatsapp ? _self.sendwhatsapp : sendwhatsapp // ignore: cast_nullable_to_non_nullable
as bool?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as dynamic,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as int?,updatedDate: freezed == updatedDate ? _self.updatedDate : updatedDate // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as dynamic,contactCountryCodeInLetter: freezed == contactCountryCodeInLetter ? _self.contactCountryCodeInLetter : contactCountryCodeInLetter // ignore: cast_nullable_to_non_nullable
as dynamic,contactCountryFlag: freezed == contactCountryFlag ? _self.contactCountryFlag : contactCountryFlag // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryCodeInLetter: freezed == companyCountryCodeInLetter ? _self.companyCountryCodeInLetter : companyCountryCodeInLetter // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryFlag: freezed == companyCountryFlag ? _self.companyCountryFlag : companyCountryFlag // ignore: cast_nullable_to_non_nullable
as dynamic,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as dynamic,contactSource: freezed == contactSource ? _self.contactSource : contactSource // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactDetails].
extension ContactDetailsPatterns on ContactDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactDetails value)  $default,){
final _that = this;
switch (_that) {
case _ContactDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ContactDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'fullName')  String? fullName, @JsonKey(name: 'contactCountryCode')  String? contactCountryCode, @JsonKey(name: 'contactPhoneNumber')  String? contactPhoneNumber, @JsonKey(name: 'contactState')  dynamic contactState, @JsonKey(name: 'contactAddress')  dynamic contactAddress, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'userId')  String? userId, @JsonKey(name: 'adminUserId')  dynamic adminUserId, @JsonKey(name: 'groupName')  List<dynamic>? groupName, @JsonKey(name: 'groupId')  List<dynamic>? groupId, @JsonKey(name: 'website')  dynamic website, @JsonKey(name: 'jobTitle')  dynamic jobTitle, @JsonKey(name: 'companyName')  dynamic companyName, @JsonKey(name: 'companyCountryCode')  dynamic companyCountryCode, @JsonKey(name: 'companyPhoneNumber')  dynamic companyPhoneNumber, @JsonKey(name: 'companyState')  dynamic companyState, @JsonKey(name: 'companyAddress')  dynamic companyAddress, @JsonKey(name: 'facebookUrl')  dynamic facebookUrl, @JsonKey(name: 'instagramUrl')  dynamic instagramUrl, @JsonKey(name: 'photoUrl')  dynamic photoUrl, @JsonKey(name: 'latitude')  dynamic latitude, @JsonKey(name: 'longitude')  dynamic longitude, @JsonKey(name: 'sendwhatsapp')  bool? sendwhatsapp, @JsonKey(name: 'createdBy')  dynamic createdBy, @JsonKey(name: 'createdDate')  int? createdDate, @JsonKey(name: 'updatedDate')  int? updatedDate, @JsonKey(name: 'country')  dynamic country, @JsonKey(name: 'contactCountryCodeInLetter')  dynamic contactCountryCodeInLetter, @JsonKey(name: 'contactCountryFlag')  dynamic contactCountryFlag, @JsonKey(name: 'companyCountryCodeInLetter')  dynamic companyCountryCodeInLetter, @JsonKey(name: 'companyCountryFlag')  dynamic companyCountryFlag, @JsonKey(name: 'city')  dynamic city, @JsonKey(name: 'contactSource')  String? contactSource, @JsonKey(name: 'userName')  String? userName, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'customFields')  List<dynamic>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactDetails() when $default != null:
return $default(_that.id,_that.fullName,_that.contactCountryCode,_that.contactPhoneNumber,_that.contactState,_that.contactAddress,_that.email,_that.userId,_that.adminUserId,_that.groupName,_that.groupId,_that.website,_that.jobTitle,_that.companyName,_that.companyCountryCode,_that.companyPhoneNumber,_that.companyState,_that.companyAddress,_that.facebookUrl,_that.instagramUrl,_that.photoUrl,_that.latitude,_that.longitude,_that.sendwhatsapp,_that.createdBy,_that.createdDate,_that.updatedDate,_that.country,_that.contactCountryCodeInLetter,_that.contactCountryFlag,_that.companyCountryCodeInLetter,_that.companyCountryFlag,_that.city,_that.contactSource,_that.userName,_that.subject,_that.comment,_that.customFields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'fullName')  String? fullName, @JsonKey(name: 'contactCountryCode')  String? contactCountryCode, @JsonKey(name: 'contactPhoneNumber')  String? contactPhoneNumber, @JsonKey(name: 'contactState')  dynamic contactState, @JsonKey(name: 'contactAddress')  dynamic contactAddress, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'userId')  String? userId, @JsonKey(name: 'adminUserId')  dynamic adminUserId, @JsonKey(name: 'groupName')  List<dynamic>? groupName, @JsonKey(name: 'groupId')  List<dynamic>? groupId, @JsonKey(name: 'website')  dynamic website, @JsonKey(name: 'jobTitle')  dynamic jobTitle, @JsonKey(name: 'companyName')  dynamic companyName, @JsonKey(name: 'companyCountryCode')  dynamic companyCountryCode, @JsonKey(name: 'companyPhoneNumber')  dynamic companyPhoneNumber, @JsonKey(name: 'companyState')  dynamic companyState, @JsonKey(name: 'companyAddress')  dynamic companyAddress, @JsonKey(name: 'facebookUrl')  dynamic facebookUrl, @JsonKey(name: 'instagramUrl')  dynamic instagramUrl, @JsonKey(name: 'photoUrl')  dynamic photoUrl, @JsonKey(name: 'latitude')  dynamic latitude, @JsonKey(name: 'longitude')  dynamic longitude, @JsonKey(name: 'sendwhatsapp')  bool? sendwhatsapp, @JsonKey(name: 'createdBy')  dynamic createdBy, @JsonKey(name: 'createdDate')  int? createdDate, @JsonKey(name: 'updatedDate')  int? updatedDate, @JsonKey(name: 'country')  dynamic country, @JsonKey(name: 'contactCountryCodeInLetter')  dynamic contactCountryCodeInLetter, @JsonKey(name: 'contactCountryFlag')  dynamic contactCountryFlag, @JsonKey(name: 'companyCountryCodeInLetter')  dynamic companyCountryCodeInLetter, @JsonKey(name: 'companyCountryFlag')  dynamic companyCountryFlag, @JsonKey(name: 'city')  dynamic city, @JsonKey(name: 'contactSource')  String? contactSource, @JsonKey(name: 'userName')  String? userName, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'customFields')  List<dynamic>? customFields)  $default,) {final _that = this;
switch (_that) {
case _ContactDetails():
return $default(_that.id,_that.fullName,_that.contactCountryCode,_that.contactPhoneNumber,_that.contactState,_that.contactAddress,_that.email,_that.userId,_that.adminUserId,_that.groupName,_that.groupId,_that.website,_that.jobTitle,_that.companyName,_that.companyCountryCode,_that.companyPhoneNumber,_that.companyState,_that.companyAddress,_that.facebookUrl,_that.instagramUrl,_that.photoUrl,_that.latitude,_that.longitude,_that.sendwhatsapp,_that.createdBy,_that.createdDate,_that.updatedDate,_that.country,_that.contactCountryCodeInLetter,_that.contactCountryFlag,_that.companyCountryCodeInLetter,_that.companyCountryFlag,_that.city,_that.contactSource,_that.userName,_that.subject,_that.comment,_that.customFields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'fullName')  String? fullName, @JsonKey(name: 'contactCountryCode')  String? contactCountryCode, @JsonKey(name: 'contactPhoneNumber')  String? contactPhoneNumber, @JsonKey(name: 'contactState')  dynamic contactState, @JsonKey(name: 'contactAddress')  dynamic contactAddress, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'userId')  String? userId, @JsonKey(name: 'adminUserId')  dynamic adminUserId, @JsonKey(name: 'groupName')  List<dynamic>? groupName, @JsonKey(name: 'groupId')  List<dynamic>? groupId, @JsonKey(name: 'website')  dynamic website, @JsonKey(name: 'jobTitle')  dynamic jobTitle, @JsonKey(name: 'companyName')  dynamic companyName, @JsonKey(name: 'companyCountryCode')  dynamic companyCountryCode, @JsonKey(name: 'companyPhoneNumber')  dynamic companyPhoneNumber, @JsonKey(name: 'companyState')  dynamic companyState, @JsonKey(name: 'companyAddress')  dynamic companyAddress, @JsonKey(name: 'facebookUrl')  dynamic facebookUrl, @JsonKey(name: 'instagramUrl')  dynamic instagramUrl, @JsonKey(name: 'photoUrl')  dynamic photoUrl, @JsonKey(name: 'latitude')  dynamic latitude, @JsonKey(name: 'longitude')  dynamic longitude, @JsonKey(name: 'sendwhatsapp')  bool? sendwhatsapp, @JsonKey(name: 'createdBy')  dynamic createdBy, @JsonKey(name: 'createdDate')  int? createdDate, @JsonKey(name: 'updatedDate')  int? updatedDate, @JsonKey(name: 'country')  dynamic country, @JsonKey(name: 'contactCountryCodeInLetter')  dynamic contactCountryCodeInLetter, @JsonKey(name: 'contactCountryFlag')  dynamic contactCountryFlag, @JsonKey(name: 'companyCountryCodeInLetter')  dynamic companyCountryCodeInLetter, @JsonKey(name: 'companyCountryFlag')  dynamic companyCountryFlag, @JsonKey(name: 'city')  dynamic city, @JsonKey(name: 'contactSource')  String? contactSource, @JsonKey(name: 'userName')  String? userName, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'comment')  String? comment, @JsonKey(name: 'customFields')  List<dynamic>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _ContactDetails() when $default != null:
return $default(_that.id,_that.fullName,_that.contactCountryCode,_that.contactPhoneNumber,_that.contactState,_that.contactAddress,_that.email,_that.userId,_that.adminUserId,_that.groupName,_that.groupId,_that.website,_that.jobTitle,_that.companyName,_that.companyCountryCode,_that.companyPhoneNumber,_that.companyState,_that.companyAddress,_that.facebookUrl,_that.instagramUrl,_that.photoUrl,_that.latitude,_that.longitude,_that.sendwhatsapp,_that.createdBy,_that.createdDate,_that.updatedDate,_that.country,_that.contactCountryCodeInLetter,_that.contactCountryFlag,_that.companyCountryCodeInLetter,_that.companyCountryFlag,_that.city,_that.contactSource,_that.userName,_that.subject,_that.comment,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactDetails implements ContactDetails {
  const _ContactDetails({@JsonKey(name: 'id') this.id, @JsonKey(name: 'fullName') this.fullName, @JsonKey(name: 'contactCountryCode') this.contactCountryCode, @JsonKey(name: 'contactPhoneNumber') this.contactPhoneNumber, @JsonKey(name: 'contactState') this.contactState, @JsonKey(name: 'contactAddress') this.contactAddress, @JsonKey(name: 'email') this.email, @JsonKey(name: 'userId') this.userId, @JsonKey(name: 'adminUserId') this.adminUserId, @JsonKey(name: 'groupName') final  List<dynamic>? groupName, @JsonKey(name: 'groupId') final  List<dynamic>? groupId, @JsonKey(name: 'website') this.website, @JsonKey(name: 'jobTitle') this.jobTitle, @JsonKey(name: 'companyName') this.companyName, @JsonKey(name: 'companyCountryCode') this.companyCountryCode, @JsonKey(name: 'companyPhoneNumber') this.companyPhoneNumber, @JsonKey(name: 'companyState') this.companyState, @JsonKey(name: 'companyAddress') this.companyAddress, @JsonKey(name: 'facebookUrl') this.facebookUrl, @JsonKey(name: 'instagramUrl') this.instagramUrl, @JsonKey(name: 'photoUrl') this.photoUrl, @JsonKey(name: 'latitude') this.latitude, @JsonKey(name: 'longitude') this.longitude, @JsonKey(name: 'sendwhatsapp') this.sendwhatsapp, @JsonKey(name: 'createdBy') this.createdBy, @JsonKey(name: 'createdDate') this.createdDate, @JsonKey(name: 'updatedDate') this.updatedDate, @JsonKey(name: 'country') this.country, @JsonKey(name: 'contactCountryCodeInLetter') this.contactCountryCodeInLetter, @JsonKey(name: 'contactCountryFlag') this.contactCountryFlag, @JsonKey(name: 'companyCountryCodeInLetter') this.companyCountryCodeInLetter, @JsonKey(name: 'companyCountryFlag') this.companyCountryFlag, @JsonKey(name: 'city') this.city, @JsonKey(name: 'contactSource') this.contactSource, @JsonKey(name: 'userName') this.userName, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'comment') this.comment, @JsonKey(name: 'customFields') final  List<dynamic>? customFields}): _groupName = groupName,_groupId = groupId,_customFields = customFields;
  factory _ContactDetails.fromJson(Map<String, dynamic> json) => _$ContactDetailsFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'fullName') final  String? fullName;
@override@JsonKey(name: 'contactCountryCode') final  String? contactCountryCode;
@override@JsonKey(name: 'contactPhoneNumber') final  String? contactPhoneNumber;
@override@JsonKey(name: 'contactState') final  dynamic contactState;
@override@JsonKey(name: 'contactAddress') final  dynamic contactAddress;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'userId') final  String? userId;
@override@JsonKey(name: 'adminUserId') final  dynamic adminUserId;
 final  List<dynamic>? _groupName;
@override@JsonKey(name: 'groupName') List<dynamic>? get groupName {
  final value = _groupName;
  if (value == null) return null;
  if (_groupName is EqualUnmodifiableListView) return _groupName;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _groupId;
@override@JsonKey(name: 'groupId') List<dynamic>? get groupId {
  final value = _groupId;
  if (value == null) return null;
  if (_groupId is EqualUnmodifiableListView) return _groupId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'website') final  dynamic website;
@override@JsonKey(name: 'jobTitle') final  dynamic jobTitle;
@override@JsonKey(name: 'companyName') final  dynamic companyName;
@override@JsonKey(name: 'companyCountryCode') final  dynamic companyCountryCode;
@override@JsonKey(name: 'companyPhoneNumber') final  dynamic companyPhoneNumber;
@override@JsonKey(name: 'companyState') final  dynamic companyState;
@override@JsonKey(name: 'companyAddress') final  dynamic companyAddress;
@override@JsonKey(name: 'facebookUrl') final  dynamic facebookUrl;
@override@JsonKey(name: 'instagramUrl') final  dynamic instagramUrl;
@override@JsonKey(name: 'photoUrl') final  dynamic photoUrl;
@override@JsonKey(name: 'latitude') final  dynamic latitude;
@override@JsonKey(name: 'longitude') final  dynamic longitude;
@override@JsonKey(name: 'sendwhatsapp') final  bool? sendwhatsapp;
@override@JsonKey(name: 'createdBy') final  dynamic createdBy;
@override@JsonKey(name: 'createdDate') final  int? createdDate;
@override@JsonKey(name: 'updatedDate') final  int? updatedDate;
@override@JsonKey(name: 'country') final  dynamic country;
@override@JsonKey(name: 'contactCountryCodeInLetter') final  dynamic contactCountryCodeInLetter;
@override@JsonKey(name: 'contactCountryFlag') final  dynamic contactCountryFlag;
@override@JsonKey(name: 'companyCountryCodeInLetter') final  dynamic companyCountryCodeInLetter;
@override@JsonKey(name: 'companyCountryFlag') final  dynamic companyCountryFlag;
@override@JsonKey(name: 'city') final  dynamic city;
@override@JsonKey(name: 'contactSource') final  String? contactSource;
@override@JsonKey(name: 'userName') final  String? userName;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'comment') final  String? comment;
 final  List<dynamic>? _customFields;
@override@JsonKey(name: 'customFields') List<dynamic>? get customFields {
  final value = _customFields;
  if (value == null) return null;
  if (_customFields is EqualUnmodifiableListView) return _customFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ContactDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactDetailsCopyWith<_ContactDetails> get copyWith => __$ContactDetailsCopyWithImpl<_ContactDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.contactCountryCode, contactCountryCode) || other.contactCountryCode == contactCountryCode)&&(identical(other.contactPhoneNumber, contactPhoneNumber) || other.contactPhoneNumber == contactPhoneNumber)&&const DeepCollectionEquality().equals(other.contactState, contactState)&&const DeepCollectionEquality().equals(other.contactAddress, contactAddress)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.adminUserId, adminUserId)&&const DeepCollectionEquality().equals(other._groupName, _groupName)&&const DeepCollectionEquality().equals(other._groupId, _groupId)&&const DeepCollectionEquality().equals(other.website, website)&&const DeepCollectionEquality().equals(other.jobTitle, jobTitle)&&const DeepCollectionEquality().equals(other.companyName, companyName)&&const DeepCollectionEquality().equals(other.companyCountryCode, companyCountryCode)&&const DeepCollectionEquality().equals(other.companyPhoneNumber, companyPhoneNumber)&&const DeepCollectionEquality().equals(other.companyState, companyState)&&const DeepCollectionEquality().equals(other.companyAddress, companyAddress)&&const DeepCollectionEquality().equals(other.facebookUrl, facebookUrl)&&const DeepCollectionEquality().equals(other.instagramUrl, instagramUrl)&&const DeepCollectionEquality().equals(other.photoUrl, photoUrl)&&const DeepCollectionEquality().equals(other.latitude, latitude)&&const DeepCollectionEquality().equals(other.longitude, longitude)&&(identical(other.sendwhatsapp, sendwhatsapp) || other.sendwhatsapp == sendwhatsapp)&&const DeepCollectionEquality().equals(other.createdBy, createdBy)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.updatedDate, updatedDate) || other.updatedDate == updatedDate)&&const DeepCollectionEquality().equals(other.country, country)&&const DeepCollectionEquality().equals(other.contactCountryCodeInLetter, contactCountryCodeInLetter)&&const DeepCollectionEquality().equals(other.contactCountryFlag, contactCountryFlag)&&const DeepCollectionEquality().equals(other.companyCountryCodeInLetter, companyCountryCodeInLetter)&&const DeepCollectionEquality().equals(other.companyCountryFlag, companyCountryFlag)&&const DeepCollectionEquality().equals(other.city, city)&&(identical(other.contactSource, contactSource) || other.contactSource == contactSource)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.comment, comment) || other.comment == comment)&&const DeepCollectionEquality().equals(other._customFields, _customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,fullName,contactCountryCode,contactPhoneNumber,const DeepCollectionEquality().hash(contactState),const DeepCollectionEquality().hash(contactAddress),email,userId,const DeepCollectionEquality().hash(adminUserId),const DeepCollectionEquality().hash(_groupName),const DeepCollectionEquality().hash(_groupId),const DeepCollectionEquality().hash(website),const DeepCollectionEquality().hash(jobTitle),const DeepCollectionEquality().hash(companyName),const DeepCollectionEquality().hash(companyCountryCode),const DeepCollectionEquality().hash(companyPhoneNumber),const DeepCollectionEquality().hash(companyState),const DeepCollectionEquality().hash(companyAddress),const DeepCollectionEquality().hash(facebookUrl),const DeepCollectionEquality().hash(instagramUrl),const DeepCollectionEquality().hash(photoUrl),const DeepCollectionEquality().hash(latitude),const DeepCollectionEquality().hash(longitude),sendwhatsapp,const DeepCollectionEquality().hash(createdBy),createdDate,updatedDate,const DeepCollectionEquality().hash(country),const DeepCollectionEquality().hash(contactCountryCodeInLetter),const DeepCollectionEquality().hash(contactCountryFlag),const DeepCollectionEquality().hash(companyCountryCodeInLetter),const DeepCollectionEquality().hash(companyCountryFlag),const DeepCollectionEquality().hash(city),contactSource,userName,subject,comment,const DeepCollectionEquality().hash(_customFields)]);

@override
String toString() {
  return 'ContactDetails(id: $id, fullName: $fullName, contactCountryCode: $contactCountryCode, contactPhoneNumber: $contactPhoneNumber, contactState: $contactState, contactAddress: $contactAddress, email: $email, userId: $userId, adminUserId: $adminUserId, groupName: $groupName, groupId: $groupId, website: $website, jobTitle: $jobTitle, companyName: $companyName, companyCountryCode: $companyCountryCode, companyPhoneNumber: $companyPhoneNumber, companyState: $companyState, companyAddress: $companyAddress, facebookUrl: $facebookUrl, instagramUrl: $instagramUrl, photoUrl: $photoUrl, latitude: $latitude, longitude: $longitude, sendwhatsapp: $sendwhatsapp, createdBy: $createdBy, createdDate: $createdDate, updatedDate: $updatedDate, country: $country, contactCountryCodeInLetter: $contactCountryCodeInLetter, contactCountryFlag: $contactCountryFlag, companyCountryCodeInLetter: $companyCountryCodeInLetter, companyCountryFlag: $companyCountryFlag, city: $city, contactSource: $contactSource, userName: $userName, subject: $subject, comment: $comment, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$ContactDetailsCopyWith<$Res> implements $ContactDetailsCopyWith<$Res> {
  factory _$ContactDetailsCopyWith(_ContactDetails value, $Res Function(_ContactDetails) _then) = __$ContactDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'fullName') String? fullName,@JsonKey(name: 'contactCountryCode') String? contactCountryCode,@JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,@JsonKey(name: 'contactState') dynamic contactState,@JsonKey(name: 'contactAddress') dynamic contactAddress,@JsonKey(name: 'email') String? email,@JsonKey(name: 'userId') String? userId,@JsonKey(name: 'adminUserId') dynamic adminUserId,@JsonKey(name: 'groupName') List<dynamic>? groupName,@JsonKey(name: 'groupId') List<dynamic>? groupId,@JsonKey(name: 'website') dynamic website,@JsonKey(name: 'jobTitle') dynamic jobTitle,@JsonKey(name: 'companyName') dynamic companyName,@JsonKey(name: 'companyCountryCode') dynamic companyCountryCode,@JsonKey(name: 'companyPhoneNumber') dynamic companyPhoneNumber,@JsonKey(name: 'companyState') dynamic companyState,@JsonKey(name: 'companyAddress') dynamic companyAddress,@JsonKey(name: 'facebookUrl') dynamic facebookUrl,@JsonKey(name: 'instagramUrl') dynamic instagramUrl,@JsonKey(name: 'photoUrl') dynamic photoUrl,@JsonKey(name: 'latitude') dynamic latitude,@JsonKey(name: 'longitude') dynamic longitude,@JsonKey(name: 'sendwhatsapp') bool? sendwhatsapp,@JsonKey(name: 'createdBy') dynamic createdBy,@JsonKey(name: 'createdDate') int? createdDate,@JsonKey(name: 'updatedDate') int? updatedDate,@JsonKey(name: 'country') dynamic country,@JsonKey(name: 'contactCountryCodeInLetter') dynamic contactCountryCodeInLetter,@JsonKey(name: 'contactCountryFlag') dynamic contactCountryFlag,@JsonKey(name: 'companyCountryCodeInLetter') dynamic companyCountryCodeInLetter,@JsonKey(name: 'companyCountryFlag') dynamic companyCountryFlag,@JsonKey(name: 'city') dynamic city,@JsonKey(name: 'contactSource') String? contactSource,@JsonKey(name: 'userName') String? userName,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'comment') String? comment,@JsonKey(name: 'customFields') List<dynamic>? customFields
});




}
/// @nodoc
class __$ContactDetailsCopyWithImpl<$Res>
    implements _$ContactDetailsCopyWith<$Res> {
  __$ContactDetailsCopyWithImpl(this._self, this._then);

  final _ContactDetails _self;
  final $Res Function(_ContactDetails) _then;

/// Create a copy of ContactDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? contactCountryCode = freezed,Object? contactPhoneNumber = freezed,Object? contactState = freezed,Object? contactAddress = freezed,Object? email = freezed,Object? userId = freezed,Object? adminUserId = freezed,Object? groupName = freezed,Object? groupId = freezed,Object? website = freezed,Object? jobTitle = freezed,Object? companyName = freezed,Object? companyCountryCode = freezed,Object? companyPhoneNumber = freezed,Object? companyState = freezed,Object? companyAddress = freezed,Object? facebookUrl = freezed,Object? instagramUrl = freezed,Object? photoUrl = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? sendwhatsapp = freezed,Object? createdBy = freezed,Object? createdDate = freezed,Object? updatedDate = freezed,Object? country = freezed,Object? contactCountryCodeInLetter = freezed,Object? contactCountryFlag = freezed,Object? companyCountryCodeInLetter = freezed,Object? companyCountryFlag = freezed,Object? city = freezed,Object? contactSource = freezed,Object? userName = freezed,Object? subject = freezed,Object? comment = freezed,Object? customFields = freezed,}) {
  return _then(_ContactDetails(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,contactCountryCode: freezed == contactCountryCode ? _self.contactCountryCode : contactCountryCode // ignore: cast_nullable_to_non_nullable
as String?,contactPhoneNumber: freezed == contactPhoneNumber ? _self.contactPhoneNumber : contactPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,contactState: freezed == contactState ? _self.contactState : contactState // ignore: cast_nullable_to_non_nullable
as dynamic,contactAddress: freezed == contactAddress ? _self.contactAddress : contactAddress // ignore: cast_nullable_to_non_nullable
as dynamic,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,adminUserId: freezed == adminUserId ? _self.adminUserId : adminUserId // ignore: cast_nullable_to_non_nullable
as dynamic,groupName: freezed == groupName ? _self._groupName : groupName // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,groupId: freezed == groupId ? _self._groupId : groupId // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as dynamic,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as dynamic,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryCode: freezed == companyCountryCode ? _self.companyCountryCode : companyCountryCode // ignore: cast_nullable_to_non_nullable
as dynamic,companyPhoneNumber: freezed == companyPhoneNumber ? _self.companyPhoneNumber : companyPhoneNumber // ignore: cast_nullable_to_non_nullable
as dynamic,companyState: freezed == companyState ? _self.companyState : companyState // ignore: cast_nullable_to_non_nullable
as dynamic,companyAddress: freezed == companyAddress ? _self.companyAddress : companyAddress // ignore: cast_nullable_to_non_nullable
as dynamic,facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as dynamic,instagramUrl: freezed == instagramUrl ? _self.instagramUrl : instagramUrl // ignore: cast_nullable_to_non_nullable
as dynamic,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as dynamic,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,sendwhatsapp: freezed == sendwhatsapp ? _self.sendwhatsapp : sendwhatsapp // ignore: cast_nullable_to_non_nullable
as bool?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as dynamic,createdDate: freezed == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as int?,updatedDate: freezed == updatedDate ? _self.updatedDate : updatedDate // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as dynamic,contactCountryCodeInLetter: freezed == contactCountryCodeInLetter ? _self.contactCountryCodeInLetter : contactCountryCodeInLetter // ignore: cast_nullable_to_non_nullable
as dynamic,contactCountryFlag: freezed == contactCountryFlag ? _self.contactCountryFlag : contactCountryFlag // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryCodeInLetter: freezed == companyCountryCodeInLetter ? _self.companyCountryCodeInLetter : companyCountryCodeInLetter // ignore: cast_nullable_to_non_nullable
as dynamic,companyCountryFlag: freezed == companyCountryFlag ? _self.companyCountryFlag : companyCountryFlag // ignore: cast_nullable_to_non_nullable
as dynamic,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as dynamic,contactSource: freezed == contactSource ? _self.contactSource : contactSource // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self._customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}

// dart format on
