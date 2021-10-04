class Post {
  final int? id;
  final String? name;
  final String? userName;

  Post({this.id, this.name, this.userName});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      name: json['name'],
      userName: json['username'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString

    if (id == null || name == null || userName == null) {
      return "Valores nulos";
    } else {
      String postInfo = "ID: " +
          id!.toString() +
          "\n\n" +
          "Nombre: " +
          name! +
          "\n\n" +
          "Nombre de usuario: " +
          userName!;

      return postInfo;
    }
  }
}
