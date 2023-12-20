part of "home_cubit_state.dart";

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeInitializedState()){
    getAllWeatherData();
  }

  Future getAllWeatherData() async {
    emit(HomeLoadingState());

  }
}
