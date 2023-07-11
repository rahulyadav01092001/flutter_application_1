import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final List<String> topics = [
    'Mathematics',
    'Science',
    'History',
    'Geography',
    'Literature',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/home.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Learn & Earn",
            style: TextStyle(
                color: Theme.of(context).canvasColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  'Welcome to the Family ✌️😇✌️',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Explore and learn with our content!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      backgroundColor: Theme.of(context).cardColor),
                  onPressed: () {
                    // Action to navigate to a specific section or topic
                  },
                  child: Text(
                    'Start Learning',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: 30.0),

                Text(
                  'Popular Courses :-',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 11, 12),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Example course card widgets
                      CourseCard(
                        title: 'Artificial Intelligence',
                        image: 'assets/AI.jpeg',
                      ),
                      CourseCard(
                        title: 'Machine Learning',
                        image: 'assets/ML.jpeg',
                      ),
                      CourseCard(
                        title: 'Big Data',
                        image: 'assets/BG.jpeg',
                      ),
                      CourseCard(
                        title: 'Java Programming',
                        image: 'assets/JAVA.jpeg',
                      )
                      // Add more course cards as needed
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Upcoming Courses :-',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 11, 12),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),

                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Example course card widgets
                      CourseCard(
                        title: 'Coding Context',
                        image: 'assets/Coding.jpeg',
                      ),
                      CourseCard(
                        title: 'Interview Prepration',
                        image: 'assets/interview.png',
                      ),
                      CourseCard(
                        title: 'Resume Building',
                        image: 'assets/resume.jpg',
                      ),
                      CourseCard(
                        title: 'CV Building',
                        image: 'assets/CV.jpg',
                      )
                      // Add more course cards as needed
                    ],
                  ),
                ),
                // Example: ListView.builder(...)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String image;

  CourseCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
