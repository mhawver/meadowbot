# Description:
#   When you say get money, it replies with a get money pic. Ez pz. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#	None
#
# Author:
#   mhawver


stackedPaper = [
  "http://www.surebeatswork.com/wp-content/uploads/2009/09/obamablltw6.gif",
  "http://cdn0.dailydot.com/uploaded/images/original/2012/1/29/jan._31_mayweather_bigger.gif",
  "https://www.auckland.ac.nz/theinsideword/wp-content/uploads/2014/07/money-gif.gif",
  "http://cdn.skateboarding.transworld.net/files/2008/09/24/rebel-sk8-pics-016.jpg",
  "http://outlawfinance.com/wp-content/uploads/2011/06/How-to-Get-Money-to-Invest-300x274.jpg",
  "http://superebooksbiz.net/wp-content/uploads/2014/07/keep-calm-and-get-money-1961.png",
  "http://uppitynegronetwork.files.wordpress.com/2008/09/streetball_get_money.jpg",
  "http://ronehothiphopdetroit.files.wordpress.com/2012/11/dontgetmadgetmoney-3.jpg",
  "http://www.punjabigraphics.com/images/2/get-money.jpg",
  "http://cdn.straightfromthea.com/wp-content/uploads/2013/08/make-it-rain-gif.gif",
  "http://collegecandy.files.wordpress.com/2013/03/cm-44235-450f0aeb8d141a.gif?w=500&h=281",
  "http://media.giphy.com/media/CjjzsRZKl9Ci4/giphy.gif",
  "http://media.giphy.com/media/7RDFd7vrISPu0/giphy.gif",
  "http://media.giphy.com/media/2WuHHWbGt3fY4/giphy.gif",
  "http://learninginteriordesign.com/wp-content/uploads/2014/08/make-it-rain-gif-basm77sn.gif",
  "http://media.giphy.com/media/Qjd61Q65RaSOI/giphy.gif",
  "http://media.giphy.com/media/PMPwpWrGFLu80/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /(getmoney|get money)/i, (msg) ->
    msg.send msg.random stackedPaper
