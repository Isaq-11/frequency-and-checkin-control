class PalestranteSessao {
  int? id;
  var palestranteId;
  var sessaoId;

  PalestranteSessao({
    this.id,
    required this.palestranteId,
    required this.sessaoId,
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'palestrante_id': palestranteId,
      'sessao_id': sessaoId,
    };
  }

  factory PalestranteSessao.fromMap(Map<String, dynamic> map){
    return PalestranteSessao(
      id: map['id'],
      palestranteId: map['palestrante_id'],
      sessaoId: map['sessao_id'],
    );
  }
}