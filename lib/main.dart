import 'package:bookly/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/Features/home/presentation/view_models/feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view_models/newest_book_cubit/newest_books_cubit.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/util/approuter.dart';
import 'package:bookly/core/util/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeatureBookCubit(getIt.get<HomeRepoImplementation>())..fetchFeaturedBook()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImplementation>())..fetchNewestBook())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
