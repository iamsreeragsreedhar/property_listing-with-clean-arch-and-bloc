// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proplisting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProplistingState {

 String get msg; Authtype get statustype; AuthWorkType get wrktype; List<PropertyListingEntity> get DataList; List<PropertyListingEntity> get FiterList;
/// Create a copy of ProplistingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProplistingStateCopyWith<ProplistingState> get copyWith => _$ProplistingStateCopyWithImpl<ProplistingState>(this as ProplistingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProplistingState&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.statustype, statustype) || other.statustype == statustype)&&(identical(other.wrktype, wrktype) || other.wrktype == wrktype)&&const DeepCollectionEquality().equals(other.DataList, DataList)&&const DeepCollectionEquality().equals(other.FiterList, FiterList));
}


@override
int get hashCode => Object.hash(runtimeType,msg,statustype,wrktype,const DeepCollectionEquality().hash(DataList),const DeepCollectionEquality().hash(FiterList));

@override
String toString() {
  return 'ProplistingState(msg: $msg, statustype: $statustype, wrktype: $wrktype, DataList: $DataList, FiterList: $FiterList)';
}


}

/// @nodoc
abstract mixin class $ProplistingStateCopyWith<$Res>  {
  factory $ProplistingStateCopyWith(ProplistingState value, $Res Function(ProplistingState) _then) = _$ProplistingStateCopyWithImpl;
@useResult
$Res call({
 String msg, Authtype statustype, AuthWorkType wrktype, List<PropertyListingEntity> DataList, List<PropertyListingEntity> FiterList
});




}
/// @nodoc
class _$ProplistingStateCopyWithImpl<$Res>
    implements $ProplistingStateCopyWith<$Res> {
  _$ProplistingStateCopyWithImpl(this._self, this._then);

  final ProplistingState _self;
  final $Res Function(ProplistingState) _then;

/// Create a copy of ProplistingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = null,Object? statustype = null,Object? wrktype = null,Object? DataList = null,Object? FiterList = null,}) {
  return _then(_self.copyWith(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,statustype: null == statustype ? _self.statustype : statustype // ignore: cast_nullable_to_non_nullable
as Authtype,wrktype: null == wrktype ? _self.wrktype : wrktype // ignore: cast_nullable_to_non_nullable
as AuthWorkType,DataList: null == DataList ? _self.DataList : DataList // ignore: cast_nullable_to_non_nullable
as List<PropertyListingEntity>,FiterList: null == FiterList ? _self.FiterList : FiterList // ignore: cast_nullable_to_non_nullable
as List<PropertyListingEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProplistingState].
extension ProplistingStatePatterns on ProplistingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProplistingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProplistingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProplistingState value)  $default,){
final _that = this;
switch (_that) {
case _ProplistingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProplistingState value)?  $default,){
final _that = this;
switch (_that) {
case _ProplistingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String msg,  Authtype statustype,  AuthWorkType wrktype,  List<PropertyListingEntity> DataList,  List<PropertyListingEntity> FiterList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProplistingState() when $default != null:
return $default(_that.msg,_that.statustype,_that.wrktype,_that.DataList,_that.FiterList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String msg,  Authtype statustype,  AuthWorkType wrktype,  List<PropertyListingEntity> DataList,  List<PropertyListingEntity> FiterList)  $default,) {final _that = this;
switch (_that) {
case _ProplistingState():
return $default(_that.msg,_that.statustype,_that.wrktype,_that.DataList,_that.FiterList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String msg,  Authtype statustype,  AuthWorkType wrktype,  List<PropertyListingEntity> DataList,  List<PropertyListingEntity> FiterList)?  $default,) {final _that = this;
switch (_that) {
case _ProplistingState() when $default != null:
return $default(_that.msg,_that.statustype,_that.wrktype,_that.DataList,_that.FiterList);case _:
  return null;

}
}

}

/// @nodoc


class _ProplistingState implements ProplistingState {
   _ProplistingState({this.msg = '', this.statustype = Authtype.none, this.wrktype = AuthWorkType.none, final  List<PropertyListingEntity> DataList = const [], final  List<PropertyListingEntity> FiterList = const []}): _DataList = DataList,_FiterList = FiterList;
  

@override@JsonKey() final  String msg;
@override@JsonKey() final  Authtype statustype;
@override@JsonKey() final  AuthWorkType wrktype;
 final  List<PropertyListingEntity> _DataList;
@override@JsonKey() List<PropertyListingEntity> get DataList {
  if (_DataList is EqualUnmodifiableListView) return _DataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_DataList);
}

 final  List<PropertyListingEntity> _FiterList;
@override@JsonKey() List<PropertyListingEntity> get FiterList {
  if (_FiterList is EqualUnmodifiableListView) return _FiterList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_FiterList);
}


/// Create a copy of ProplistingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProplistingStateCopyWith<_ProplistingState> get copyWith => __$ProplistingStateCopyWithImpl<_ProplistingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProplistingState&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.statustype, statustype) || other.statustype == statustype)&&(identical(other.wrktype, wrktype) || other.wrktype == wrktype)&&const DeepCollectionEquality().equals(other._DataList, _DataList)&&const DeepCollectionEquality().equals(other._FiterList, _FiterList));
}


