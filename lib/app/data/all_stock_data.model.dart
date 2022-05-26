class AllStockData {
  List<Stocks>? stocks;

  AllStockData({this.stocks});

  AllStockData.fromJson(Map<String, dynamic> json) {
    if (json['stocks'] != null) {
      stocks = <Stocks>[];
      json['stocks'].forEach((v) {
        stocks?.add(Stocks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (stocks != null) {
      data['stocks'] = stocks?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stocks {
  String? name;
  int? allTimeHigh;
  int? peRatio;
  String? marketCap;
  String? risk;
  String? investmentPeriod;

  Stocks(
      {this.name,
      this.allTimeHigh,
      this.peRatio,
      this.marketCap,
      this.risk,
      this.investmentPeriod});

  Stocks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    allTimeHigh = json['allTimeHigh'];
    peRatio = json['peRatio'];
    marketCap = json['marketCap'];
    risk = json['risk'];
    investmentPeriod = json['InvestmentPeriod'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['allTimeHigh'] = allTimeHigh;
    data['peRatio'] = peRatio;
    data['marketCap'] = marketCap;
    data['risk'] = risk;
    data['InvestmentPeriod'] = investmentPeriod;
    return data;
  }
}
