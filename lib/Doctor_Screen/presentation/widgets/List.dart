import 'package:flutter/material.dart';
import 'package:test/paitent_Detils/presentation/pages/paitent_Detils.dart';
import 'package:test/theme/colors.dart';

class AppointmentTile extends StatelessWidget {
  final String time;
  final String patientName;
  final String status;

  const AppointmentTile({
    super.key,
    required this.time,
    required this.patientName,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor;
    IconData iconData;
    Color iconColor;

    switch (status) {
      case 'completed':
        borderColor = Colors.green;
        iconData = Icons.check_circle;
        iconColor = Colors.green;
        break;
      case 'pending':
        borderColor = Colors.red;
        iconData = Icons.access_time;
        iconColor = Colors.red;
        break;
      case 'upcoming':
      default:
        borderColor = Colors.blue;
        iconData = Icons.access_time;
        iconColor = Colors.blue;
        break;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CircleAvatar(
          backgroundColor: borderColor.withOpacity(0.1),
          child: Icon(iconData, color: iconColor),
        ),
        SizedBox(
          height: 40,
          width: 80,
          child: Text(
            time,
            style: const TextStyle(
                backgroundColor: AppColors.light,
                color: AppColors.dark,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PatientRecord(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white, // Button text color
          ),
          child: Container(
            height: 30,
            width: 225,
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    '$patientName ',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  ' X years',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(width: 10),
                if (status == 'completed')
                  const Icon(Icons.check, color: Colors.grey),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
