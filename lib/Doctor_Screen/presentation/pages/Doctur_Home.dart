import 'package:flutter/material.dart';
import 'package:test/Appointment/presentation/pages/appointment_Page.dart';
import 'package:test/Doctor_List/presentation/pages/Doctors_List.dart';
import 'package:test/Doctor_Screen/presentation/widgets/List.dart';
import 'package:test/Doctor_Screen/presentation/widgets/cart.dart';

import 'package:test/theme/colors.dart';

class DocturHome extends StatelessWidget {
  const DocturHome({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isLargeScreen = screenSize.width > 600;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.dark,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(),
              child: Text(
                'SAPDOS',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 44,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard_customize_outlined,
                  color: AppColors.white),
              title: const Text(
                'Categories',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListDoctur(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today_outlined,
                  color: AppColors.white),
              title: const Text(
                'Appointment',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentScreen(),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.chat_bubble, color: AppColors.white),
              title: Text(
                'Chat',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings, color: AppColors.white),
              title: Text(
                'Settings',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.logout, color: AppColors.white),
              title: Text(
                'Logout',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: isLargeScreen ? 160 : 120,
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello!',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: isLargeScreen ? 50 : 30),
              ),
              Text(
                'Dr. Amol',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: isLargeScreen ? 30 : 20),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: CircleAvatar(
              radius: isLargeScreen ? 40 : 30,
              //backgroundImage: NetworkImage('URL_OF_IMAGE'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                "Today's Appointments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: AppointmentSummaryCard(
                      label: 'Pending Appointments',
                      count: '19/40',
                      percentage: 19 / 40,
                    ),
                  ),
                  SizedBox(width: isLargeScreen ? 80 : 16),
                  Flexible(
                    child: AppointmentSummaryCard(
                      label: 'Completed Appointments',
                      count: '21/40',
                      percentage: 21 / 40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            const Card(
              color: AppColors.dark,
              elevation: 8,
              child: SizedBox(
                height: 45,
                child: Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wednesday, March 7',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),
                      ),
                      Icon(
                        Icons.calendar_month_sharp,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  AppointmentTile(
                    time: '10:00 AM',
                    patientName: 'Patient Name',
                    status: 'pending',
                  ),
                  AppointmentTile(
                    time: '10:15 AM',
                    patientName: 'Patient Name',
                    status: 'completed',
                  ),
                  AppointmentTile(
                    time: '10:30 AM',
                    patientName: 'Patient Name',
                    status: 'pending',
                  ),
                  AppointmentTile(
                    time: '10:45 AM',
                    patientName: 'Patient Name',
                    status: 'completed',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
