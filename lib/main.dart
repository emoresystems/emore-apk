import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emore Systems',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Emore Systems')),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // App Name
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Emore Solutions List',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          // Slider
          SizedBox(
            height: 200, // Adjust height as needed
            child: PageView(
              children: [
                Image.asset('./assets/slider_image1.jpg', fit: BoxFit.cover),
                Image.asset('./assets/slider_image2.jpg', fit: BoxFit.cover),
                Image.asset('./assets/slider_image3.jpg', fit: BoxFit.cover),
              ],
            ),
          ),
          const SizedBox(height: 20), // Spacing between slider and cards
          // Services Cards
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Our Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ServiceCard(title: 'Software Development', description: 'Custom software solutions for your needs.'),
                      ServiceCard(title: 'Android Development', description: 'High-quality Android applications.'),
                    ],
                  ),
                  SizedBox(height: 20), // Add spacing between rows of cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ServiceCard(title: 'Consulting', description: 'Expert advice on tech and development.'),
                      ServiceCard(title: 'Support', description: 'Ongoing support and maintenance services.'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Other sections
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Us',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'We are a team of passionate developers dedicated to delivering top-notch software solutions and Android applications. Our mission is to help businesses thrive in the digital world.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Feel free to reach out to us for any inquiries or project discussions. We are here to assist you with your technological needs.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;

  const ServiceCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(8),
      child: Container(
        width: 150, // Adjust width as needed
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}
