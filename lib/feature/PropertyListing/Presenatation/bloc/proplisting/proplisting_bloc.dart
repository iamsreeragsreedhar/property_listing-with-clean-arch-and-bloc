import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:data_float/feature/PropertyListing/Domain/entity/propertylisting.dart';
import 'package:data_float/feature/PropertyListing/Domain/usecase/property_listing_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'proplisting_state.dart';
part 'proplisting_event.dart';
part 'proplisting_bloc.freezed.dart';

class ProplistingBloc extends Bloc<ProplistingEvent, ProplistingState> {
  final PropertyListingUsecase usecase;
  ProplistingBloc(this.usecase) : super(ProplistingState()) {
    on<GetpropertyList>(_getPropertylisting);
    on<PropertyListingfilterevent>(_propertyfilter);
  }

  _getPropertylisting(
    GetpropertyList event,
    Emitter<ProplistingState> emit,
  ) async {
    emit(
      state.copyWith(
        statustype: Authtype.loading,
        wrktype: AuthWorkType.propertylisting,
      ),
    );
    print("before");
    try {
      final result = await usecase.getPropertyDetails();
      print(" result $result");
      // print("result :$result");
      result.fold(
        (error) {
          log("after inside error");
          emit(
            state.copyWith(
              statustype: Authtype.error,
              wrktype: AuthWorkType.propertylisting,
              msg: error.toString(),
            ),
          );
        },
        (data) {
          log("after insid data");
          emit(
            state.copyWith(
              statustype: Authtype.completed,
              wrktype: AuthWorkType.propertylisting,
              DataList: data,
              FiterList: data,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          statustype: Authtype.error,
          wrktype: AuthWorkType.propertylisting,
          msg: e.toString(),
        ),
      );
    }
  }

  _propertyfilter(
    PropertyListingfilterevent event,
    Emitter<ProplistingState> emit,
  ) async {
    final searchitem = event.data.toLowerCase();
    if (state.DataList == null) return;
    if (searchitem.isEmpty) {
      log("searchitem is empty");
      emit(state.copyWith(FiterList: state.DataList));
      return;
    }
    print("searching here");
    final filtered = state.DataList.where((search) {
      return search.address.toLowerCase().contains(searchitem);
    }).toList();

    emit(state.copyWith(FiterList: filtered));
  }
}
