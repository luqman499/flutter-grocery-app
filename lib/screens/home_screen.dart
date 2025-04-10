import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_plus/widgets/custom_text_field.dart';
import '../constants/grocery_item.dart';
import '../widgets/home_card_widget.dart';
import '../widgets/location_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    GroceryItem item = GroceryItem();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grocery Plus',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.notifications_outlined),
                ],
              ),
              const SizedBox(height: 10),
              LocationWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomTextField(
                hintText: 'Search Here',
                prefixIcon: Icon(Icons.search),
                controller: searchController,
              ),
              SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return HomeCartWidget(
                      imageUrl: item.vegtable[index]['image'],
                      title: item.vegtable[index]['title'],
                      rating: item.vegtable[index]['rating'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
