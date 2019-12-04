class Treino {
  final String nome;
  final String categoria;
  final String duracao;
  final String espaco;
  final String dificuldade;
  final int treinoId;

  Treino({
    this.nome,
    this.treinoId,
    this.categoria,
    this.duracao,
    this.espaco,
    this.dificuldade
  });

  factory Treino.fromJson(Map<String, dynamic> json) {
    return Treino(
        nome: json['title'],
        treinoId: json['release_date'],
        categoria: json['episode_id'],
        duracao: json['opening_crawl'],
        espaco: json['director'],
        dificuldade: json['producer']
    );
  }

  String get title => null;
}