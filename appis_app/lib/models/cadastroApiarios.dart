// ignore_for_file: file_names
class ApiariosModelo {
  String id;
  String apelido;
  String descricao;

  String? localizacao;
  String? imagem;

  String dateStart;
  String dateFinish;
  String tipoAbelha;
  String qtdColmeias;

  ApiariosModelo({
    required this.id,
    required this.apelido,
    required this.descricao,
    required this.localizacao,
    required this.dateStart,
    required this.dateFinish,
    required this.tipoAbelha,
    required this.qtdColmeias
  });

  ApiariosModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        apelido = map["apelido"],
        descricao = map["descricao"],
        dateStart = map["dateStart"],
        dateFinish = map["dateFinish"],
        tipoAbelha = map["tipoAbelha"],
        qtdColmeias = map["qtdColmeias"],
        localizacao = map["localizacao"],
        imagem = map["imagem"];

  Map<String, dynamic> toMap(){
    return{
      "id": id,
      "apelido" : apelido,
      "descricao": descricao,
      "dateStart": dateStart,
      "dateFinish" : dateFinish,
      "tipoAbelha" : tipoAbelha,
      "qtdColmeias": qtdColmeias,
      "localizacao" : localizacao,
      "imagem" : imagem,
    };

  }
}
