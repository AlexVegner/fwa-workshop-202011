final fakeArticlesResponse = r'''
{
  "articles": [
    {
      "author":"Livecoins",
      "title":"CEO do Twitter' $ investe no desenvolvimento do Bitcoin"
    },
    {
      "author":"Lauren Barack",
      "title":"Top 10 Data Hacks and Breaches of 2020"
    }
  ]
}
''';
// const fakeArticlesResponse = r'''
// {
//    "status":"ok",
//    "totalResults":555,
//    "articles":[
//       {
//          "source":{
//             "id":null,
//             "name":"Livecoins.com.br"
//          },
//          "author":"Livecoins",
//          "title":"CEO do Twitter investe no desenvolvimento do Bitcoin",
//          "description":"Jack Dorsey, CEO do Twitter, agora investe no desenvolvimento do Bitcoin, em pelo menos duas vertentes importantes ao futuro da moeda.",
//          "url":"https://livecoins.com.br/ceo-do-twitter-investe-no-desenvolvimento-do-bitcoin/",
//          "urlToImage":"https://livecoins.com.br/wp-content/uploads/2020/12/Bitcoin-em-cima-de-teclado-desenvolvimento-da-moeda.jpg",
//          "publishedAt":"2020-12-15T23:41:03Z",
//          "content":"Jack Dorsey, CEO do Twitter, agora investe no desenvolvimento do Bitcoin, especificamente em seu design. Com essa filosofia, Dorsey mostra para as demais empresas que não basta comprar Bitcoin, é nec… [+3256 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Gearbrain.com"
//          },
//          "author":"Lauren Barack",
//          "title":"Top 10 Data Hacks and Breaches of 2020",
//          "description":"Hackers continued to do their best this year to go after people\'s data and details. In some cases, people made this easier by being home and using personal computers and home Wi-Fi setups, much less secure than those at the office, to network into work system…",
//          "url":"https://www.gearbrain.com/top-10-data-breaches-2020-2649471753.html",
//          "urlToImage":"https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yNDk1NDkyMC9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY2NTk1MDcyMn0.iJf5kBldV6xV5Lf5avCeK5soCNWoCfk1IQw_A1oE3Wo/img.jpg?width=1200&coordinates=0%2C60%2C0%2C61&height=600",
//          "publishedAt":"2020-12-15T23:20:00Z",
//          "content":"Hackers continued to do their best this year to go after people\'s data and details. In some cases, people made this easier by being home and using personal computers and home Wi-Fi setups, much less … [+8852 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"newsBTC"
//          },
//          "author":"Cole Petersen",
//          "title":"This On-Chain Metric Spells Trouble for XRP Following SPARK Airdrop",
//          "description":"XRP has seen some mixed price action as of late, with the cryptocurrency\’s price not breaking firmly below \$0.50 as the selling pressure placed on it begins mounting The cryptocurrency is now on the cusp of seeing a sharp decline, with analysts noting that a …",
//          "url":"https://www.newsbtc.com/analysis/xrp/this-on-chain-metric-spells-trouble-for-xrp-following-spark-airdrop/",
//          "urlToImage":"https://www.newsbtc.com/wp-content/uploads/2020/12/vidar-nordli-mathisen-8bPigUuoBFY-unsplash-scaled.jpg",
//          "publishedAt":"2020-12-15T23:00:24Z",
//          "content":"<ul><li>XRP has seen some mixed price action as of late, with the cryptocurrency\’s price not breaking firmly below \$0.50 as the selling pressure placed on it begins mounting</li><li>The cryptocurrenc… [+2413 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Seeking Alpha"
//          },
//          "author":null,
//          "title":"On the hour",
//          "description":"S&amp;P +1.29%.10-yr -0.01%.Euro +0.09% vs. dollar.Crude +1.32% to \$47.61.Gold +0.01% to \$1,857.5.Bitcoin +1.00% to \$19,493..",
//          "url":"https://seekingalpha.com/news/3644721-on-hour?utm_source=feed_news_all&utm_medium=referral",
//          "urlToImage":"https://static3.seekingalpha.com/assets/og_image_192-59bfd51c9fe6af025b2f9f96c807e46f8e2f06c5ae787b15bf1423e6c676d4db.png",
//          "publishedAt":"2020-12-15T23:00:15Z",
//          "content":null
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Shi.com"
//          },
//          "author":"Anne Grahn",
//          "title":"Foxconn, FireEye, and SolarWinds: Key takeaways from high-profile breaches",
//          "description":"The cybersecurity landscape changed dramatically in 2020. As organizations scrambled to keep employees connected in a world of remote everything, threat actors capitalized on the chaos. Between January and October, 36 billion records were exposed in data brea…",
//          "url":"http://blog.shi.com/solutions/foxconn-fireeye-and-solarwinds-key-takeaways-from-high-profile-breaches/",
//          "urlToImage":"https://blog.shi.com/wp-content/uploads/2020/12/data-breach-square.png",
//          "publishedAt":"2020-12-15T22:53:00Z",
//          "content":"The cybersecurity landscape changed dramatically in 2020. As organizations scrambled to keep employees connected in a world of remote everything, threat actors capitalized on the chaos.\r\nBetween Janu… [+6266 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"FXStreet"
//          },
//          "author":"FXStreet Team",
//          "title":"Hong Kong issues its first crypto authorization to brokerage firm",
//          "description":"There seems to be division in China on its position towards digital assets as regulators approve crypto trading services for institutional investors.",
//          "url":"https://www.fxstreet.com/cryptocurrencies/news/hong-kong-issues-its-first-crypto-authorization-to-brokerage-firm-202012152244",
//          "urlToImage":"https://editorial.fxstreet.com/images/Markets/Currencies/Cryptocurrencies/blockchain_red_Large.jpg",
//          "publishedAt":"2020-12-15T22:44:04Z",
//          "content":"<ul><li>There seems to be division in China on its position towards digital assets as regulators approve crypto trading services for institutional investors.</li><li>This action is likely due to the … [+2365 chars]"
//       },
//       {
//          "source":{
//             "id":"la-repubblica",
//             "name":"La Repubblica"
//          },
//          "author":"repubblicawww@repubblica.it (Redazione Repubblica.it)",
//          "title":"Pornhub e le nuove norne europee sul digitale",
//          "description":"",
//          "url":"https://www.repubblica.it/dossier/stazione-futuro-riccardo-luna/2020/12/15/news/pornhub_e_le_nuove_norne_europee_sul_digitale-278520860/",
//          "urlToImage":"https://www.repstatic.it/content/nazionale/img/2020/12/15/234235446-52a39762-53ee-4ca8-a675-6765920fc244.jpg",
//          "publishedAt":"2020-12-15T22:42:44Z",
//          "content":"Quando ha spiegato il senso delle nuove regole che la Commissione europea ha presentato ieri, la presidente Ursula Von Der Leyen ha detto che quello che è vietato, dovrà esserlo anche nel mondo digit… [+3520 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Cointelegraph"
//          },
//          "author":"Cointelegraph By Ray Salmond",
//          "title":"Bulls buy the dip again after Bitcoin price rejects at a key resistance level",
//          "description":"Bulls are keen to buy each Bitcoin price dip but is this enough to avoid repeat sell-offs at \$19,500?",
//          "url":"https://cointelegraph.com/news/bulls-buy-the-dip-again-after-bitcoin-price-rejects-at-a-key-resistance-level",
//          "urlToImage":"https://s3.cointelegraph.com/uploads/2020-12/75b4b012-d1a1-4067-9006-10b7fada1a60.jpg",
//          "publishedAt":"2020-12-15T22:32:44Z",
//          "content":"For the second day in a row, Bitcoin bulls have attacked the \$19,500 level in an attempt to flip the crucial level from resistance to support. \r\nEach attempt to overcome the resistance is has been re… [+1664 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Investopedia"
//          },
//          "author":"Caleb Silver",
//          "title":"Markets Rally as Investors Hope for Stimulus Bridge",
//          "description":"In a sharp reversal from yesterday, U.S. equity markets rallied hard throughout the day, closing near session highs.",
//          "url":"https://www.investopedia.com/markets-rally-as-investors-hope-for-stimulus-bridge-5092477",
//          "urlToImage":"https://www.investopedia.com/thmb/JNW1dyr-9h-JUm1XhbBoNV6PA4Y=/594x373/filters:fill(auto,1)/1301563-56a50d965f9b58b7d0daaff2.jpg",
//          "publishedAt":"2020-12-15T22:18:10Z",
//          "content":"In a sharp reversal from yesterday, U.S. equity markets rallied hard throughout the day, closing near session highs. News of real progress on a slimmed-down \$748 billion stimulus package added some o… [+4254 chars]"
//       },
//       {
//          "source":{
//             "id":"rt",
//             "name":"RT"
//          },
//          "author":"RT",
//          "title":"Pornhub moves to only accept Bitcoin & other cryptocurrency after Visa/Mastercard cut ties over sexual exploitation report",
//          "description":"Adult entertainment website Pornhub is accepting cryptocurrency as a default payment for premium content, informing users they are “unable to accept credit cards” at this moment. Read Full Article at RT.com",
//          "url":"https://www.rt.com/usa/509787-pornhub-cryptocurrency-mastercard-visa/",
//          "urlToImage":"https://cdni.rt.com/files/2020.12/article/5fd929b52030270ccf7b4daa.JPG",
//          "publishedAt":"2020-12-15T22:02:46Z",
//          "content":"If one wants to enjoy more than just the free video content on Pornhub, a major part of which the website has already deleted, they\’ll need some cryptocurrency to offer up. \r\nThe website\’s premium se… [+1640 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"This is Money"
//          },
//          "author":"By Money Mail Special",
//          "title":"Let them show you the money! Experts tell how to invest like the best",
//          "description":"From ignoring stock tips you hear down the pub, to shutting out political noise and doing your own research, we have drawn on the experience of experts to provide you with invaluable pointers.",
//          "url":"https://www.thisismoney.co.uk/money/diyinvesting/article-9056089/Let-money-Experts-tell-invest-like-best.html",
//          "urlToImage":"https://i.dailymail.co.uk/1s/2020/12/15/20/36879278-0-image-a-10_1608062897818.jpg",
//          "publishedAt":"2020-12-15T22:00:50Z",
//          "content":"From ignoring stock tips you hear down the pub, to shutting out political noise, Money Mail has drawn on experts\' experience to pro-vide invaluable pointers...\r\nDo your homework\r\nPeter Hargreaves, Ha… [+4707 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Seeking Alpha"
//          },
//          "author":null,
//          "title":"On The Hour",
//          "description":"S&amp;P +1.27%.10-yr -0.09%.Euro +0.09% vs. dollar.Crude +1.28% to \$47.59.Gold +1.38% to \$1,857.45.Bitcoin +1.25% to \$19,449..",
//          "url":"https://seekingalpha.com/news/3644689-on-hour?utm_source=feed_news_all&utm_medium=referral",
//          "urlToImage":"https://static3.seekingalpha.com/assets/og_image_192-59bfd51c9fe6af025b2f9f96c807e46f8e2f06c5ae787b15bf1423e6c676d4db.png",
//          "publishedAt":"2020-12-15T22:00:48Z",
//          "content":null
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Livecoins.com.br"
//          },
//          "author":"Livecoins",
//          "title":"Gestora de investimentos inglesa compra R\$ 75 milhões em Bitcoin",
//          "description":"A Ruffer Investment Company, uma empresa de gestão de investimentos com sede em Londres, investiu \$ 15 milhões em Bitcoin.",
//          "url":"https://livecoins.com.br/gestora-de-investimentos-inglesa-compra-r-75-milhoes-em-bitcoin/",
//          "urlToImage":"https://livecoins.com.br/wp-content/uploads/2020/12/Ruffer-bitcoin.jpg",
//          "publishedAt":"2020-12-15T21:55:41Z",
//          "content":"A Ruffer Investment Company, uma empresa de gestão de investimentos com sede em Londres, anunciou que 2,5% de seu portfólio de estratégias está agora em bitcoin.\r\nA empresa tem mais de £ 20 bilhões e… [+1466 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"PRNewswire"
//          },
//          "author":null,
//          "title":"Layer1 Co-Founder Rejoins Company as CEO and Chairman of the Board",
//          "description":"SAN FRANCISCO, Dec. 15, 2020 /PRNewswire/ -- Layer1 Technologies Inc., the first U.S. based vertically-integrated and renewable energy Bitcoin mining and factory development company, announced today that it has reached a settlement agreement to resolve prior …",
//          "url":"https://www.prnewswire.com/news-releases/layer1-co-founder-rejoins-company-as-ceo-and-chairman-of-the-board-301193521.html",
//          "urlToImage":"https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg",
//          "publishedAt":"2020-12-15T21:52:00Z",
//          "content":"SAN FRANCISCO, Dec. 15, 2020 /PRNewswire/ -- Layer1 Technologies Inc., the first U.S. based vertically-integrated and renewable energy Bitcoin mining and factory development company, announced today … [+2473 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Yahoo Entertainment"
//          },
//          "author":"PR Newswire",
//          "title":"Layer1 Co-Founder Rejoins Company as CEO and Chairman of the Board",
//          "description":"Layer1 Technologies Inc., the first U.S. based vertically-integrated and renewable energy Bitcoin mining and factory development company, announced today...",
//          "url":"https://finance.yahoo.com/news/layer1-co-founder-rejoins-company-215200008.html",
//          "urlToImage":"https://s.yimg.com/uu/api/res/1.2/qGpKgDHW7kEyyBLL5Rfq0A--~B/aD0xNjt3PTE2O2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/prnewswire.com/2ecc8d7232846f73f29e32c6b3df4296",
//          "publishedAt":"2020-12-15T21:52:00Z",
//          "content":"SAN FRANCISCO, Dec. 15, 2020 /PRNewswire/ -- Layer1 Technologies Inc., the first U.S. based vertically-integrated and renewable energy Bitcoin mining and factory development company, announced today … [+2580 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Jornaldenegocios.pt"
//          },
//          "author":"djovarius",
//          "title":"Forum Geral • Re: FOREX - 2020 - 4º trimestre",
//          "description":"",
//          "url":"http://caldeiraodebolsa.jornaldenegocios.pt/viewtopic.php?t=90007&p=1606760#p1606760",
//          "urlToImage":null,
//          "publishedAt":"2020-12-15T21:44:14Z",
//          "content":"Vivas,Será que hoje o SPX vai aos 3.700 pontos?Tudo na mesma, renda fixa a perder, risco em alta, o mercado espera recuperação e liquidez. O emprego nos EUA não é do melhor, mas também não está pior.… [+1641 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Livecoins.com.br"
//          },
//          "author":"Livecoins",
//          "title":"Autor de “Pai Rico, Pai Pobre” acredita que Bitcoin chegará em \$ 50 mil no próximo ano",
//          "description":"O autor de Pai Rico, Pai Pobre, acredita que o Bitcoin vai receber uma alta no interesse institucional, levando o preço à US\$ 50 mil.",
//          "url":"https://livecoins.com.br/autor-de-pai-rico-pai-pobre-acredita-que-bitcoin-chegara-em-50-mil/",
//          "urlToImage":"https://livecoins.com.br/wp-content/uploads/2020/12/Bitcoin-2021-previsao.jpg.webp",
//          "publishedAt":"2020-12-15T21:34:07Z",
//          "content":"O celebrado autor Robert Kiyosaki, escritor do livro Pai Rico, Pai Pobre, e um dos maiores gurus financeiros do mundo, acredita que o Bitcoin chegará aos \$ 50 mil no próximo ano. Segundo o autor, os … [+3138 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"PRNewswire"
//          },
//          "author":null,
//          "title":"Kiosk Association Announces PCI Compliance for Unattended Self-Service Kiosks",
//          "description":"WESTMINSTER, Colo., Dec. 15, 2020 /PRNewswire/ -- The Kiosk Manufacturer Association (KMA), the leading unattended self-service kiosk association established in 1995, today announced the launch of new initiatives in the PCI Compliance space for unattended sel…",
//          "url":"https://www.prnewswire.com/news-releases/kiosk-association-announces-pci-compliance-for-unattended-self-service-kiosks-301193501.html",
//          "urlToImage":"https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg",
//          "publishedAt":"2020-12-15T21:34:00Z",
//          "content":"WESTMINSTER, Colo., Dec. 15, 2020 /PRNewswire/ -- The Kiosk Manufacturer Association (KMA), the leading unattended self-service kiosk association established in 1995, today announced the launch of ne… [+2850 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Yahoo Entertainment"
//          },
//          "author":"PR Newswire",
//          "title":"Kiosk Association Announces PCI Compliance for Unattended Self-Service Kiosks",
//          "description":"The Kiosk Manufacturer Association (KMA), the leading unattended self-service kiosk association established in 1995, today announced the launch of new...",
//          "url":"https://finance.yahoo.com/news/kiosk-association-announces-pci-compliance-213400166.html",
//          "urlToImage":"https://s.yimg.com/uu/api/res/1.2/GO7HGkmzBBXtJcG9GfBpoQ--~B/aD0xNjt3PTE2O2FwcGlkPXl0YWNoeW9u/https://media.zenfs.com/en/prnewswire.com/b7c698f46c2848d74ff9c1ba4e8b479a",
//          "publishedAt":"2020-12-15T21:34:00Z",
//          "content":"WESTMINSTER, Colo., Dec. 15, 2020 /PRNewswire/ -- The Kiosk Manufacturer Association (KMA), the leading unattended self-service kiosk association established in 1995, today announced the launch of ne… [+2970 chars]"
//       },
//       {
//          "source":{
//             "id":null,
//             "name":"Bitcoinist"
//          },
//          "author":"Cole Petersen",
//          "title":"The Future of Altcoins May Depend Entirely on Ethereum\’s Reaction to a Key Level",
//          "description":"It’s no secret that Ethereum holds heavy influence over the altcoin market, with its price swings and general trend often influencing that of smaller altcoins Where they trend in the near-term may largely depend on Ethereum\’s reaction to \$600, as this has lon…",
//          "url":"https://bitcoinist.com/the-future-of-altcoins-may-depend-entirely-on-ethereums-reaction-to-a-key-level/",
//          "urlToImage":"https://bitcoinist.com/wp-content/uploads/2020/12/2-bull-photography-tKrIU01WDfM-unsplash-1920x1280.jpg",
//          "publishedAt":"2020-12-15T21:30:13Z",
//          "content":"<ul><li>Its no secret that Ethereum holds heavy influence over the altcoin market, with its price swings and general trend often influencing that of smaller altcoins</li><li>Where they trend in the n… [+2561 chars]"
//       }
//    ]
// }
// ''';
