class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: "Take care of Self Health", isDone: true),
      ToDo(id: '02', todoText: "Check Email", isDone: true),
      ToDo(
        id: '03',
        todoText: "Daily Exercise at lest 1h",
      ),
      ToDo(
        id: '04',
        todoText: "Pray Salah 5 Times",
      ),
      ToDo(
        id: '05',
        todoText: "Learn Something new",
      ),
      ToDo(
        id: '06',
        todoText: "Follow your dream",
      ),
    ];
  }
}
