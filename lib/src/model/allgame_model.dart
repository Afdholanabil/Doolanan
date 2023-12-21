class AllGameModel {
  final int appId;
  final String name;

  AllGameModel({required this.appId, required this.name});

factory AllGameModel.fromJson(Map<String, dynamic> json) {
    return AllGameModel(
      appId: json['appid'],
      name: json['name'],
    );
  }

}


