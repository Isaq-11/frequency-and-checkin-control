class Participante{
  int? id;
  String nome;
  // em curso, estudar a possibilidade de usar enum
  String curso;
  int periodo;
  String ra;

  Participante({
    this.id,
    required this.nome,
    required this.curso,
    required this.periodo,
    required this.ra,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'nome': nome,
      'curso': curso,
      'periodo': periodo,
      'ra': ra,
    };
  }

  factory Participante.fromMap(Map<String, dynamic> map){
    return Participante(
      id: map['id'],
      nome: map['nome'],
      curso: map['curso'],
      periodo: map['periodo'],
      ra: map['ra'],
    );
  }
}