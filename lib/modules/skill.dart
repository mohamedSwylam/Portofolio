class Skill {
  final String name;
  final String icon;

  const Skill({
    required this.name,
    required this.icon,
  });
}

List<Skill> skills = [
  const Skill(
    name: 'Flutter',
    icon: 'assets/skills_icons/flutter.png',
  ),
  const Skill(
    name: 'Dart',
    icon: 'assets/skills_icons/dart.png',
  ),
  const Skill(
    name: 'Firebase',
    icon: 'assets/skills_icons/firebase.png',
  ),
  const Skill(
    name: 'REST APIs',
    icon: 'assets/skills_icons/api.png',
  ),
  const Skill(
    name: 'Git',
    icon: 'assets/skills_icons/git.png',
  ),
  const Skill(
    name: 'UI/UX Design',
    icon: 'assets/skills_icons/figma.png',
  ),
];
