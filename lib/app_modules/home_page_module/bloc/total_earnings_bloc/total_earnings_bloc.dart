import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serene_host_app/app_modules/home_page_module/model/total_earnings_model/total_earnings_model.dart';
import 'package:serene_host_app/app_modules/home_page_module/service/get_total_earnings.dart';

part 'total_earnings_event.dart';
part 'total_earnings_state.dart';
part 'total_earnings_bloc.freezed.dart';

class TotalEarningsBloc extends Bloc<TotalEarningsEvent, TotalEarningsState> {
  TotalEarningsBloc() : super(_Initial()) {
    on<_totalEarningsFetched>((event, emit) async {
      emit(TotalEarningsState.loading());
      try {
        final totalEarnings = await getTotalEarnings();
        emit(TotalEarningsState.success(totalEarnings));
      } catch (e) {
        emit(TotalEarningsState.error(e.toString()));
      }
    });
  }
}
