import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_imge.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookItem(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Fvectors%2Fbooks&psig=AOvVaw3UhSzrfo-qDHfNi-HyJ9jT&ust=1762098677641000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCKDMzKCn0ZADFQAAAAAdAAAAABAE',),
          );
        },
      ),
    );
  }
}
