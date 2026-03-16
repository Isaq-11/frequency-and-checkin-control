class Sessao{
  int? id;
  String titulo;
  String descricao;
  String local;
  DateTime horaInicio;
  DateTime horaTermino;

  Sessao({
    this.id,
    required this.titulo,
    required this.descricao,
    required this.local,
    required this.horaInicio,
    required this.horaTermino,
  });

  Map<String, dynamic> toMap(){
    return {
      'titulo': titulo,
      'descricao': descricao,
      'local': local,
      'horaInicio': horaInicio.toIso8601String(),
      'horaTermino': horaTermino.toIso8601String(),
    };
  }

  factory Sessao.fromMap(Map<String, dynamic> map){
    return Sessao(
      titulo: map['titulo'],
      descricao: map['descricao'],
      local: map['local'],
      horaInicio: DateTime.parse(map['horaInicio']),
      horaTermino: DateTime.parse(map['horaTermino']),
    );
  }
}