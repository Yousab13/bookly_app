import 'package:bookly/Features/search/presentation/view_models/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          size: 24,
        ),
        
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
      onChanged: (valueKey){
       BlocProvider.of<SearchCubit>(context).fetchSearchBook(query: valueKey);
      },
    );
  }

  OutlineInputBorder outlineBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)));
  }
}
