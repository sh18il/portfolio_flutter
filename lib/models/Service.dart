import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Web Develop",
    image: "assets/images/webdevelop.webp",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "App Develop",
    image: "assets/images/appdevelop.webp",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "ERP Software develop",
    image: "assets/images/erpsoftware.webp",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "AI integrations",
    image: "assets/images/aiitegration.webp",
    color: Color(0xFFFFE0E0),
  ),
];
