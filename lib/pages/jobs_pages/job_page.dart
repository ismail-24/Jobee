import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobee/pages/jobs_pages/categories_page.dart';
import 'package:jobee/widgets/chat_widgets/custom_search_bar.dart';
import 'package:jobee/widgets/custom_widgets/custom_back_button.dart';
import 'package:jobee/widgets/jobs_widgets/category_card.dart';
import 'package:jobee/widgets/jobs_widgets/job_card.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

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
            'Active Jobs',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CategriesPage.id);
                  },
                  child: Text(
                    'See More',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFF072AC8),
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: const CategoryCard(
                      number: '90',
                      track: 'Product Designers',
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: const CategoryCard(
                      number: '50',
                      track: 'Frontend Developer',
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: const CategoryCard(
                      number: '15',
                      track: 'Backend Developer',
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: const CategoryCard(
                      number: '60',
                      track: 'Flutter Developer',
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 130,
                    margin: const EdgeInsets.only(right: 16),
                    child: const CategoryCard(
                      number: '30',
                      track: 'Motion Designer',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 380,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: JobCard(
                        image: 'assets/jobs_icons/job_card/Avatar.png',
                        company: 'Synopsys Software House',
                        track: 'Junior UI/UX Designer',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: JobCard(
                        image: 'assets/jobs_icons/job_card/company2.png',
                        company: 'Innova Hub',
                        track: 'Junior Graphic Designer',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: JobCard(
                        image: 'assets/jobs_icons/job_card/company1.png',
                        company: 'Infinity lines',
                        track: 'BackEnd Developer',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: JobCard(
                        image: 'assets/jobs_icons/job_card/company2.png',
                        company: 'Innova Hub',
                        track: 'Junior Graphic Designer',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
