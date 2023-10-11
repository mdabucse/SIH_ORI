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
      ToDo(id: '01', todoText: 'visit Meenakshi Amman Kovil', isDone: true ),
      ToDo(id: '02', todoText: 'Lunch In Amsavalli bavan', isDone: true ),
      ToDo(id: '03', todoText: 'Jigarthanda', ),
      ToDo(id: '04', todoText: 'Alagar Kovil', ),
      ToDo(id: '05', todoText: 'Thirumalainaayakkar Mahal', ),
    ];
  }
}