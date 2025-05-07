class Project {
  String id;
  String name;
  String description;
  String icon;
  String googlePlayUrl;
  String appStoreUrl;
  String websiteUrl;

  Project({
    this.id = '',
    required this.name,
    required this.description,
    required this.icon,
    this.googlePlayUrl = '',
    this.appStoreUrl = '',
    this.websiteUrl = '',
  });

  // Project.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   description = json['description'];
  //   icon = json['icon'];
  //   googlePlayUrl = json['googlePlayUrl'];
  //   appStoreUrl = json['appStoreUrl'];
  //   websiteUrl = json['websiteUrl'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['icon'] = icon;
    data['googlePlayUrl'] = googlePlayUrl;
    data['appStoreUrl'] = appStoreUrl;
    data['websiteUrl'] = websiteUrl;
    return data;
  }
}
