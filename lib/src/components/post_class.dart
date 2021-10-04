class Post {
  final int? id;
  final String? name;
  final String? userName;
  final String? email;
  final String? phone;
  final String? website;
  final String? company;

  Post({
    this.id,
    this.name,
    this.userName,
    this.email,
    this.phone,
    this.website,
    this.company,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> jsonCompany = json["company"];
    return Post(
      id: json['id'],
      name: json['name'],
      userName: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      company: jsonCompany['name'],
    );
  }

  @override
  String toString() {
    // TODO: implement toString

    if (id == null ||
        name == null ||
        userName == null ||
        email == null ||
        phone == null ||
        website == null ||
        company == null) {
      return "Valores nulos";
    } else {
      String postInfo = "ID: " +
          id!.toString() +
          "\n\n" +
          "Nombre: " +
          name! +
          "\n\n" +
          "Nombre de usuario: " +
          userName! +
          "\n\n" +
          "Correo: " +
          email! +
          "\n\n" +
          "Sitio web: " +
          website! +
          "\n\n" +
          "Telefono: " +
          phone! +
          "\n\n" +
          "Empresa: " +
          company!;

      return postInfo;
    }
  }
}
