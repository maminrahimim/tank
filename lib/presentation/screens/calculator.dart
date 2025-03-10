import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: const TextField(),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        cell(flex: 1, text: 'AC', color: Colors.orange),
                        cell(flex: 1, text: '7', color: Colors.black87),
                        cell(flex: 1, text: '4', color: Colors.black87),
                        cell(flex: 1, text: '1', color: Colors.black87),
                        cell(flex: 1, text: 'C', color: Colors.orange),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        cell(flex: 1, text: '/', color: Colors.orange),
                        cell(flex: 1, text: '8', color: Colors.black87),
                        cell(flex: 1, text: '5', color: Colors.black87),
                        cell(flex: 1, text: '2', color: Colors.black87),
                        cell(flex: 1, text: '0', color: Colors.black87),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        cell(flex: 1, text: '*', color: Colors.orange),
                        cell(flex: 1, text: '9', color: Colors.black87),
                        cell(flex: 1, text: '6', color: Colors.black87),
                        cell(flex: 1, text: '3', color: Colors.black87),
                        cell(flex: 1, text: '.', color: Colors.black87),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        cell(flex: 1, text: '-', color: Colors.orange),
                        cell(flex: 2, text: '+', color: Colors.orange),
                        cell(flex: 2, text: '=', color: Colors.orange),
                      ],
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

  Widget cell({required int flex, required String text, required Color color}) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
