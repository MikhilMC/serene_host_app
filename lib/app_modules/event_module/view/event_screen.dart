import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/event_module/widget/create_event_form.dart';
import 'package:serene_host_app/app_modules/event_module/widget/event_history_widget.dart';
import 'package:serene_host_app/app_modules/event_module/widget/view_event_widget.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bottom: PreferredSize(
          preferredSize: Size(
            screenSize.width,
            screenSize.height * 0.05,
          ),
          child: TabBar(
            controller: _tabController,
            dividerColor: AppColors.primaryColor,
            indicatorColor: AppColors.secondaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            tabs: const [
              Tab(
                text: "Create Event",
              ),
              Tab(
                text: "View Event",
              ),
              Tab(
                text: "Event History",
              )
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CreateEventForm(),
          ViewEventWidget(),
          EventHistoryWidget(),
        ],
      ),
    );
  }
}
