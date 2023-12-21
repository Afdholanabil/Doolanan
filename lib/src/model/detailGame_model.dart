class GameDetails {
  final int appId;
  final String name;
  final String description;
  

  GameDetails({
    required this.appId,
    required this.name,
    required this.description,
    
  });

  factory GameDetails.fromJson(Map<String, dynamic> json) {
    return GameDetails(
      appId: json['appid'],
      name: json['name'],
      description: json['description'],
      
    );
  }
}
