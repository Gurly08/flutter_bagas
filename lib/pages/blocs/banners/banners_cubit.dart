import 'package:aplikasi_bootcamp/data/model/banner/banner_response.dart';
import 'package:aplikasi_bootcamp/datasource/banner/banner_remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'banners_state.dart';

class BannersCubit extends Cubit<BannersState> {
  final BannerRemoteDatasource remoteDatasource;
  BannersCubit({required this.remoteDatasource}) : super(BannersInitial());

  void getBanners() async {
    emit(BannersLoading());

    final result = await remoteDatasource.getBanners();

    emit(BannersSuccess(bannerResponse: result));
  }
}
