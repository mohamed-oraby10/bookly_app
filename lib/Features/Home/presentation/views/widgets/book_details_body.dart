import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_imge.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          children: [
            CustomBookDatailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: CustomBookItem(),
            ),
            const SizedBox(height: 43),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Opacity(
              opacity: .9,
              child: Text(
                'J.K. Rowling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
