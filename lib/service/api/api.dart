int? idGames;

class API {

  static String ALL_GAMES =
      "http://api.steampowered.com/ISteamApps/GetAppList/v0002/?key=STEAMKEY&format=json";
  static String DETAIL_GAMES =
      "https://store.steampowered.com/api/appdetails?appids=$idGames";
}
