//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Marshall  on 6/17/22.
//

/*
 API Info
 URL: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 
 //
 MAKE THE SCRUCT FOR YOU!
 app.quicktype.io
 
 Returned Data:
 
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
 "current_price": 20429,
 "market_cap": 389390522556,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 428798087770,
 "total_volume": 25009351182,
 "high_24h": 21238,
 "low_24h": 20283,
 "price_change_24h": -236.34432901995024,
 "price_change_percentage_24h": -1.14369,
 "market_cap_change_24h": -4677741674.94281,
 "market_cap_change_percentage_24h": -1.18704,
 "circulating_supply": 19070050,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 69045,
 "ath_change_percentage": -70.4265,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 67.81,
 "atl_change_percentage": 30012.45787,
 "atl_date": "2013-07-06T00:00:00.000Z",
 "roi": null,
 "last_updated": "2022-06-17T22:40:06.558Z",
 "sparkline_in_7d": {
 "price": [
 29109.488275519547,
 29025.135190236793,
 29024.663701531754,
 29224.28607261223,
 29228.26880797466,
 29191.89855178803,
 29099.974925109607,
 29244.805857520798,
 29220.980416365364,
 29288.08559785328,
 29275.07038197897,
 29376.67469175535,
 29313.098435627202,
 29305.555501858325,
 29327.79551741645,
 29149.519503828502,
 29125.25072075431,
 28918.168357342063,
 28713.167834674325,
 28618.75960192311,
 28776.638813153895,
 28485.561129865997,
 28372.280420017974,
 28445.313709974114,
 28568.44632123557,
 28669.447247923847,
 28645.334222754725,
 28496.00262627063,
 28587.891717075825,
 28668.084454785036,
 28374.14499732395,
 28533.772908249368,
 28305.320166741596,
 27526.820029381495,
 27619.629664080516,
 27499.802736238096,
 27395.022639696086,
 27529.036504997417,
 27583.46665902307,
 27581.90927171224,
 27504.75613829505,
 27534.32305402653,
 27476.35045595094,
 27489.80844045553,
 27330.67542247294,
 27781.35188369919,
 28098.14076989563,
 27885.815818869156,
 28182.61844060391,
 27972.056741869386,
 27504.645441386823,
 27417.844669521008,
 27430.930462051212,
 27081.503690661604,
 26767.269173221313,
 26389.12501208166,
 25828.020775605466,
 25560.999570762913,
 25560.289793814674,
 25593.050100725544,
 25293.3344107789,
 25363.862252798797,
 24775.94172655787,
 24411.722652336746,
 24023.123223515155,
 24057.34691606656,
 23675.467324670342,
 23873.95705965028,
 23699.993674240948,
 22839.235437638705,
 23355.708978643917,
 23686.09671171623,
 23488.252497663023,
 23434.873937761957,
 23257.067668642532,
 23272.901955214063,
 23065.891010203974,
 22638.10047819837,
 22525.768350391198,
 22123.539661439976,
 21046.94503440325,
 21459.34654416791,
 22048.33068897715,
 21922.684600354805,
 22813.61173414225,
 22555.183527755606,
 22930.746962544446,
 22603.562445149975,
 22374.090276039144,
 22403.707029127694,
 21968.036545102044,
 22155.984872884674,
 22230.58772295747,
 22468.231730265863,
 22658.963298466722,
 22488.49856521269,
 22404.604415670958,
 22280.526326929667,
 22216.27058944087,
 21954.571478881615,
 21451.999793501393,
 21605.29024309619,
 22223.152110755702,
 21849.555915839494,
 22170.026650934054,
 21960.692677005474,
 21493.5917548155,
 21143.838083404593,
 21227.23204290085,
 21341.784049291196,
 20814.501908313905,
 20384.64184671442,
 20216.09012566128,
 20607.52197569402,
 21081.288650842314,
 21237.929805416657,
 21642.498986783747,
 21215.03696741113,
 21401.476072468475,
 20735.252212100244,
 21102.219264985462,
 21641.444230944264,
 21709.047428128575,
 21748.753202621094,
 22266.540144429975,
 22479.02266738827,
 22583.879030763244,
 22664.041895280414,
 22418.856683608687,
 22459.370158739526,
 22269.537816388525,
 22109.2744623101,
 22003.149221852662,
 21813.324108818568,
 21757.406627470282,
 21776.193990099047,
 21254.109080668997,
 21110.606208355235,
 21050.865735793093,
 21253.223171032063,
 21078.029643252576,
 21015.205044316306,
 21077.81871053361,
 21191.71513380234,
 21115.184819836042,
 21076.102447103134,
 20939.177607656984,
 20707.358968047505,
 20802.404944788315,
 20473.081792316527,
 20408.690490591813,
 20322.13966539721,
 20860.00619877514,
 20618.073042452736,
 20401.812231966895,
 20578.244771455087,
 20844.98521482132,
 20900.064924209295,
 21102.458081780682,
 21098.23196042753,
 21007.018857950705,
 21077.554789018228,
 21013.20420491599,
 20710.850726188488,
 20819.663761850767,
 20616.15188204904,
 20619.296165911823,
 20580.519974328337
 ]
 },
 "price_change_percentage_24h_in_currency": -1.1436944798369073
 }
 
 */

struct Coin: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    var currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    //Might to the same as below
    func updateHoldings(amount: Double) -> Coin {
        return Coin(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    //Might do the exact same thing as above but save coding time?
    mutating func updateCurrentHoldings(amount: Double) {
        currentHoldings = amount
    }
    
    var currentHoldingsValue: Double {
        (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        Int(marketCapRank ?? 0)
    }
    
    
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
    let price: [Double]?
}





