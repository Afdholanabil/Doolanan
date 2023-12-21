import 'dart:convert';
import 'package:doolanan/service/api/url_static_api.dart';
import 'package:doolanan/src/model/allgame_model.dart';
import 'package:doolanan/src/model/detailGame_model.dart';
import 'package:http/http.dart' as http;

class SteamApiService {
  final String apiKey;

  SteamApiService(this.apiKey);

  Future<List<AllGameModel>> getAllGames() async {
    final response = await http.get(Uri.parse('${ApiConstants.steamAllGames}&key=$apiKey'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> gamesData = data['applist']['apps'];

      return gamesData.map((gameJson) => AllGameModel.fromJson(gameJson)).toList();
    } else {
      throw Exception('Failed to load games');
    }
  }

  Future<GameDetails> getGameDetails(int appId) async {
    final response = await http.get(Uri.parse('${ApiConstants.steamDetailGames}$appId'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final Map<String, dynamic> gameData = data[appId.toString()];

      return GameDetails.fromJson(gameData);
    } else {
      throw Exception('Failed to load game details');
    }
  }
}
