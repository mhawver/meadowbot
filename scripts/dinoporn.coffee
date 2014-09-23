# Dinosaur Sex
#
# dinosex - Display a motivation picture of dinosaur sex
#

dinos = [
  "http://luisvrey.files.wordpress.com/2012/08/carnotaurus-sex.jpg",
  "http://cdn2.holytaco.com/wp-content/uploads/images/2010/8/Dinosaurs-Had-Teen-Sex-2.jpg",
  "http://bbsimg.ngfiles.com/1/20813000/ngbbs4b83458a2358a.jpg",
  "http://28.media.tumblr.com/tumblr_lhtehfNRob1qhfm7yo1_500.jpg",
  "http://a.abcnews.com/images/WNN/abc_wnn_mix_130326_wg.jpg",
  "http://www.geekologie.com/2010/02/11/dino-sex.jpg",
  "http://features.cgsociety.org/newgallerycrits/g55/114855/114855_1256573367_large.jpg",
  "http://theworldsbestever.s3.amazonaws.com/blog/wp-content/uploads/2012/05/dinosaurs-arthritis.jpg",
  "http://truyenhinhanvien.vn/Images/Contents/ngocninh/20131105/kienthuc-dinosex-03_cdrc.jpg"
]

module.exports = (robot) ->
  robot.hear /dinosex/i, (msg) ->
    msg.send msg.random dinos