@override
int get hashCode => Object.hash(runtimeType,msg,statustype,wrktype,const DeepCollectionEquality().hash(_DataList),const DeepCollectionEquality().hash(_FiterList));

@override
String toString() {
  return 'ProplistingState(msg: $msg, statustype: $statustype, wrktype: $wrktype, DataList: $DataList, FiterList: $FiterList)';
}


}

/// @nodoc
abstract mixin class _$ProplistingStateCopyWith<$Res> implements $ProplistingStateCopyWith<$Res> {
  factory _$ProplistingStateCopyWith(_ProplistingState value, $Res Function(_ProplistingState) _then) = __$ProplistingStateCopyWithImpl;
@override @useResult
$Res call({
 String msg, Authtype statustype, AuthWorkType wrktype, List<PropertyListingEntity> DataList, List<PropertyListingEntity> FiterList
});




}
/// @nodoc
class __$ProplistingStateCopyWithImpl<$Res>
    implements _$ProplistingStateCopyWith<$Res> {
  __$ProplistingStateCopyWithImpl(this._self, this._then);

  final _ProplistingState _self;
  final $Res Function(_ProplistingState) _then;

/// Create a copy of ProplistingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = null,Object? statustype = null,Object? wrktype = null,Object? DataList = null,Object? FiterList = null,}) {
  return _then(_ProplistingState(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,statustype: null == statustype ? _self.statustype : statustype // ignore: cast_nullable_to_non_nullable
as Authtype,wrktype: null == wrktype ? _self.wrktype : wrktype // ignore: cast_nullable_to_non_nullable
as AuthWorkType,DataList: null == DataList ? _self._DataList : DataList // ignore: cast_nullable_to_non_nullable
as List<PropertyListingEntity>,FiterList: null == FiterList ? _self._FiterList : FiterList // ignore: cast_nullable_to_non_nullable
as List<PropertyListingEntity>,
  ));
}


}

/// @nodoc
mixin _$ProplistingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProplistingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProplistingEvent()';
}


}

/// @nodoc
class $ProplistingEventCopyWith<$Res>  {
$ProplistingEventCopyWith(ProplistingEvent _, $Res Function(ProplistingEvent) __);
}


/// Adds pattern-matching-related methods to [ProplistingEvent].
extension ProplistingEventPatterns on ProplistingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetpropertyList value)?  getpropertyList,TResult Function( PropertyListingfilterevent value)?  propertyListingfilterevent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetpropertyList() when getpropertyList != null:
return getpropertyList(_that);case PropertyListingfilterevent() when propertyListingfilterevent != null:
return propertyListingfilterevent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetpropertyList value)  getpropertyList,required TResult Function( PropertyListingfilterevent value)  propertyListingfilterevent,}){
final _that = this;
switch (_that) {
case GetpropertyList():
return getpropertyList(_that);case PropertyListingfilterevent():
return propertyListingfilterevent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetpropertyList value)?  getpropertyList,TResult? Function( PropertyListingfilterevent value)?  propertyListingfilterevent,}){
final _that = this;
switch (_that) {
case GetpropertyList() when getpropertyList != null:
return getpropertyList(_that);case PropertyListingfilterevent() when propertyListingfilterevent != null:
return propertyListingfilterevent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getpropertyList,TResult Function( String data)?  propertyListingfilterevent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetpropertyList() when getpropertyList != null:
return getpropertyList();case PropertyListingfilterevent() when propertyListingfilterevent != null:
return propertyListingfilterevent(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getpropertyList,required TResult Function( String data)  propertyListingfilterevent,}) {final _that = this;
switch (_that) {
case GetpropertyList():
return getpropertyList();case PropertyListingfilterevent():
return propertyListingfilterevent(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getpropertyList,TResult? Function( String data)?  propertyListingfilterevent,}) {final _that = this;
switch (_that) {
case GetpropertyList() when getpropertyList != null:
return getpropertyList();case PropertyListingfilterevent() when propertyListingfilterevent != null:
return propertyListingfilterevent(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class GetpropertyList implements ProplistingEvent {
   GetpropertyList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetpropertyList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProplistingEvent.getpropertyList()';
}


}




/// @nodoc


class PropertyListingfilterevent implements ProplistingEvent {
   PropertyListingfilterevent(this.data);
  

 final  String data;

/// Create a copy of ProplistingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyListingfiltereventCopyWith<PropertyListingfilterevent> get copyWith => _$PropertyListingfiltereventCopyWithImpl<PropertyListingfilterevent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyListingfilterevent&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProplistingEvent.propertyListingfilterevent(data: $data)';
}


}

/// @nodoc
abstract mixin class $PropertyListingfiltereventCopyWith<$Res> implements $ProplistingEventCopyWith<$Res> {
  factory $PropertyListingfiltereventCopyWith(PropertyListingfilterevent value, $Res Function(PropertyListingfilterevent) _then) = _$PropertyListingfiltereventCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$PropertyListingfiltereventCopyWithImpl<$Res>
    implements $PropertyListingfiltereventCopyWith<$Res> {
  _$PropertyListingfiltereventCopyWithImpl(this._self, this._then);

  final PropertyListingfilterevent _self;
  final $Res Function(PropertyListingfilterevent) _then;

/// Create a copy of ProplistingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(PropertyListingfilterevent(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
