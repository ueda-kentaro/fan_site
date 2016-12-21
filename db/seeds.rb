# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
family_names = ["入山","大家","大和田","小笠原"]
given_names = ["杏奈","志津香","南那","茉由"]
image_urls = [
  "http://cdn.akb48.co.jp/cache/image/?path=%2Fmembers%2Fprofile20160509%2Fteam_A_png%2Firiyama_anna.png",
  "http://cdn.akb48.co.jp/cache/image/?path=%2Fmembers%2Fprofile20160509%2Fteam_A_png%2Foya_shizuka.png",
  "http://cdn.akb48.co.jp/cache/image/?path=%2Fmembers%2Fprofile20160509%2Fteam_B_png%2Fowada_nana.png",
  "http://cdn.akb48.co.jp/cache/image/?path=%2Fmembers%2Fprofile20160509%2Fteam_B_png%2Fogasawara_mayu.png",
]

4.times do |i|
  Member.create(
    family_name: family_names[i],
    given_name: given_names[i],
    image_url: image_urls[i]
  )
end