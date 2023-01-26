ward1 = Ward.create(name: '藤沢市')

wardtype1 = Wardplace.create(ward_id: ward1.id, name: "遠藤")





trashtype1 = TrashType.create(name:"可燃ごみ")
trashtype2 = TrashType.create(name:"不燃ごみ")
trashtype3 = TrashType.create(name:"ビン")
trashtype4 = TrashType.create(name:"ペットボトル")
trashtype5 = TrashType.create(name:"資源ごみ")

trash1 = TrashType.create(name:"印刷用紙")
trash2 = TrashType.create(name:"プラスチック")
trash3 = TrashType.create(name:"ビン")
trash4 = TrashType.create(name:"ペットボトル")
trash5 = TrashType.create(name:"新聞紙")

address_trash1 = AddressTrash.create(trash_id:trash1.id,trash_type_id:trashtype1.id,wardplace_id:wardplace1.id)
address_trash1 = AddressTrash.create(trash_id:trash2.id,trash_type_id:trashtype2.id,wardplace_id:wardplace2.id)
address_trash1 = AddressTrash.create(trash_id:trash3.id,trash_type_id:trashtype3.id,wardplace_id:wardplace3.id)
address_trash1 = AddressTrash.create(trash_id:trash4.id,trash_type_id:trashtype4.id,wardplace_id:wardplace4.id)
address_trash1 = AddressTrash.create(trash_id:trash5.id,trash_type_id:trashtype5.id,wardplace_id:wardplace5.id)

trashexplain1 = Trashexplain.create(trash_type_id:trashtype1.id, wardplace_id:wardtype1.id,  
explane:"生ごみを出すときは、よく水を切ってから出してください。")

trashexplain2 = Trashexplain.create(trash_type_id:trashtype2.id, wardplace_id:wardtype1.id,  
explane:"不燃ごみで収集できるものは、金属、ガラス、プラスチック、ゴム、皮革を原材料とした製品などで、長さ50cm未満の大きさのものです。")

trashexplain3 = Trashexplain.create(trash_type_id:trashtype3.id, wardplace_id:wardtype1.id,  
explane:"食品用、飲料用、化粧品用（乳白色以外の物）")

trashexplain4 = Trashexplain.create(trash_type_id:trashtype4.id, wardplace_id:wardtype1.id,  
explane:"飲料用、しょうゆ、みりん、酢、ドレッシング等でノンオイルのもの")

trashexplain5 = Trashexplain.create(trash_type_id:trashtype5.id, wardplace_id:wardtype1.id,  
explane:"束ねて、ひもで十文字にしばって出してください。")