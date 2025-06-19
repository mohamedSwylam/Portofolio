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

List<Project> projects = [
  Project(
    name: 'Elbatal-البطل',
    description:
        'Discover a simple and effective way to buy wholesale market products through our app. Whether you are a business owner or looking to purchase large quantities, the app provides you with a variety of products to meet your needs. The application features an easy-to-use interface that allows you to search, view details, and complete orders seamlessly. Follow product availability and enjoy a convenient purchasing experience designed to save you time and effort',
    icon: 'assets/projects_icons/elbatal.webp',
    websiteUrl: 'https://github.com/mohamedSwylam/elbatal',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.albatal.alba',
  ),
  Project(
    name: 'ٍshabander-شهبندر',
    description:
        'This app is designed to help users in various fields. It is built particularly to help business-owners to organize their own accounts privately and secretly. It does not require any experience in accounting. The app provides the following services Cash flow registry: expenditures, earnings, income, and expenses,Management of creditors, customers, and debts, Full management of stock: identification and categorization of goods, recording incoming and outgoing invoices, inventory checking, and inventory adjustment',
    icon: 'assets/projects_icons/shahbander.webp',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.esp.runtimesy.cash',
  ),
  Project(
    name: 'El-Monar Private School -المنار',
    description:
        'This application dedicated for Pioneers Educational Systems for making integration between the managerial System and the students\’ parents , Parents can log in and see the schedule,Lessons table,Exam table,attendance and leave permission for their children ,',
    icon: 'assets/projects_icons/elmanar.webp',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.pioneers.almanarprime',
    appStoreUrl:
        'https://apps.apple.com/eg/app/al-manar-private-school/id6479690219',
  ),
  Project(
    name: 'Tqneen -تقنين',
    description:
        'Tqneen is a dual-app platform connecting clients with lawyers for quick legal consultations. The customer app allows users to book paid sessions via video/voice calls or in-person meetings. The lawyer app enables legal professionals to manage appointments, set availability, and earn money. Built with Flutter, it offers secure payments and flexible scheduling. The app simplifies legal advice access while helping lawyers monetize their expertise efficiently.',
    icon: 'assets/projects_icons/tqneen.PNG',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.tqneen.app',
    appStoreUrl: 'https://apps.apple.com/us/app/tqneen/id1626718222',
  ),
  Project(
    name: 'Tqneen Lawyer -للمحامين - تقنين',
    description:
        'Tqneen is a dual-app platform connecting clients with lawyers for quick legal consultations. The customer app allows users to book paid sessions via video/voice calls or in-person meetings. The lawyer app enables legal professionals to manage appointments, set availability, and earn money. Built with Flutter, it offers secure payments and flexible scheduling. The app simplifies legal advice access while helping lawyers monetize their expertise efficiently.',
    icon: 'assets/projects_icons/tqneen.PNG',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.tqneen.lawyer',
    appStoreUrl: 'https://apps.apple.com/us/app/tqneen/id1626718222',
  ),
  Project(
    name: 'Rfid App',
    description:
        'RFID (Radio Frequency identification) App used to manage whorehouses at CONSOLITATED CASUAL LTD using RFID technology to scan Bar Code and RFID tags . ',
    icon: 'assets/projects_icons/rfid.webp',
    websiteUrl: 'https://github.com/mohamedswylamltd/rfid',
  ),
  Project(
    name: 'Eshams School App',
    description:
        'This application dedicated for Pioneers Educational Systems for making integration between the managerial System and the students\’ parents , Parents can log in and see the schedule,Lessons table,Exam table,attendance and leave permission for their children ,',
    icon: 'assets/projects_icons/shamslogo.webp',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.pioneers.alshamsschool_prime',
    appStoreUrl:
        'https://apps.apple.com/eg/app/%D9%85%D8%AF%D8%B1%D8%B3%D8%A9-%D8%A7%D9%84%D8%B4%D9%85%D8%B3-%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB%D8%A9-%D8%A7%D9%84%D8%AE%D8%A7%D8%B5%D8%A9/id6444042577',
  ),

  Project(
    name: 'Easy Store',
    description:
        'EasyRepo is a business management app designed for companies working with sales representatives. It provides tools for tracking sales, generating reports, and monitoring expenses. The app features performance analytics, task management, and revenue growth tracking. It includes a dashboard with historical data visualization and financial metrics. Designed to streamline operations, it helps businesses manage field teams efficiently. The app supports Arabic language and targets enterprises needing mobile workforce oversight.',
    icon: 'assets/projects_icons/easy.webp',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.pioneers.easystoreagent',
    appStoreUrl: 'https://apps.apple.com/eg/app/easy-store-agent/id6443601760',
  ),
  Project(
    name: 'Easy Store Reports',
    description:
        'EasyRepo is a business management app designed for companies working with sales representatives. It provides tools for tracking sales, generating reports, and monitoring expenses. The app features performance analytics, task management, and revenue growth tracking. It includes a dashboard with historical data visualization and financial metrics. Designed to streamline operations, it helps businesses manage field teams efficiently. The app supports Arabic language and targets enterprises needing mobile workforce oversight.',
    icon: 'assets/projects_icons/easy.webp',
    googlePlayUrl:
        'https://play.google.com/store/apps/details?id=com.pioneers.reportseasystore',
    appStoreUrl: 'https://apps.apple.com/eg/app/easy-store-report/id1585146046',
  ),
  Project(
    name: 'Egypt News',
    description:
        'The official app for the egypt updated news every day using popular website APi. The app supports Arabic language.',
    icon: 'assets/projects_icons/newsAppLogo.jpg',
    websiteUrl: 'https://github.com/mohamedSwylam/news_app',
  ),
  Project(
    name: 'Kinda Cheese',
    description:
        'The app for store called kinda cheese to sell cheese products. ecommerce app. The app supports Arabic language.',
    icon: 'assets/projects_icons/kinda_logo.PNG',
    websiteUrl: 'https://github.com/mohamedSwylam/kinda_market_store',
  ),
  Project(
    name: 'Barakat Store',
    description:
        'The app for store called Barakat to sell cheese electronic products. ecommerce app. The app supports Arabic language.',
    icon: 'assets/projects_icons/batrakat.jpeg',
    websiteUrl: 'https://github.com/mohamedSwylam/mobil_phone_store',
  ),
  Project(
    name: 'Arganzwiena',
    description:
        'The app for store called kinda arganzwiena to sell  products. ecommerce app. The app supports Arabic language..',
    icon: 'assets/projects_icons/argan.png',
    websiteUrl: 'https://github.com/mohamedSwylam/arganzweina',
  ),
  Project(
    name: 'chat app',
    description:
        'The  app for use firebase to chat with other users. The app supports Arabic language.',
    icon: 'assets/projects_icons/chat.PNG',
    websiteUrl: 'https://github.com/mohamedSwylam/chat_app',
  ),
  // Project(
  //   name: '',
  //   description: '',
  //   websiteUrl: '',
  //   icon: '',
  // ),
];
