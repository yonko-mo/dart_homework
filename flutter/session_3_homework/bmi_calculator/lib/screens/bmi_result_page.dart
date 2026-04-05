import 'package:flutter/material.dart';

class BmiResultPage extends StatelessWidget {
  final double bmi;
  final String status;
  final double height;
  final int weight;
  final int age;

  const BmiResultPage({
    super.key,
    required this.bmi,
    required this.status,
    required this.height,
    required this.weight,
    required this.age,
  });

  Color getStatusColor() {
    if (status == 'Underweight') {
      return const Color(0xff00bfff);
    } else if (status == 'Normal Weight') {
      return const Color(0xff00ff00);
    } else if (status == 'Overweight') {
      return const Color(0xffff8c00);
    } else {
      return const Color(0xffff0000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04061d),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061d),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'BMI RESULT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BMI Value
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: getStatusColor(), width: 4),
              ),
              child: Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                  color: getStatusColor(),
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Status
            Text(
              status,
              style: TextStyle(
                color: getStatusColor(),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            // Details Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff1a1a2e),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xffec0d54), width: 2),
              ),
              child: Column(
                children: [
                 
                  _buildDetailRow('Height', '${height.round()} cm'),
                  const SizedBox(height: 15),
                  _buildDetailRow('Weight', '$weight kg'),
                  const SizedBox(height: 15),
                  _buildDetailRow('Age', '$age years'),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // Back Button
            SizedBox(
              width: 200,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffec0d54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'BACK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Color(0xffec0d54),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
