import 'package:flutter/material.dart';

Widget buildDoctorCard(bool isLargeScreen) {
  return SizedBox(
    child: Card(
      elevation: 5,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xFFE5E8F2),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: isLargeScreen ? 40 : 50,
              backgroundImage: AssetImage('profile_picture.jpg'),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Doctor's name",
                  style: TextStyle(
                    fontSize: isLargeScreen ? 18 : 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Doctor's specialization",
                  style: TextStyle(
                    fontSize: isLargeScreen ? 14 : 12,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const Icon(Icons.star_half, color: Colors.amber, size: 20),
                    const SizedBox(width: 5),
                    Text('512', style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
