import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/home_card_widget.dart';
import '../widgets/location_widget.dart';
import '../constants/grocery_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    GroceryItem item = GroceryItem();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ), // Adjusted padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ), // Reduced height
              CustomTextField(
                hintText: 'Search Here',
                prefixIcon: Icon(Icons.search),
                controller: searchController,
              ),
              SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8, // Reduced spacing
                    childAspectRatio: 0.75, // Adjusted for better fit
                  ),
                  itemCount: item.vegtable.length,
                  itemBuilder: (context, index) {
                    return HomeCardWidget(
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

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grocery_plus/widgets/custom_text_field.dart';
// import '../constants/grocery_item.dart';
// import '../widgets/home_card_widget.dart';
// import '../widgets/location_widget.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var searchController = TextEditingController();
//     GroceryItem item = GroceryItem();
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Grocery Plus',
//                     style: GoogleFonts.poppins(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Icon(Icons.notifications_outlined),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               LocationWidget(),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.02),
//               CustomTextField(
//                 hintText: 'Search Here',
//                 prefixIcon: Icon(Icons.search),
//                 controller: searchController,
//               ),
//               SizedBox(height: 12),
//               Expanded(
//                 child: GridView.builder(
//                   itemCount: item.vegtable.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisExtent: 200,
//                     crossAxisSpacing: 8,
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 20,
//                   ),
//                   itemBuilder: (context, index) {
//                     return HomeCartWidget(
//                       imageUrl: item.vegtable[index]['image'],
//                       title: item.vegtable[index]['title'],
//                       rating: item.vegtable[index]['rating'],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
