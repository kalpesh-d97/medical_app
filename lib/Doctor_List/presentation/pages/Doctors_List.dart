import 'package:flutter/material.dart';
import 'package:test/Appointment/presentation/pages/appointment_Page.dart';
import 'package:test/Doctor_List/presentation/widgets/Doctors.dart';
import 'package:test/WelcomScreen/Welcome.dart';

import 'package:test/theme/colors.dart';

class ListDoctur extends StatelessWidget {
  const ListDoctur({super.key});

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
                'WELCOME TO SAPDOS',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 22,
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
                      builder: (context) => AppointmentScreen(),
                    ),
                  );
                }),
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
            ListTile(
                leading: const Icon(Icons.logout, color: AppColors.white),
                title: const Text(
                  'Logout',
                  style: TextStyle(color: AppColors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: isLargeScreen ? 50 : 30,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello!',
                              style: TextStyle(
                                fontSize: isLargeScreen ? 32 : 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Dr.Kalpesh',
                              style: TextStyle(
                                fontSize: isLargeScreen ? 32 : 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: isLargeScreen ? 60 : 30,
                        backgroundImage:
                            const AssetImage('assets/profile_picture.jpeg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                              "Doctor's List",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white),
                            ),
                            Icon(
                              Icons.filter_list,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: isLargeScreen ? 2 : 1,
                      childAspectRatio: isLargeScreen ? (1 / .3) : (1 / .4),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: List.generate(9, (index) {
                        return buildDoctorCard(isLargeScreen);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
