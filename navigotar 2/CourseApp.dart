import 'package:flutter/material.dart';

void main() {
    runApp(CourseApp());
}

class Course {
    final String code;
    final String title;
    final String description;

    Course({required this.code, required this.title, this.description = ""});
}

class CourseApp extends StatefulWidget {
    @override
    _CourseAppState createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
    Course? _selectedCourse;
    List<Course> courses = [
        Course(
                code: "SiTE-001",
                title: "Introduction To Programming",
                description: "Computer Organization, Architecture, Programming"),
        // Add more courses here...
    ];

    void _handleCourseTapped(Course course) {
        setState(() {
            _selectedCourse = course;
        });
    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Navigator(
                pages: [
                    MaterialPage(
                        key: const ValueKey('CoursesListScreen'),
                        child: CoursesListScreen(
                            courses: courses,
                            onTapped: _handleCourseTapped,
                        ),
                    ),
                    if (_selectedCourse != null)
                        MaterialPage(
                            key: ValueKey(_selectedCourse),
                            child: CourseDetailsScreen(course: _selectedCourse!),
                        ),
                ],
                onPopPage: (route, result) {
                    if (!route.didPop(result)) {
                        return false;
                    }

                    _selectedCourse = null;
                    return true;
                },
            ),
        );
    }
}

class CoursesListScreen extends StatelessWidget {
    final List<Course> courses;
    final ValueChanged<Course> onTapped;

    CoursesListScreen({required this.courses, required this.onTapped});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text("Courses List")),
            body: ListView(
                children: courses.map((course) {
                    return ListTile(
                        title: Text(course.title),
                        subtitle: Text(course.code),
                        onTap: () => onTapped(course),
                    );
                }).toList(),
            ),
        );
    }
}

class CourseDetailsScreen extends StatelessWidget {
    final Course course;

    CourseDetailsScreen({required this.course});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text(course.title)),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(course.title, style: TextStyle(fontSize: 24)),
                        Text(course.code, style: TextStyle(fontSize: 20)),
                        Text(course.description, style: TextStyle(fontSize: 16)),
                    ],
                ),
            ),
        );
    }
}