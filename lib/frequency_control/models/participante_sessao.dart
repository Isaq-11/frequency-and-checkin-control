import '../enums/status_presenca.dart';

class ParticipanteSessao{
  int? id;
  var participanteId;
  var sessaoId;
  // DateTime entrada;
  // DateTime? saida;
  // StatusPresenca status;

  ParticipanteSessao({
    this.id,
    required this.participanteId,
    required this.sessaoId,
    // required this.entrada,
    // this.saida,
    // this.status = StatusPresenca.pendente,
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'participante_id': participanteId,
      'sessao_id': sessaoId,
      // 'entrada': entrada.toIso8601String(),
      // 'saida': saida?.toIso8601String(),
      // 'status': status.name,
    };
  }

  factory ParticipanteSessao.fromMap(Map<String, dynamic> map){
    return ParticipanteSessao(
      id: map['id'],
      participanteId: map['participanteId'],
      sessaoId: map['sessaoId'],
      // entrada: DateTime.parse(map['entrada']),
      // saida: map['saida'] != null ? DateTime.parse(map['saida']) : null,
      // status: StatusPresenca.values.firstWhere(
      //   (e) => e.name == map['status'],
      //   orElse: () => StatusPresenca.pendente,
      // ),
    );
  }
}