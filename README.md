# BTC-Watch
Bitcoin price ticker for the OS X menu bar.

Currently in super duper mega extreme alpha mode, this is a project I started in
2013 in an attempt to maintain my Objective-C skills and knowledge after completing
an Obj-C based UX course in college (and to try my hand at building a Cocoa app).
Fast forward to 2016 and I'm finally updating it to see if I can finish it.

Current version runs but is lacking certain features and needs refactoring.

Certain values are hardcoded (currency (CAD), refresh interval etc) but with the
implementation of the preferences pane these will become user-selectable.


# @todo
* Refactoring:
  * Consider necessity of all properties - public interface or private variables
  * More consistency in use of `self` and property access / function calls
  * Improve style consistency (watch indentation)
  * Optimize memory usage - alloc frequently called variables in class/instance scope
* Implement preferences pane:
  * Select currency (at least: CAD, USD, GBP, EUR, AUD, etc)
  * Set refresh time interval
  * Notify upon certain changes (price reaches certain value, rapid fluctuations, etc)
  * Open at startup?
* Persistent storage of bitcoin values (probably Core Data)
  * Trends window based on collected values over time
  * More robust algorithm to calculate dy/dx and fluctuations
* Make a cute icon file!


Written by Sy Dyat. Not accepting pull requests, this is my personal project.
