main.dart - this is main program as name suggests and in this file we've:<br/ >
i. QuoteList - Class with all quotes which is statefulwidget meaning data is non static and can be changed or updated.<br/ >
ii. Scaffold - Using Scaffold to build app interface in column where childern are mapped using quote class i.e. quote.card<br/ >

quote.dart is a constuctor class that is used to initialise the values as soon as it is called.<br/ >

QuoteCard.dart - is the call responible for creating card widget on app.<br/ >
This is StateLessWidget that is a static widget meaning it's data won't change but we can use final keyword to overcome with that issue.<br/ >
