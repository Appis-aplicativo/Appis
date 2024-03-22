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
  String anotacoes;

  ApiariosModelo({
    required this.id,
    required this.apelido,
    required this.descricao,
    required this.localizacao,
    required this.dateStart,
    required this.dateFinish,
    required this.tipoAbelha,
    required this.qtdColmeias,
    required this.anotacoes,
  });

  ApiariosModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        apelido = map["apelido"],
        descricao = map["descricao"],
        dateStart = map["dateStart"],
        dateFinish = map["dateFinish"],
        tipoAbelha = map["tipoAbelha"],
        qtdColmeias = map["qtdColmeias"],
        anotacoes = map["anotacoes"],
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
      "anotacoes" : anotacoes,
      "localizacao" : localizacao,
      "imagem" : imagem,
    };

  }
}
