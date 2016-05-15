# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p "RUNNING SEED FILE"

# test_status_vids = [["sleeping", "zFhPhaKOC60", 2], ["sleeping", "sXfhyFqsMvE", 2], ["depressed", "wJ1jc_85VYg", 1]]

# test_action_vids = [["discipline", "05-o80xRHQQ", "D"], ["discipline", "nEpt_EIal-c", "D"], ["encourage", "vxpYUATrIrQ", "E"]]

# test_status_vids.each do | x |
#   Status.create({
#     title: x[0],
#     url: x[1],
#     level: x[2]
#     })
# end

# test_action_vids.each do | y |
#   Action.create({
#     title: y[0],
#     url: y[1],
#     code: y[2]
#     })
# end

happy_vids = [["Music and Head Bumping", "T8X_2RcolgI", 1], ["laughing", "NCGWcLio8uI", 1], ["conversation", "t58yK1GMaKQ", 1], ["Meditating", "QAvHd4C4qDg", 1], ["dancing1", "qFaLn01jYmY", 1], ["dancing2", "Uc17uRT82p4", 1], ["dancing3", "7FHOKLeyvy0", 1], ["dancing4", "BN-BQfeTtGQ", 1]]
decent_vids = [["sitting", " vQWgzegA6Jc", 2], ["resting position", "grI2qgM6rF0", 2], ["kickingback", "1G7OMbSqj7U", 2], ["solitare", "Ut-D0JNInBc", 2], ["radio", "2uAyI87Gg7E", 2], ["tv", "1Strt3cxARM", 2], ["pushups", "ueNaJAuSUvA", 2], ["jumpingjacks", "PS6N3QVGT04", 2]]
dormant = [["sleeping", "A7aRFF4PTD0", 2], ["sleeping2", "cXcuUom2F68", 2], ["foottap", "GtWLkB2Evfc", 2], ["watching tapping", "tdBydg4zClE2", 2], ["armscrossed", "VMT5g-LDqIc", 2]]
depressed = [["head2ground", "bhbfr3ZYq7E", 3], ["thinkingposition", "xm0-xLYxvZA", 3], ["restlessness", "BiNrXf9cwBw", 3], ["self help book", "5_eRjitdtcE", 3], ["sad tv watching", "7SPHBoOBI9U", 3], ["dead asleep", "vi-FBpypQuo", 3]]
very_depressed = [["head banging", "910Y9NxoaH4", 4], ["crying fetal", "6taKj8jiWCg", 4], ["tantrums", "XiYdH9rf_qQ", 4], ["pulling hair", "yXxpp4DcVw4", 4], ["mental anguish", "Pxhvs4_IDFU", 4], ["hysterical crying", "YPja_8Q87cc", 4], ["dead pills", "d-XW98YyFkA", 4]]

action_feed = [["chips", "jGTxlrx7_l8", "F"], ["cookie", "U3uScIv5qyw", "F"], ["apple", "k_Iny9YNUKc", "F"], ["sandwich", "jUnnLAzyHmg", "F"]]
action_comfort = [["giant hand", "Lc7Q14J2xfs", "E"], ["shirt", "CUASMH6AVFg", "E"], ["flower", "AOGyQlAfH0k", "E"], ["stuffed animal", "SoSybc0FaRk", "E"]]
action_entertainment = [["video games", "saU55CeP7LI", "EN"], ["funny movie", "vwj01Me1Kec", "EN"]]
action_discipline = [["shock 1", "RmcvndsJaDI", "D"]] #["shock2", "aQPa8e_-NQA", "D"] <= broken url
                                                        
status_vids = [happy_vids, decent_vids, dormant, depressed, very_depressed]
action_vids = [action_feed, action_comfort, action_entertainment, action_discipline]

status_vids.each do | x |
  x.each do | y |
    Status.create({
      title: y[0],
      url: y[1],
      level: y[2]
      })
  end
end

action_vids.each do | a |
  a.each do | b |
    Action.create({
      title: b[0],
      url: b[1],
      code: b[2]
      })
  end
end





