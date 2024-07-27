class Notifications {
  Notifications({required this.date, required this.title, required this.image});

  final String date;
  final String title;
  final String image;
}

class Scholarships {
  Scholarships({required this.date, required this.title, required this.image});

  final String date;
  final String title;
  final String image;
}

class CourseOutline {
  CourseOutline({
    // required this.semester,
    required this.code,
    required this.subject,
    required this.download,
  });

  // final String semester;
  final String code;
  final String subject;
  final String download;
}
