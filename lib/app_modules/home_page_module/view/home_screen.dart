import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/booking_history_module/view/booking_history_screen.dart';
import 'package:serene_host_app/app_modules/event_module/view/event_screen.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/booking_reviews_widget.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/current_bookings_widget.dart';
import 'package:serene_host_app/app_modules/home_page_module/widget/profile_widget.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_utils/random_generator_functions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  final PageController _pageController = PageController();

  late List<Widget> _appBodies;

  @override
  void initState() {
    _appBodies = [
      CurrentBookingsWidget(),
      BookingReviewsWidget(
        bookingReviews: generateRandomReviews(15),
      ),
      ProfileWidget(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_dark.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Hello, John",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.secondaryColor,
          backgroundColor: AppColors.tertiaryColor,
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return IconThemeData(
                  color: AppColors.tertiaryColor,
                ); // Icon color for selected item
              }
              return IconThemeData(
                color: AppColors.primaryColor,
              ); // Icon color for unselected items
            },
          ),
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  color: AppColors.primaryColor, // Text color for selected item
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(
                color: Colors.black, // Text color for unselected items
                fontWeight: FontWeight.normal,
              );
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          selectedIndex: _currentPageIndex,
          // labelBehavior: ,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.view_list),
              label: "Current Bookings",
            ),
            NavigationDestination(
              icon: Icon(Icons.reviews),
              label: "Reviews",
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: _appBodies,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.tertiaryColor,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Text(
                'Serene',
                style: TextStyle(
                  color: AppColors.tertiaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: AppColors.primaryColor,
              ),
              title: const Text(
                'Booking History',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookingHistoryScreen(
                      bookingHistory: generateRandomBookingHistory(15),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event,
                color: AppColors.primaryColor,
              ),
              title: const Text(
                'Events',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EventScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColors.primaryColor,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
