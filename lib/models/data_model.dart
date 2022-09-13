//class name Items and json file ni object nu name same items

class Items {
  int? id;
  String? name;
  String? shotdesc;
  String? desc;

  Items({this.id, this.name, this.shotdesc, this.desc});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shotdesc = json['shotdesc'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['shotdesc'] = shotdesc;
    data['desc'] = desc;
    return data;
  }
}
