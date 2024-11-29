import 'package:bookly/Features/home/presentation/views/widget/book_details_view_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsViewWidget(),
      ),
    );
  }
}
