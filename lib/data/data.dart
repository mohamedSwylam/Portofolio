import 'modules/project.dart';

class Data {
  static String cvURL =
      'https://www.canva.com/design/DAGmlFllxM0/8VQsBL-U4l3smi8J8qoC0g/view?utm_content=DAGmlFllxM0&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=h66ec8f1ba7';

  static List<String> projectsLinks = [
    'https://mostaql.com/portfolio/2463060-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D8%A3%D9%88%D8%B1%D8%A7%D8%AF%D9%8A',
    'https://mostaql.com/portfolio/2601695-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%88%D9%8A%D8%A8-%D9%84%D9%85%D9%86%D8%A7%D8%B3%D9%83-%D8%AD%D8%AC-%D8%A7%D9%84%D9%85%D8%B1%D8%A3%D8%A9',
    'https://mostaql.com/portfolio/2032397-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%84%D8%B4%D8%B1%D8%A7%D8%A1-%D8%A7%D9%84%D8%A8%D8%B7%D8%A7%D9%82%D8%A7%D8%AA-%D9%88-%D8%AA%D8%AD%D9%82%D9%8A%D9%82-%D8%A7%D9%84%D8%A7%D8%B1%D8%A8%D8%A7%D8%AD',
    'https://mostaql.com/portfolio/2032462-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%84%D8%A8%D8%AF%D8%A7%D8%A6%D9%84-%D8%A7%D9%84%D9%85%D9%86%D8%AA%D8%AC%D8%A7%D8%AA',
    'https://mostaql.com/portfolio/1770281-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D8%AF%D8%B1%D8%AF%D8%B4%D8%A9-%D9%85%D8%B9-%D8%A7%D9%84%D8%B0%D9%83%D8%A7%D8%A1-%D8%A7%D9%84%D8%A5%D8%B5%D8%B7%D9%86%D8%A7%D8%B9%D9%8A',
    'https://mostaql.com/portfolio/1850668-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%85%D8%B3%D9%84%D8%B3%D9%84%D8%A7%D8%AA-%D8%B5%D9%88%D8%AA%D9%8A%D8%A9-origo',
    'https://mostaql.com/portfolio/1137702-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%88%D9%82%D8%AA-%D8%A7%D9%84%D8%AA%D8%A3%D9%85%D9%84',
    'https://mostaql.com/portfolio/1137706-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA',
    'https://mostaql.com/portfolio/1137689-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%85%D8%B1%D8%A7%D8%B3%D9%84%D8%A9',
    'https://mostaql.com/portfolio/1137695-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D8%B3%D9%8A%D8%A7%D8%AD%D9%8A-%D9%8A%D8%B9%D8%B1%D8%B6-%D9%85%D9%88%D8%A7%D9%82%D8%B9-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B8%D8%B1-%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%B9%D9%8A%D8%A9',
  ];

  static List<Project> projects = [
    Project(
      name: ' Origo',
      description:
          'The official app for the Arabic drama podcast series and episodes from Origo Productions.',
      icon: 'assets/icons/origo.png',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.app.origoe',
      appStoreUrl:
          'https://apps.apple.com/gb/app/origo-productions/id6474433384',
    ),
    Project(
      name: 'Awradi - Daily Dhikr',
      description:
          'An app that helps you commit to a daily recitation of dhikr through daily reminders and short 10-minute recitations.',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=app.awradi.ten_minutes',
      appStoreUrl: 'https://apps.apple.com/us/app/id6743063821',
      icon: 'assets/icons/awradi.png',
    ),
    Project(
      name: "Women's Hajj",
      description:
          'A website and an app built with Flutter detailing Hajj and Umrah rituals for Muslim women.',
      googlePlayUrl:
          'https://play.google.com/store/apps/details?id=com.hajjwoman',
      appStoreUrl:
          'https://apps.apple.com/us/app/%D9%85%D9%86%D8%A7%D8%B3%D9%83-%D8%AD%D8%AC-%D8%A7%D9%84%D9%85%D8%B1%D8%A3%D8%A9-%D8%A7%D9%84%D9%85%D8%B3%D9%84%D9%85%D8%A9/id6742852996',
      websiteUrl: 'https://hajjwoman.netlify.app',
      icon: 'assets/icons/hajjwoman.png',
    ),

    Project(
      name: 'Meditation time',
      description:
          'An application that contains a library of musical melodies and soothing audio recordings, which are used in meditation sessions.',
      websiteUrl:
          'https://play.google.com/store/apps/details?id=app.meditationtime.meditation_time',
      icon: 'assets/icons/meditation_time.png',
    ),
    Project(
      name: 'Zul Cards',
      description:
          'An app for purchasing gift cards (such as PUBG and Google Play cards).',
      websiteUrl:
          'https://mostaql.com/portfolio/2032397-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%84%D8%B4%D8%B1%D8%A7%D8%A1-%D8%A7%D9%84%D8%A8%D8%B7%D8%A7%D9%82%D8%A7%D8%AA-%D9%88-%D8%AA%D8%AD%D9%82%D9%8A%D9%82-%D8%A7%D9%84%D8%A7%D8%B1%D8%A8%D8%A7%D8%AD',
      icon: 'assets/icons/zul_cards.png',
    ),
    Project(
      name: 'AI ChatBot',
      description: 'Chat with AI using OpenAI API',
      websiteUrl:
          'https://mostaql.com/portfolio/1770281-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D8%AF%D8%B1%D8%AF%D8%B4%D8%A9-%D9%85%D8%B9-%D8%A7%D9%84%D8%B0%D9%83%D8%A7%D8%A1-%D8%A7%D9%84%D8%A5%D8%B5%D8%B7%D9%86%D8%A7%D8%B9%D9%8A',
      icon: 'assets/icons/chatbot.png',
    ),
    Project(
      name: 'Mithqal',
      description:
          'This application displays American products and their alternatives from local (Arab) products. Its goal is to boycott all Western products of companies that support the Zionist entity.',
      websiteUrl: 'https://mithqal.en.uptodown.com/android',
      icon: 'assets/icons/mithqal.jpg',
    ),
    // Project(
    //   name: '',
    //   description: '',
    //   websiteUrl: '',
    //   icon: '',
    // ),
  ];
}
