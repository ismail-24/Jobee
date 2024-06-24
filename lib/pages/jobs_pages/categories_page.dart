import 'package:flutter/material.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_back_button.dart';
import 'package:jobee/widgets/jobs_widgets/category_card.dart';

class CategriesPage extends StatelessWidget {
  const CategriesPage({super.key});
  static String id = 'CategriesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        leading: const CustomBackButton(),
        title: const Center(
          child: Text(
            'All Categories',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomSearchBar(),
            Container(
              height: 670,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '90',
                        track: 'Product Designers',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '50',
                        track: 'Frontend Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '15',
                        track: 'Backend Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '60',
                        track: 'Flutter Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '30',
                        track: 'Motion Designer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '50',
                        track: 'Frontend Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '15',
                        track: 'Backend Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '60',
                        track: 'Flutter Developer',
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 130,
                      margin: const EdgeInsets.only(bottom: 12),
                      child: const CategoryCard(
                        number: '30',
                        track: 'Motion Designer',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
