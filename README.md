# CryptoApp
<br/>
SwiftUI Crypto App - MVVM, Core Data, Combine and Api Requests, following Swiftful Thinking tutorial - https://shorturl.at/oBDN2
<br/>
<br/>
This app features: 
<ul>
<li>Color Theme</li>
<li>Custom Header for Navigation View, with animated images and rows</li>
<li>Overrided navigationBarTitles to use Color Theme</li>
<br/>
<li>Extensions for Double (Currency, Percentage, Abbreviation), Preview Provider (Object model mocks), Date(Short formatter & Date as String), String (HTML remover)</li>
<br/>
<li>MVVM & Environment Object for our Home VM</li>
<li>API request using Combine</li>
<li>Reusable Network Manager</li>
<li>Specific module for downloaded images: Views, Model, ViewModel & DataService</li>
<li>Reusable Local FileManager to store downloaded images from API</li>
<br/>
<li>Reusable SearchBarView that binds to strings and filters results using Combine</li>
<li>UIApplication extension to dismiss keyboard</li>
<br/>
<li>Specific module for global crytpo market stats: Views, Model, DataService</li>
<li>HomeStatsView animated using its aligment values</li>
<br/>
<li>HomeView shows Live Prices & user's portfolio within the same view, using a transition effect</li>
<li>PortfolioView: sheet view, with SearchBarView, to input & save crypto coins to portfolio</li>
<li>PortfolioContainer (Model) & PortfolioDataService using Core Data to persist user's portfolio in the app</li>
<li>Lists reload data with pull to refresh</li>
<li>HapticManager to enable vibration when data is reloaded</li>
<br/>
<li>Results sorted on user's choice</li>
<li>Sort selectors set with opacity and animated with rotation3DEffect</li>
<br/>
<li>Custom NavigationLink for lazy loading of DetailView: background NavigationLink & segue method</li>
<li>Specific module for coin details: Views, Model, ViewModel & DataService</li>
<li>LazyVGrid in CoinDetailsView</li>
<li>ChartView to display a graphic of coin price evolution, using Path, GeometryReader & animation to present it</li>
<li>Collapsable text, animated with lineLimit</li>
<br/>
<li>Settings view: sheet view, with sections about the course, the API, the developer and the app</li>
<br/>
<li>Custom AppIcon</li>
<li>Launch screen: Two launch screens (storyboard plain view & swiftUI view), with text mapped to an array of strings shown animated using timer & disappearing with transition effect</li>
<li>Code optimized for iPad navigation</li>
<br/>
![Screenshot 2023-12-02 at 16 27 11](https://github.com/raveintospace/CryptoApp/assets/94604036/b08f22c1-475c-48e0-b706-92445d0d46c1)

![Screenshot 2023-12-02 at 16 27 41](https://github.com/raveintospace/CryptoApp/assets/94604036/6e4cc74b-d6e3-4951-9f07-289c47bab632)

![vlcsnap-2023-12-03-19h40m25s437](https://github.com/raveintospace/CryptoApp/assets/94604036/cd6cfbe1-cd01-4d08-851f-7b563f16b8d9)

![Screenshot 2023-12-03 at 19 41 34](https://github.com/raveintospace/CryptoApp/assets/94604036/2d968b1e-c0e7-4752-82d0-4114bcd9a165)

