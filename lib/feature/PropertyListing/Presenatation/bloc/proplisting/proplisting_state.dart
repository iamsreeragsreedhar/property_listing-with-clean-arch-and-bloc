part of 'proplisting_bloc.dart';

enum Authtype { none, loading, completed, error }

enum AuthWorkType { none, propertylisting, filter }

@freezed
abstract class ProplistingState with _$ProplistingState {
  factory ProplistingState({
    @Default('') String msg,
    @Default(Authtype.none) Authtype statustype,
    @Default(AuthWorkType.none) AuthWorkType wrktype,
    @Default([]) List<PropertyListingEntity> DataList,
    @Default([]) List<PropertyListingEntity> FiterList,
  }) = _ProplistingState;
}
