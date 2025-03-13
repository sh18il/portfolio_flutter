class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Connect Hub: Bridging Communities, Building Connections",
    category: "MOBILE APP",
    image: "assets/images/work1.webp",
  ),
  RecentWork(
    id: 2,
    title: "BizFlow ERP: Streamline Your Business Operations",
    category: "ERP Software",
    image: "assets/images/work2.webp",
  ),
  RecentWork(
    id: 3,
    title: "Figo Travel: Your Gateway to Adventure",
    category: "Web Develop",
    image: "assets/images/work3.webp",
  ),
  RecentWork(
    id: 4,
    title: "ChatSense AI: Redefining Conversations with Intelligence",
    category: "AI Integration",
    image: "assets/images/Work4.webp",
  ),
];
