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
<li>Extensions for Double (Currency, Percentage, Abbreviation), Preview Provider (Object model mocks)</li>
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
