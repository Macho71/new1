import 'package:dio/dio.dart';

class GetCurrencyService {
  getCurrency() async {
    try {
      Response response =
          await Dio().get("https://nbu.uz/uz/exchange-rates/json/");
      if (response.statusCode == 200) {
        int result = 1;
        List<dynamic> data = (response.data);

        for (int i = 1; i < data.length; i++) {
          result * data[i]["cb_price".length];
          {
            if (data[i]["cb_price"][i] == i + 1) {
              print(data[i]["cb_price"]);
            }
          }
        }
      }
    } catch (e) {}
  }
}
