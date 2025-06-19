import 'package:flutter/material.dart';
import 'package:portfolio/screens/certifications/certifications_section.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:provider/provider.dart';

import '../resource/theme_provider.dart';
import 'about/about_section.dart';
import 'contact/contact_section.dart';
import 'projects/projects_section.dart';
import 'skills/skills_section.dart';
import 'experience/experience_section.dart';
import 'widgets/colorful_background.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  // Global keys for each section
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _certificationKey = GlobalKey(); // Add certification key
  final GlobalKey _contactKey = GlobalKey();

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Update selected tab based on scroll position
    final skillsPosition = _getWidgetPosition(_skillsKey);
    final experiencePosition = _getWidgetPosition(_experienceKey);
    final projectsPosition = _getWidgetPosition(_projectsKey);
    final certificationPosition = _getWidgetPosition(_certificationKey);
    final contactPosition = _getWidgetPosition(_contactKey);

    final scrollOffset = _scrollController.offset;

    int newIndex = 0;
    if (scrollOffset >= contactPosition - 200) {
      newIndex = 5; // Contact is now index 5
    } else if (scrollOffset >= certificationPosition - 200) {
      newIndex = 4; // Certification is index 4
    } else if (scrollOffset >= projectsPosition - 200) {
      newIndex = 3;
    } else if (scrollOffset >= experiencePosition - 200) {
      newIndex = 2;
    } else if (scrollOffset >= skillsPosition - 200) {
      newIndex = 1;
    } else {
      newIndex = 0;
    }

    if (newIndex != _selectedIndex) {
      setState(() {
        _selectedIndex = newIndex;
      });
    }
  }

  double _getWidgetPosition(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      return position.dy + _scrollController.offset;
    }
    return 0;
  }

  void _scrollToSection(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      final offset = position.dy +
          _scrollController.offset -
          100; // Offset for tab bar height

      _scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Scaffold(
          backgroundColor: themeProvider.backgroundColor,
          body: Stack(
            children: [
              if (themeProvider.isDarkTheme) ColorfulBackground(),
              ResponsiveBuilder(builder: (context, sizingInformation) {
                return Column(
                  children: [
                    // Navigation Bar
                    Container(
                      width: double.infinity,
                      color: themeProvider.isDarkTheme
                          ? Colors.transparent
                          : themeProvider.navBarColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: sizingInformation.isDesktop ? 150 : 24,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          // Logo/Brand
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Mohamed ',
                                  style: TextStyle(
                                    color: themeProvider.textColor,
                                    fontSize:
                                        sizingInformation.isDesktop ? 24 : 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Swylam',
                                  style: TextStyle(
                                    color: themeProvider.accentColor,
                                    fontSize:
                                        sizingInformation.isDesktop ? 24 : 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Spacer(),

                          // Navigation Links
                          if (sizingInformation.isDesktop) ...[
                            Row(
                              children: [
                                _buildNavLink(
                                  label: 'About',
                                  index: 0,
                                  onTap: () => _scrollToSection(_aboutKey),
                                  themeProvider: themeProvider,
                                ),
                                const SizedBox(width: 40),
                                _buildNavLink(
                                  label: 'Skills',
                                  index: 1,
                                  onTap: () => _scrollToSection(_skillsKey),
                                  themeProvider: themeProvider,
                                ),
                                const SizedBox(width: 40),
                                _buildNavLink(
                                  label: 'Experience',
                                  index: 2,
                                  onTap: () => _scrollToSection(_experienceKey),
                                  themeProvider: themeProvider,
                                ),
                                const SizedBox(width: 40),
                                _buildNavLink(
                                  label: 'Projects',
                                  index: 3,
                                  onTap: () => _scrollToSection(_projectsKey),
                                  themeProvider: themeProvider,
                                ),
                                const SizedBox(width: 40),
                                _buildNavLink(
                                  label: 'Certification',
                                  index: 4,
                                  onTap: () =>
                                      _scrollToSection(_certificationKey),
                                  themeProvider: themeProvider,
                                ),
                                const SizedBox(width: 40),
                                _buildNavLink(
                                  label: 'Contact',
                                  index: 5,
                                  onTap: () => _scrollToSection(_contactKey),
                                  themeProvider: themeProvider,
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            // Theme toggle button
                            GestureDetector(
                              onTap: () => themeProvider.toggleTheme(),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: themeProvider.accentColor,
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      color: themeProvider.accentColor
                                          .withValues(alpha: 0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: Icon(
                                    themeProvider.isDarkTheme
                                        ? Icons.wb_sunny_outlined
                                        : Icons.dark_mode_outlined,
                                    key: ValueKey(themeProvider.isDarkTheme),
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ] else ...[
                            // Mobile theme toggle
                            GestureDetector(
                              onTap: () => themeProvider.toggleTheme(),
                              child: Container(
                                width: 32,
                                height: 32,
                                margin: const EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  color: themeProvider.accentColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(
                                  themeProvider.isDarkTheme
                                      ? Icons.wb_sunny_outlined
                                      : Icons.dark_mode_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                            // Mobile menu button
                            IconButton(
                              onPressed: () =>
                                  _showMobileMenu(context, themeProvider),
                              icon: Icon(
                                Icons.menu,
                                color: themeProvider.textColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    // Scrollable Content
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: sizingInformation.isDesktop ? 150 : 24,
                          ),
                          child: Column(
                            children: [
                              // About Section
                              Container(
                                key: _aboutKey,
                                child: const AboutSection(),
                              ),

                              const SizedBox(height: 100),

                              // Skills Section
                              Container(
                                key: _skillsKey,
                                child: const SkillsSection(),
                              ),

                              const SizedBox(height: 100),

                              // Experience Section
                              Container(
                                key: _experienceKey,
                                child: const ExperienceSection(),
                              ),

                              const SizedBox(height: 100),

                              // Projects Section
                              Container(
                                key: _projectsKey,
                                child: const ProjectsSection(),
                              ),

                              const SizedBox(height: 100),

                              // Certification Section
                              Container(
                                key: _certificationKey,
                                child: const CertificationSection(),
                              ),

                              const SizedBox(height: 100),

                              // Contact Section
                              Container(
                                key: _contactKey,
                                child: const ContactSection(),
                              ),

                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavLink({
    required String label,
    required int index,
    required VoidCallback onTap,
    required ThemeProvider themeProvider,
    bool isBlue = false,
  }) {
    final isSelected = _selectedIndex == index && !isBlue;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Text(
          label,
          style: TextStyle(
            color: isBlue
                ? themeProvider.accentColor
                : isSelected
                    ? (themeProvider.isDarkTheme
                        ? Colors.white
                        : themeProvider.accentColor)
                    : themeProvider.textColor.withValues(alpha: 0.7),
            fontSize: 16,
            fontWeight:
                isSelected || isBlue ? FontWeight.w600 : FontWeight.w400,
            decoration: isSelected ? TextDecoration.underline : null,
            decorationColor: themeProvider.isDarkTheme
                ? Colors.white
                : themeProvider.accentColor,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }

  void _showMobileMenu(BuildContext context, ThemeProvider themeProvider) {
    showModalBottomSheet(
      context: context,
      backgroundColor: themeProvider.navBarColor,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: themeProvider.textColor.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildMobileNavItem('About', () {
                      Navigator.pop(context);
                      _scrollToSection(_aboutKey);
                    }, themeProvider),
                    _buildMobileNavItem('Skills', () {
                      Navigator.pop(context);
                      _scrollToSection(_skillsKey);
                    }, themeProvider),
                    _buildMobileNavItem('Experience', () {
                      Navigator.pop(context);
                      _scrollToSection(_experienceKey);
                    }, themeProvider),
                    _buildMobileNavItem('Projects', () {
                      Navigator.pop(context);
                      _scrollToSection(_projectsKey);
                    }, themeProvider),
                    _buildMobileNavItem('Certification', () {
                      Navigator.pop(context);
                      _scrollToSection(_certificationKey);
                    }, themeProvider),
                    _buildMobileNavItem('Contact', () {
                      Navigator.pop(context);
                      _scrollToSection(_contactKey);
                    }, themeProvider),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileNavItem(
      String label, VoidCallback onTap, ThemeProvider themeProvider,
      {bool isBlue = false}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          label,
          style: TextStyle(
            color: isBlue ? themeProvider.accentColor : themeProvider.textColor,
            fontSize: 18,
            fontWeight: isBlue ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
