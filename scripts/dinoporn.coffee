# Dinosaur Sex
#
# dinosex - Display a motivation picture of dinosaur sex
#

dinos = [
  "http://luisvrey.files.wordpress.com/2012/08/carnotaurus-sex.jpg",
  "http://cdn2.holytaco.com/wp-content/uploads/images/2010/8/Dinosaurs-Had-Teen-Sex-2.jpg",
  "http://bbsimg.ngfiles.com/1/20813000/ngbbs4b83458a2358a.jpg",
  "http://28.media.tumblr.com/tumblr_lhtehfNRob1qhfm7yo1_500.jpg"
]

module.exports = (robot) ->
  robot.hear /dinosex /i, (msg) ->
    msg.send msg.random dinos
