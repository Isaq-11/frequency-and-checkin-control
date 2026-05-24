class Palestrante {
  int? id;
  String nome;
  String formacao;

  Palestrante({
    this.id,
    required this.nome,
    required this.formacao,
  });

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'nome': nome,
      'formacao': formacao,
    };
  }

  factory Palestrante.fromMap(Map<String, dynamic> map){
    return Palestrante(
      id: map['id'],
      nome: map['nome'],
      formacao: map['formacao'],
    );
  }
}