import 'package:flutter/material.dart';
import 'package:system/features/Home/presentation/widgets/build_text_home_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextHomePageWidget(text: 'Search'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Search'),
      ),
    );
  }
}
