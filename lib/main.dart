
import 'package:bookappclean/Core/const.dart';
import 'package:bookappclean/Core/utils/network/local/blo_cobser.dart';
import 'package:bookappclean/Core/utils/network/local/cache_Helper.dart';
import 'package:bookappclean/Core/utils/network/remote/dio_helper.dart';
// import 'package:bookappclean/Feature/home/presentation/Views/home_view.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:bookappclean/Feature/splash/presentation/views/splachview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
await Hive.initFlutter();
await Hive.openBox(kNotebook);
  await CacheHelper.init();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return HomeCubit()
          ..featherBookList()
          ..featherbestSallerBookList();
          //searchFun(i: "c");
      },
      child: BlocConsumer<HomeCubit, HomeStates>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
            home: SplachView(),
            debugShowCheckedModeBanner: false,
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
