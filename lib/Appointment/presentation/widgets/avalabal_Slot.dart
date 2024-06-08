import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/Appointment/presentation/bloc/appointment_bloc.dart';
import 'package:test/Appointment/presentation/bloc/appointment_event.dart';
import 'package:test/payment/presentation/pages/Payment.dart';

import 'package:test/theme/colors.dart';

class AvailableSlotsSection extends StatelessWidget {
  final List<String> timeSlots;

  const AvailableSlotsSection({super.key, required this.timeSlots});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
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
                    Icon(
                      Icons.access_alarm,
                      color: AppColors.white,
                    ),
                    Text(
                      "Available Slots",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white),
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns in the grid
                childAspectRatio:
                    8, // Aspect ratio for each item (width / height)
                mainAxisSpacing: 12.0, // Vertical spacing between items
                crossAxisSpacing: 12.0, // Horizontal spacing between items
              ),
              itemCount: timeSlots.length,
              itemBuilder: (context, index) {
                return Container(
                  color: AppColors.light, // Background color
                  child: GridTile(
                    child: ListTile(
                      title: Text(
                        timeSlots[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      leading: Radio(
                        value: timeSlots[index],
                        groupValue:
                            context.watch<AppointmentBloc>().state.selectedSlot,
                        onChanged: (String? value) {
                          context
                              .read<AppointmentBloc>()
                              .add(SelectTimeSlot(value!));
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Payment(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.dark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            child: const Text(
              'Book Appointment',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
