//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Marshall  on 7/26/22.
//

import Foundation

//App.Quicktype.io
//https://api.coingecko.com/api/v3/global

/*
 response
 
 {
 "data": {
 "active_cryptocurrencies": 13130,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 532,
 "total_market_cap": {
 "btc": 47638999.02889886,
 "eth": 725293293.9380555,
 "ltc": 19016089003.833927,
 "bch": 8606980779.444828,
 "bnb": 4097958124.171416,
 "eos": 926091362447.6785,
 "xrp": 3018774095729.472,
 "xlm": 9613577892929.68,
 "link": 162361168777.56787,
 "dot": 151574249831.40378,
 "yfi": 153513650.12149376,
 "usd": 996176752223.2332,
 "aed": 3658987096218.498,
 "ars": 130199743656595.33,
 "aud": 1437473091690.6028,
 "bdt": 94343286908522.94,
 "bhd": 375540704406.6182,
 "bmd": 996176752223.2332,
 "brl": 5345719550143.366,
 "cad": 1285035136535.1458,
 "chf": 959460665666.5411,
 "clp": 919321715789207.9,
 "cny": 6737342610636.1455,
 "czk": 24205731313050.754,
 "dkk": 7325400690124.805,
 "eur": 984179795596.2058,
 "gbp": 828402655967.2979,
 "hkd": 7819833097555.772,
 "huf": 394116521884767.56,
 "idr": 14944021101096026,
 "ils": 3432680642532.1816,
 "inr": 79565378355573.34,
 "jpy": 136162668421820.64,
 "krw": 1306265861687117,
 "kwd": 306051398878.53455,
 "lkr": 353600975355673.1,
 "mmk": 1844257036007533.2,
 "mxn": 20395703897660.168,
 "myr": 4438963607906.72,
 "ngn": 413662396360696.9,
 "nok": 9876276629533.266,
 "nzd": 1600102931198.0518,
 "php": 55255435000118.86,
 "pkr": 231964126982591.34,
 "pln": 4686447783168.548,
 "rub": 59895131212128.77,
 "sar": 3743158054720.8477,
 "sek": 10284936226244.307,
 "sgd": 1384944691545.868,
 "thb": 36590568285911.52,
 "try": 17795701501715.832,
 "twd": 29868366565732.402,
 "uah": 36656101773556.51,
 "vef": 99747178200.11229,
 "vnd": 23283318121103084,
 "zar": 16884924990107.166,
 "xdr": 731865159262.8523,
 "xag": 53491752872.96857,
 "xau": 580013952.2144532,
 "bits": 47638999028898.86,
 "sats": 4763899902889886
 },
 "total_volume": {
 "btc": 5505864.608302888,
 "eth": 83825579.0242465,
 "ltc": 2197779415.370034,
 "bch": 994749508.2577484,
 "bnb": 473620417.34956694,
 "eos": 107032762243.02176,
 "xrp": 348894011061.31177,
 "xlm": 1111086701207.459,
 "link": 18764848782.67111,
 "dot": 17518153502.144985,
 "yfi": 17742299.173469044,
 "usd": 115132862475.82169,
 "aed": 422886457859.5669,
 "ars": 15047800651186.908,
 "aud": 166135569223.9859,
 "bdt": 10903700224798.955,
 "bhd": 43403016761.86014,
 "bmd": 115132862475.82169,
 "brl": 617830111400.8003,
 "cad": 148517593209.34808,
 "chf": 110889410563.5503,
 "clp": 106250362135811.72,
 "cny": 778666575496.4744,
 "czk": 2797570941273.7354,
 "dkk": 846631231208.8893,
 "eur": 113746317413.02504,
 "gbp": 95742416043.36842,
 "hkd": 903775124841.515,
 "huf": 45549911913061.65,
 "idr": 1727151253458190.2,
 "ils": 396731149826.62164,
 "inr": 9195747384793.566,
 "jpy": 15736964090723.303,
 "krw": 150971328606935.56,
 "kwd": 35371808806.996735,
 "lkr": 40867338427727.31,
 "mmk": 213149515106471.6,
 "mxn": 2357228038805.5845,
 "myr": 513032035192.2606,
 "ngn": 47808921143084.875,
 "nok": 1141448037633.402,
 "nzd": 184931469554.61337,
 "php": 6386132164510.493,
 "pkr": 26809192115362.703,
 "pln": 541634952748.5791,
 "rub": 6922363816890.214,
 "sar": 432614493941.59894,
 "sek": 1188678761541.1343,
 "sgd": 160064613385.63538,
 "thb": 4228945171599.4,
 "try": 2056733455268.078,
 "twd": 3452028500479.694,
 "uah": 4236519186957.3696,
 "vef": 11528253519.704021,
 "vnd": 2690963282605350.5,
 "zar": 1951470702826.5806,
 "xdr": 84585120606.5619,
 "xag": 6182295073.007322,
 "xau": 67034957.847922176,
 "bits": 5505864608302.889,
 "sats": 550586460830288.9
 },
 "market_cap_percentage": {
 "btc": 40.10184594435123,
 "eth": 16.54946702047403,
 "usdt": 6.613334511774814,
 "usdc": 5.536057199828528,
 "bnb": 3.980105840861085,
 "busd": 1.7917436533575866,
 "xrp": 1.597491629792023,
 "ada": 1.5495720582637549,
 "sol": 1.2152234772440076,
 "doge": 0.8096790505552951
 },
 "market_cap_change_percentage_24h_usd": -5.506248682644794,
 "updated_at": 1658861268
 }
 }
 
 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketData?
}

// MARK: - DataClass
struct MarketData: Codable {
//    let activeCryptocurrencies, upcomingIcos, ongoingIcos, endedIcos: Int?
//    let markets: Int?
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
//    let updatedAt: Int?
    
    enum CodingKeys: String, CodingKey {
//        case activeCryptocurrencies = "active_cryptocurrencies"
//        case upcomingIcos = "upcoming_icos"
//        case ongoingIcos = "ongoing_icos"
//        case endedIcos = "ended_icos"
//        case markets
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
//        case updatedAt = "updated_at"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key  == "usd"}) {
            return "$" + "\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return  "$" + "\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
