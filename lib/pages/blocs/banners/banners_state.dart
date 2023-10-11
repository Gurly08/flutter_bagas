part of 'banners_cubit.dart';

@immutable
sealed class BannersState {}

final class BannersInitial extends BannersState {}

final class BannersLoading extends BannersState {}

final class BannersSuccess extends BannersState {
  final BannerResponseModel bannerResponse;

    BannersSuccess({required this.bannerResponse});
}

final class BannersError extends BannersState {
   final String? message;

  BannersError({this.message});
}
