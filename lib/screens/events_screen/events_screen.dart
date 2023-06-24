import 'package:flutter/material.dart';

import '../../utils/constants/constants.dart';
import '../widget.events/my_events/my_events.dart';
import '../widget.events/past_events/past_events.dart';
import '../widget.events/upcoming_events/upcoming_events.dart';

class EventsScreen extends StatelessWidget {
  static String routeName = './events_screen';
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: Container(),
              centerTitle: false,
              leadingWidth: 0,
              title: Text(
                "Events",
                style: tsWW(26, FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notification_add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.message))
              ],
              bottom: const TabBar(
                  indicatorWeight: 3,
                  indicatorColor: kWhite,
                  tabs: [
                    Tab(text: "Upcoming Events"),
                    Tab(text: "My Events"),
                    Tab(text: "Past Events")
                  ]),
            ),
            backgroundColor: kBlack,
            body: Padding(
              padding: pdo(0.02, 0, 0, 0),
              child: const TabBarView(
                children: [UpcomingEvents(), MyEvents(), PastEvents()],
              ),
            )),
      ),
    );
  }
}
