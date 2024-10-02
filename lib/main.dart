import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Cursos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de cursos'),
        ),
        body: ListView.builder(
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              leading: Image.network(courseList[index].image, width: 50, height: 50),
              title: Text(courseList[index].name),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    courseList[index].description,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              ], 
            );
          },
        ),
      ),
    );
  }
}

class CourseItem {
  final String name;
  final String description;
  final String image;
  CourseItem({required this.name, required this.description, required this.image});
}

List<CourseItem> courseList = [
  CourseItem(
    name: 'Álgebra', 
    description: 'Estudia las operaciones y relaciones matemáticas.',
    image: 'https://via.placeholder.com/50',
    ),
  CourseItem(
    name: 'Aritmética', 
    description: 'Fundamentos de los números y las operaciones básicas.',
    image: 'https://via.placeholder.com/50',
    ),
  CourseItem(
    name: 'Geometría', 
    description: 'Estudio de las formas, tamaños y las propiedades del espacio.',
    image: 'https://via.placeholder.com/50',
    ),
  CourseItem(
    name: 'Física', 
    description: 'Análisis de las propiedades y comportamiento de la materia.',
    image: 'https://via.placeholder.com/50',
    ),
  CourseItem(
    name: 'Química', 
    description: 'Estudio de la composición y las propiedades de la materia.',
    image: 'https://via.placeholder.com/50',
    ),
];
