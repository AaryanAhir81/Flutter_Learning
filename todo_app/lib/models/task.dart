class Task {
  String title;
  bool isCompleted;

  Task(this.title, this.isCompleted);

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isCompleted': isCompleted,
    };
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      json['title'],
      json['isCompleted'],
    );
  }
}