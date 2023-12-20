import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/src/model/weather_model.dart';
import 'package:weather_app/src/service/network_service.dart';

part "home_cubit.dart";

abstract class HomeCubitState extends Equatable {}

class HomeInitializedState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeCubitState {
  final String error;
  HomeErrorState({required this.error});

  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}

class HomeSuccessState extends HomeCubitState {
  final List<WeatherModel> weatherList;
  HomeSuccessState({required this.weatherList});
  @override
  List<Object?> get props => [];
}
