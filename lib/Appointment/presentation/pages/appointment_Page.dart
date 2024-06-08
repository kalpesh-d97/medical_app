import 'package:flutter/material.dart';
import 'package:test/Appointment/presentation/widgets/Profile_section.dart';
import 'package:test/Appointment/presentation/widgets/avalabal_Slot.dart';

class AppointmentScreen extends StatelessWidget {
  final List<String> timeSlots = [
    '01:00 - 10:15 AM',
    '02:00 - 10:15 AM',
    '03:00 - 10:15 AM',
    '04:00 - 10:15 AM',
    '06:00 - 10:15 AM',
    '07:00 - 10:15 AM',
    '08:00 - 10:15 AM',
    '09:00 - 10:15 AM',
    '10:00 - 10:15 AM',
  ];

  AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileSection(),
            AvailableSlotsSection(timeSlots: timeSlots),
          ],
        ),
      ),
    );
  }
}
