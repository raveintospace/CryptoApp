//
//  MarketDataModel.swift
//  CryptoApp
//  Lesson 13
//  Created by Uri on 17/11/23.
//

import Foundation

// JSON Data
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10997,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 931,
     "total_market_cap": {
       "btc": 39222421.295301706,
       "eth": 738465491.7436051,
       "ltc": 20615734962.356613,
       "bch": 6299054993.297676,
       "bnb": 5887533108.3090105,
       "eos": 2042169320472.6565,
       "xrp": 2371602359959.9243,
       "xlm": 12256466083254.41,
       "link": 107208681353.33543,
       "dot": 275595172418.5565,
       "yfi": 97757455.41465878,
       "usd": 1427165095315.8096,
       "aed": 5241877493538.316,
       "ars": 505240051906804.5,
       "aud": 2196484148606.179,
       "bdt": 158049363343323.3,
       "bhd": 538011270467.0578,
       "bmd": 1427165095315.8096,
       "brl": 6984403259966.045,
       "cad": 1960356829255.9873,
       "chf": 1265708480917.6375,
       "clp": 1267779297470940.5,
       "cny": 10293570966474.81,
       "czk": 32125200862539.832,
       "dkk": 9779563185745.875,
       "eur": 1311426287580.9832,
       "gbp": 1148212832950.4778,
       "hkd": 11128127163437.18,
       "huf": 497075246105163,
       "idr": 22025927216264780,
       "ils": 5302918771830.037,
       "inr": 118822985718388.62,
       "jpy": 213772205297164.56,
       "krw": 1849680029116241.5,
       "kwd": 440022115022.6762,
       "lkr": 468376457416041.94,
       "mmk": 2998008379663863,
       "mxn": 24570586633226.2,
       "myr": 6679132646078.009,
       "ngn": 1129971659292547.5,
       "nok": 15470234150982.662,
       "nzd": 2389191397096.4824,
       "php": 79060659076549.6,
       "pkr": 411523055234315.56,
       "pln": 5756356238748.7,
       "rub": 127517212683788.58,
       "sar": 5352702571849.965,
       "sek": 15059805731376.455,
       "sgd": 1918275439255.5046,
       "thb": 50079223194631.914,
       "try": 40948219487635.97,
       "twd": 45290798866828.195,
       "uah": 51563718938991.48,
       "vef": 142902040993.9721,
       "vnd": 34666553747768708,
       "zar": 26232808674070.73,
       "xdr": 1077859302411.7891,
       "xag": 60206500884.20021,
       "xau": 720918176.2478296,
       "bits": 39222421295301.7,
       "sats": 3922242129530170.5
     },
     "total_volume": {
       "btc": 3124361.7770182714,
       "eth": 58824347.907534614,
       "ltc": 1642198828.9958465,
       "bch": 501767254.6073231,
       "bnb": 468986431.66462755,
       "eos": 162674193901.65073,
       "xrp": 188916020965.60773,
       "xlm": 976319994717.6122,
       "link": 8539980325.6158495,
       "dot": 21953234762.139507,
       "yfi": 7787118.87306952,
       "usd": 113684467354.22417,
       "aed": 417555090679.3521,
       "ars": 40246182011854.42,
       "aud": 174966534219.38818,
       "bdt": 12589824223093.102,
       "bhd": 42856656818.72801,
       "bmd": 113684467354.22417,
       "brl": 556360414784.838,
       "cad": 156157211726.69705,
       "chf": 100823229877.9735,
       "clp": 100988186040104.44,
       "cny": 819960589239.0774,
       "czk": 2559014623250.1167,
       "dkk": 779015991476.7805,
       "eur": 104464998105.19864,
       "gbp": 91463815049.63495,
       "hkd": 886439286791.4719,
       "huf": 39595793628858.766,
       "idr": 1754531281477195.2,
       "ils": 422417489032.5571,
       "inr": 9465147294570.297,
       "jpy": 17028568996054.535,
       "krw": 147340969573876.84,
       "kwd": 35051081290.187126,
       "lkr": 37309718586424.945,
       "mmk": 238813986471668.28,
       "mxn": 1957232602694.1035,
       "myr": 532043307217.7707,
       "ngn": 90010767943855.77,
       "nok": 1232320868182.6777,
       "nzd": 190317120477.29443,
       "php": 6297777983284.093,
       "pkr": 32780916161590.688,
       "pln": 458537204315.8754,
       "rub": 10157708067575.686,
       "sar": 426383144307.2767,
       "sek": 1199627148007.5476,
       "sgd": 152805111522.29034,
       "thb": 3989187959459.7383,
       "try": 3261834623642.921,
       "twd": 3607753834592.8364,
       "uah": 4107439245552.0347,
       "vef": 11383225716.178474,
       "vnd": 2761452554267785,
       "zar": 2089641129190.5046,
       "xdr": 85859625546.94107,
       "xag": 4795902034.562676,
       "xau": 57426571.83931291,
       "bits": 3124361777018.2715,
       "sats": 312436177701827.1
     },
     "market_cap_percentage": {
       "btc": 49.83115233775363,
       "eth": 16.26325691403934,
       "usdt": 6.1356569749286365,
       "bnb": 2.614270489868297,
       "xrp": 2.2631721387019006,
       "usdc": 1.6906984973489483,
       "sol": 1.6813530490647426,
       "steth": 1.2066042133654562,
       "ada": 0.8912844994250442,
       "doge": 0.813346347213733
     },
     "market_cap_change_percentage_24h_usd": -1.6844893748531702,
     "updated_at": 1700242255
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    // return MarketDataModel values in chosen currency
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    // how much % of total crypto market has BTC
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}
