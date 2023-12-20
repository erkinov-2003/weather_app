import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/logic/home/home_cubit_state.dart';

import 'src/widget/app.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HomeCubit()),
    ], child: const MyApplication()),
  );
}
