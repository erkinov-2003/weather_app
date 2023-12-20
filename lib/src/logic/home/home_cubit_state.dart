import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part "home_cubit.dart";

abstract class HomeCubitState extends Equatable {}

class HomeInitializedState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}

class HomeSuccessState extends HomeCubitState {
  @override
  List<Object?> get props => [];
}
