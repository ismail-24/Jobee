import 'package:flutter/material.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';
import 'package:jobee/widgets/courses_widgets/course_card_widget.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Courses',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            CustomSearchBar(),
            const CategoryName(
              categoryName: 'Best Seller',
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const CourseCard();
                },
              ),
            ),
            const CategoryName(
              categoryName: 'For You',
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const CourseCard();
                },
              ),
            ),
            const CategoryName(
              categoryName: 'Free',
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const CourseCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryName extends StatelessWidget {
  const CategoryName({
    super.key,
    required this.categoryName,
  });
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        categoryName,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
