class Sessao{
  int? id;
  String titulo;
  String descricao;
  String local;
  int capacidadePublico;
  DateTime horaInicio;
  DateTime horaTermino;

  Sessao({
    this.id,
    required this.titulo,
    required this.descricao,
    required this.local,
    required this.capacidadePublico,
    required this.horaInicio,
    required this.horaTermino,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'local': local,
      'capacidadePublico': capacidadePublico,
      'horaInicio': horaInicio.toIso8601String(),
      'horaTermino': horaTermino.toIso8601String(),
    };
  }

  factory Sessao.fromMap(Map<String, dynamic> map){
    return Sessao(
      id: map['id'],
      titulo: map['titulo'],
      descricao: map['descricao'],
      local: map['local'],
      capacidadePublico: map['capacidadePublico'],
      horaInicio: DateTime.parse(map['horaInicio']),
      horaTermino: DateTime.parse(map['horaTermino']),
    );
  }
}