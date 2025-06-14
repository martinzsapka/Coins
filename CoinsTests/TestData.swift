//
//  TestData.swift
//  Coins
//
//  Created by Support Aximmetry on 11/06/2025.
//

import Foundation

let mockCoinList_marketCapDesc: Data = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 109553,
    "market_cap": 2178311471828,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 2178311471828,
    "total_volume": 32902652126,
    "high_24h": 110237,
    "low_24h": 108633,
    "price_change_24h": 353.77,
    "price_change_percentage_24h": 0.32397,
    "market_cap_change_24h": 6042497134,
    "market_cap_change_percentage_24h": 0.27817,
    "circulating_supply": 19877325,
    "total_supply": 19877325,
    "max_supply": 21000000,
    "ath": 111814,
    "ath_change_percentage": -1.977,
    "ath_date": "2025-05-22T18:41:28.492Z",
    "atl": 67.81,
    "atl_change_percentage": 161535.76266,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.570Z",
    "price_change_percentage_24h_in_currency": 0.323967632023533
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 2772.44,
    "market_cap": 335075949366,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 335075949366,
    "total_volume": 34879669498,
    "high_24h": 2821.7,
    "low_24h": 2675.92,
    "price_change_24h": 93.29,
    "price_change_percentage_24h": 3.48201,
    "market_cap_change_24h": 11418715693,
    "market_cap_change_percentage_24h": 3.52803,
    "circulating_supply": 120722181.5589522,
    "total_supply": 120722181.5589522,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -43.02861,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 641781.87001,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 32.83995032533428,
      "currency": "btc",
      "percentage": 3283.995032533428
    },
    "last_updated": "2025-06-11T08:52:10.861Z",
    "price_change_percentage_24h_in_currency": 3.482014821723166
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://coin-images.coingecko.com/coins/images/325/large/Tether.png?1696501661",
    "current_price": 1,
    "market_cap": 155182565125,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 155182565125,
    "total_volume": 67411075688,
    "high_24h": 1,
    "low_24h": 0.999933,
    "price_change_24h": -0.000280077655066435,
    "price_change_percentage_24h": -0.028,
    "market_cap_change_24h": -40236863.415893555,
    "market_cap_change_percentage_24h": -0.02592,
    "circulating_supply": 155181610791.2075,
    "total_supply": 155181610791.2075,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.41877,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.66814,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:11.649Z",
    "price_change_percentage_24h_in_currency": -0.027999597890522667
  },
  {
    "id": "ripple",
    "symbol": "xrp",
    "name": "XRP",
    "image": "https://coin-images.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442",
    "current_price": 2.32,
    "market_cap": 136226064164,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 231567289270,
    "total_volume": 2670925619,
    "high_24h": 2.32,
    "low_24h": 2.27,
    "price_change_24h": 0.03777428,
    "price_change_percentage_24h": 1.65779,
    "market_cap_change_24h": 2127944790,
    "market_cap_change_percentage_24h": 1.58686,
    "circulating_supply": 58819652442,
    "total_supply": 99986060343,
    "max_supply": 100000000000,
    "ath": 3.4,
    "ath_change_percentage": -31.65669,
    "ath_date": "2018-01-07T00:00:00.000Z",
    "atl": 0.00268621,
    "atl_change_percentage": 86364.43009,
    "atl_date": "2014-05-22T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.488Z",
    "price_change_percentage_24h_in_currency": 1.6577927072595908
  },
  {
    "id": "binancecoin",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://coin-images.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1696501970",
    "current_price": 672.11,
    "market_cap": 98083184050,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 98083184050,
    "total_volume": 931174500,
    "high_24h": 673.62,
    "low_24h": 657.74,
    "price_change_24h": 13.33,
    "price_change_percentage_24h": 2.02302,
    "market_cap_change_24h": 1909635896,
    "market_cap_change_percentage_24h": 1.98561,
    "circulating_supply": 145887575.79,
    "total_supply": 145887575.79,
    "max_supply": 200000000,
    "ath": 788.84,
    "ath_change_percentage": -14.76263,
    "ath_date": "2024-12-04T10:35:25.220Z",
    "atl": 0.0398177,
    "atl_change_percentage": 1688570.01472,
    "atl_date": "2017-10-19T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:11.669Z",
    "price_change_percentage_24h_in_currency": 2.0230245000348828
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://coin-images.coingecko.com/coins/images/4128/large/solana.png?1718769756",
    "current_price": 165.85,
    "market_cap": 87202988576,
    "market_cap_rank": 6,
    "fully_diluted_valuation": 100089202849,
    "total_volume": 6131036638,
    "high_24h": 167.13,
    "low_24h": 157.02,
    "price_change_24h": 7.71,
    "price_change_percentage_24h": 4.87743,
    "market_cap_change_24h": 4126192959,
    "market_cap_change_percentage_24h": 4.96672,
    "circulating_supply": 525236436.0301479,
    "total_supply": 602852001.3839638,
    "max_supply": null,
    "ath": 293.31,
    "ath_change_percentage": -43.32095,
    "ath_date": "2025-01-19T11:15:27.957Z",
    "atl": 0.500801,
    "atl_change_percentage": 33096.09513,
    "atl_date": "2020-05-11T19:35:23.449Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.133Z",
    "price_change_percentage_24h_in_currency": 4.877429560966701
  },
  {
    "id": "usd-coin",
    "symbol": "usdc",
    "name": "USDC",
    "image": "https://coin-images.coingecko.com/coins/images/6319/large/usdc.png?1696506694",
    "current_price": 0.999801,
    "market_cap": 60910732956,
    "market_cap_rank": 7,
    "fully_diluted_valuation": 60981728181,
    "total_volume": 6525970416,
    "high_24h": 0.999831,
    "low_24h": 0.999703,
    "price_change_24h": 0.00000892,
    "price_change_percentage_24h": 0.00089,
    "market_cap_change_24h": -51635463.29299927,
    "market_cap_change_percentage_24h": -0.0847,
    "circulating_supply": 60922847343.49168,
    "total_supply": 60993856688.51815,
    "max_supply": null,
    "ath": 1.17,
    "ath_change_percentage": -14.74457,
    "ath_date": "2019-05-08T00:40:28.300Z",
    "atl": 0.877647,
    "atl_change_percentage": 13.91779,
    "atl_date": "2023-03-11T08:02:13.981Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:12.018Z",
    "price_change_percentage_24h_in_currency": 0.0008924643406877672
  },
  {
    "id": "dogecoin",
    "symbol": "doge",
    "name": "Dogecoin",
    "image": "https://coin-images.coingecko.com/coins/images/5/large/dogecoin.png?1696501409",
    "current_price": 0.202817,
    "market_cap": 30397915699,
    "market_cap_rank": 8,
    "fully_diluted_valuation": 30397915699,
    "total_volume": 1686977957,
    "high_24h": 0.203743,
    "low_24h": 0.1901,
    "price_change_24h": 0.01247018,
    "price_change_percentage_24h": 6.5513,
    "market_cap_change_24h": 1902932878,
    "market_cap_change_percentage_24h": 6.67813,
    "circulating_supply": 149638396383.7052,
    "total_supply": 149638396383.7053,
    "max_supply": null,
    "ath": 0.731578,
    "ath_change_percentage": -72.20134,
    "ath_date": "2021-05-08T05:08:23.458Z",
    "atl": 0.0000869,
    "atl_change_percentage": 233916.28917,
    "atl_date": "2015-05-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.374Z",
    "price_change_percentage_24h_in_currency": 6.551299448755936
  },
  {
    "id": "tron",
    "symbol": "trx",
    "name": "TRON",
    "image": "https://coin-images.coingecko.com/coins/images/1094/large/tron-logo.png?1696502193",
    "current_price": 0.291164,
    "market_cap": 27623450265,
    "market_cap_rank": 9,
    "fully_diluted_valuation": 27623482515,
    "total_volume": 768184498,
    "high_24h": 0.294139,
    "low_24h": 0.28653,
    "price_change_24h": 0.00463408,
    "price_change_percentage_24h": 1.61731,
    "market_cap_change_24h": 464943026,
    "market_cap_change_percentage_24h": 1.71196,
    "circulating_supply": 94847432744.68584,
    "total_supply": 94847543480.61726,
    "max_supply": null,
    "ath": 0.431288,
    "ath_change_percentage": -32.44953,
    "ath_date": "2024-12-04T00:10:40.323Z",
    "atl": 0.00180434,
    "atl_change_percentage": 16046.45972,
    "atl_date": "2017-11-12T00:00:00.000Z",
    "roi": {
      "times": 152.24434189053426,
      "currency": "usd",
      "percentage": 15224.434189053427
    },
    "last_updated": "2025-06-11T08:52:09.951Z",
    "price_change_percentage_24h_in_currency": 1.6173093516444352
  },
  {
    "id": "cardano",
    "symbol": "ada",
    "name": "Cardano",
    "image": "https://coin-images.coingecko.com/coins/images/975/large/cardano.png?1696502090",
    "current_price": 0.72236,
    "market_cap": 26126753810,
    "market_cap_rank": 10,
    "fully_diluted_valuation": 32572403193,
    "total_volume": 817237525,
    "high_24h": 0.726712,
    "low_24h": 0.688404,
    "price_change_24h": 0.03063948,
    "price_change_percentage_24h": 4.42946,
    "market_cap_change_24h": 1145386576,
    "market_cap_change_percentage_24h": 4.58496,
    "circulating_supply": 36095092968.40453,
    "total_supply": 45000000000,
    "max_supply": 45000000000,
    "ath": 3.09,
    "ath_change_percentage": -76.45931,
    "ath_date": "2021-09-02T06:00:10.474Z",
    "atl": 0.01925275,
    "atl_change_percentage": 3674.42271,
    "atl_date": "2020-03-13T02:22:55.044Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.842Z",
    "price_change_percentage_24h_in_currency": 4.429456917928973
  },
  {
    "id": "staked-ether",
    "symbol": "steth",
    "name": "Lido Staked Ether",
    "image": "https://coin-images.coingecko.com/coins/images/13442/large/steth_logo.png?1696513206",
    "current_price": 2770.65,
    "market_cap": 25020072842,
    "market_cap_rank": 11,
    "fully_diluted_valuation": 25020072842,
    "total_volume": 29607838,
    "high_24h": 2822.4,
    "low_24h": 2674.76,
    "price_change_24h": 93.68,
    "price_change_percentage_24h": 3.49936,
    "market_cap_change_24h": 869281790,
    "market_cap_change_percentage_24h": 3.59939,
    "circulating_supply": 9023961.155357651,
    "total_supply": 9023961.155357651,
    "max_supply": null,
    "ath": 4829.57,
    "ath_change_percentage": -42.49726,
    "ath_date": "2021-11-10T14:40:47.256Z",
    "atl": 482.9,
    "atl_change_percentage": 475.09984,
    "atl_date": "2020-12-22T04:08:21.854Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:09.795Z",
    "price_change_percentage_24h_in_currency": 3.49935822153142
  },
  {
    "id": "hyperliquid",
    "symbol": "hype",
    "name": "Hyperliquid",
    "image": "https://coin-images.coingecko.com/coins/images/50882/large/hyperliquid.jpg?1729431300",
    "current_price": 42.51,
    "market_cap": 14206033739,
    "market_cap_rank": 12,
    "fully_diluted_valuation": 42541774203,
    "total_volume": 542054576,
    "high_24h": 42.85,
    "low_24h": 39.12,
    "price_change_24h": 3.39,
    "price_change_percentage_24h": 8.6751,
    "market_cap_change_24h": 1140550295,
    "market_cap_change_percentage_24h": 8.72949,
    "circulating_supply": 333928180,
    "total_supply": 999990391,
    "max_supply": 1000000000,
    "ath": 42.85,
    "ath_change_percentage": -0.67069,
    "ath_date": "2025-06-11T08:26:13.817Z",
    "atl": 3.81,
    "atl_change_percentage": 1017.41426,
    "atl_date": "2024-11-29T09:30:30.871Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:17.370Z",
    "price_change_percentage_24h_in_currency": 8.675095348589961
  },
  {
    "id": "wrapped-bitcoin",
    "symbol": "wbtc",
    "name": "Wrapped Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1696507857",
    "current_price": 109535,
    "market_cap": 14109487302,
    "market_cap_rank": 13,
    "fully_diluted_valuation": 14109487302,
    "total_volume": 203194415,
    "high_24h": 110438,
    "low_24h": 108476,
    "price_change_24h": 468.67,
    "price_change_percentage_24h": 0.42971,
    "market_cap_change_24h": 41770250,
    "market_cap_change_percentage_24h": 0.29692,
    "circulating_supply": 128814.95633878,
    "total_supply": 128814.95633878,
    "max_supply": 128814.95633878,
    "ath": 111685,
    "ath_change_percentage": -1.98508,
    "ath_date": "2025-05-22T18:56:49.172Z",
    "atl": 3139.17,
    "atl_change_percentage": 3387.16997,
    "atl_date": "2019-04-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.869Z",
    "price_change_percentage_24h_in_currency": 0.42971225505808797
  },
  {
    "id": "wrapped-steth",
    "symbol": "wsteth",
    "name": "Wrapped stETH",
    "image": "https://coin-images.coingecko.com/coins/images/18834/large/wstETH.png?1696518295",
    "current_price": 3347.23,
    "market_cap": 12019108989,
    "market_cap_rank": 14,
    "fully_diluted_valuation": 12019108989,
    "total_volume": 18212433,
    "high_24h": 3408.01,
    "low_24h": 3208.28,
    "price_change_24h": 120.68,
    "price_change_percentage_24h": 3.74015,
    "market_cap_change_24h": 463552417,
    "market_cap_change_percentage_24h": 4.01151,
    "circulating_supply": 3590636.013483465,
    "total_supply": 3590636.013483465,
    "max_supply": null,
    "ath": 7256.02,
    "ath_change_percentage": -53.86748,
    "ath_date": "2022-05-13T15:09:54.509Z",
    "atl": 558.54,
    "atl_change_percentage": 499.30969,
    "atl_date": "2022-05-13T01:36:45.053Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:09.770Z",
    "price_change_percentage_24h_in_currency": 3.7401483446174675
  },
  {
    "id": "sui",
    "symbol": "sui",
    "name": "Sui",
    "image": "https://coin-images.coingecko.com/coins/images/26375/large/sui-ocean-square.png?1727791290",
    "current_price": 3.5,
    "market_cap": 11877818638,
    "market_cap_rank": 15,
    "fully_diluted_valuation": 34968998071,
    "total_volume": 1094822309,
    "high_24h": 3.55,
    "low_24h": 3.38,
    "price_change_24h": 0.112827,
    "price_change_percentage_24h": 3.33411,
    "market_cap_change_24h": 383453721,
    "market_cap_change_percentage_24h": 3.33601,
    "circulating_supply": 3396671135.364443,
    "total_supply": 10000000000,
    "max_supply": 10000000000,
    "ath": 5.35,
    "ath_change_percentage": -34.4443,
    "ath_date": "2025-01-04T22:56:18.063Z",
    "atl": 0.364846,
    "atl_change_percentage": 860.67299,
    "atl_date": "2023-10-19T10:40:30.078Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.264Z",
    "price_change_percentage_24h_in_currency": 3.3341138404103736
  },
  {
    "id": "chainlink",
    "symbol": "link",
    "name": "Chainlink",
    "image": "https://coin-images.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1696502009",
    "current_price": 15.28,
    "market_cap": 10052535563,
    "market_cap_rank": 16,
    "fully_diluted_valuation": 15298335132,
    "total_volume": 592874340,
    "high_24h": 15.45,
    "low_24h": 14.44,
    "price_change_24h": 0.816848,
    "price_change_percentage_24h": 5.64843,
    "market_cap_change_24h": 539468192,
    "market_cap_change_percentage_24h": 5.67081,
    "circulating_supply": 657099970.4527868,
    "total_supply": 1000000000,
    "max_supply": 1000000000,
    "ath": 52.7,
    "ath_change_percentage": -70.91112,
    "ath_date": "2021-05-10T00:13:57.214Z",
    "atl": 0.148183,
    "atl_change_percentage": 10244.52529,
    "atl_date": "2017-11-29T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.489Z",
    "price_change_percentage_24h_in_currency": 5.6484336230255
  },
  {
    "id": "avalanche-2",
    "symbol": "avax",
    "name": "Avalanche",
    "image": "https://coin-images.coingecko.com/coins/images/12559/large/Avalanche_Circle_RedWhite_Trans.png?1696512369",
    "current_price": 22.26,
    "market_cap": 9407600318,
    "market_cap_rank": 17,
    "fully_diluted_valuation": 10188244012,
    "total_volume": 559435368,
    "high_24h": 22.59,
    "low_24h": 21.55,
    "price_change_24h": 0.653581,
    "price_change_percentage_24h": 3.02534,
    "market_cap_change_24h": 291893052,
    "market_cap_change_percentage_24h": 3.20209,
    "circulating_supply": 421815997.5046081,
    "total_supply": 456818334.7217851,
    "max_supply": 720000000,
    "ath": 144.96,
    "ath_change_percentage": -84.57361,
    "ath_date": "2021-11-21T14:18:56.538Z",
    "atl": 2.8,
    "atl_change_percentage": 698.34963,
    "atl_date": "2020-12-31T13:15:21.540Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:09.972Z",
    "price_change_percentage_24h_in_currency": 3.0253418950632667
  },
  {
    "id": "stellar",
    "symbol": "xlm",
    "name": "Stellar",
    "image": "https://coin-images.coingecko.com/coins/images/100/large/fmpFRHHQ_400x400.jpg?1735231350",
    "current_price": 0.282723,
    "market_cap": 8829307414,
    "market_cap_rank": 18,
    "fully_diluted_valuation": 14149689898,
    "total_volume": 277355670,
    "high_24h": 0.284337,
    "low_24h": 0.272383,
    "price_change_24h": 0.01002199,
    "price_change_percentage_24h": 3.67509,
    "market_cap_change_24h": 314360557,
    "market_cap_change_percentage_24h": 3.69187,
    "circulating_supply": 31200764888.97344,
    "total_supply": 50001786892.81785,
    "max_supply": 50001786892.81785,
    "ath": 0.875563,
    "ath_change_percentage": -67.52133,
    "ath_date": "2018-01-03T00:00:00.000Z",
    "atl": 0.00047612,
    "atl_change_percentage": 59626.36952,
    "atl_date": "2015-03-05T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.376Z",
    "price_change_percentage_24h_in_currency": 3.6750850464984843
  },
  {
    "id": "bitcoin-cash",
    "symbol": "bch",
    "name": "Bitcoin Cash",
    "image": "https://coin-images.coingecko.com/coins/images/780/large/bitcoin-cash-circle.png?1696501932",
    "current_price": 443.68,
    "market_cap": 8825047860,
    "market_cap_rank": 19,
    "fully_diluted_valuation": 8825124151,
    "total_volume": 419465384,
    "high_24h": 445.15,
    "low_24h": 421.68,
    "price_change_24h": 21.75,
    "price_change_percentage_24h": 5.1537,
    "market_cap_change_24h": 439203344,
    "market_cap_change_percentage_24h": 5.23744,
    "circulating_supply": 19881871.77165078,
    "total_supply": 19882043.64665078,
    "max_supply": 21000000,
    "ath": 3785.82,
    "ath_change_percentage": -88.25182,
    "ath_date": "2017-12-20T00:00:00.000Z",
    "atl": 76.93,
    "atl_change_percentage": 478.10655,
    "atl_date": "2018-12-16T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:13.788Z",
    "price_change_percentage_24h_in_currency": 5.153702791181591
  },
  {
    "id": "leo-token",
    "symbol": "leo",
    "name": "LEO Token",
    "image": "https://coin-images.coingecko.com/coins/images/8418/large/leo-token.png?1696508607",
    "current_price": 9,
    "market_cap": 8314388859,
    "market_cap_rank": 20,
    "fully_diluted_valuation": 8872492870,
    "total_volume": 7526291,
    "high_24h": 9.07,
    "low_24h": 8.79,
    "price_change_24h": 0.182225,
    "price_change_percentage_24h": 2.06611,
    "market_cap_change_24h": 166328861,
    "market_cap_change_percentage_24h": 2.04133,
    "circulating_supply": 923265250.9,
    "total_supply": 985239504,
    "max_supply": null,
    "ath": 10.14,
    "ath_change_percentage": -11.19469,
    "ath_date": "2025-03-10T09:26:43.294Z",
    "atl": 0.799859,
    "atl_change_percentage": 1025.26251,
    "atl_date": "2019-12-24T15:14:35.376Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:15.680Z",
    "price_change_percentage_24h_in_currency": 2.0661056027013838
  }
]
""".data(using: .utf8)!

// invalid name key in bitcoin
let mockCoinList_invalidJSON: Data = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "nameee": "Bitcoin",
    "image": "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 109553,
    "market_cap": 2178311471828,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 2178311471828,
    "total_volume": 32902652126,
    "high_24h": 110237,
    "low_24h": 108633,
    "price_change_24h": 353.77,
    "price_change_percentage_24h": 0.32397,
    "market_cap_change_24h": 6042497134,
    "market_cap_change_percentage_24h": 0.27817,
    "circulating_supply": 19877325,
    "total_supply": 19877325,
    "max_supply": 21000000,
    "ath": 111814,
    "ath_change_percentage": -1.977,
    "ath_date": "2025-05-22T18:41:28.492Z",
    "atl": 67.81,
    "atl_change_percentage": 161535.76266,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2025-06-11T08:52:10.570Z",
    "price_change_percentage_24h_in_currency": 0.323967632023533
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 2772.44,
    "market_cap": 335075949366,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 335075949366,
    "total_volume": 34879669498,
    "high_24h": 2821.7,
    "low_24h": 2675.92,
    "price_change_24h": 93.29,
    "price_change_percentage_24h": 3.48201,
    "market_cap_change_24h": 11418715693,
    "market_cap_change_percentage_24h": 3.52803,
    "circulating_supply": 120722181.5589522,
    "total_supply": 120722181.5589522,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -43.02861,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 641781.87001,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 32.83995032533428,
      "currency": "btc",
      "percentage": 3283.995032533428
    },
    "last_updated": "2025-06-11T08:52:10.861Z",
    "price_change_percentage_24h_in_currency": 3.482014821723166
  }
]
""".data(using: .utf8)!
