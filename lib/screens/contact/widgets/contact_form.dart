import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../resource/theme_provider.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final message = _messageController.text.trim();

      final subject = 'Portfolio Contact: $name';
      final body = '''
Name: $name
Email: $email

Message:
$message
''';

      final uri = Uri.parse(
        'mailto:swylam0ali@gmail.com?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
      );

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        // Clear form after successful send
        _nameController.clear();
        _emailController.clear();
        _messageController.clear();

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Email client opened successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Could not open email client'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return Container(
              padding: EdgeInsets.all(sizingInformation.isDesktop ? 20 : 16),
              decoration: BoxDecoration(
                color: themeProvider.isDarkTheme
                    ? Colors.grey[800]?.withValues(alpha: 0.3)
                    : Colors.grey[100]?.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: themeProvider.isDarkTheme
                      ? Colors.grey[600]!
                      : Colors.grey[300]!,
                  width: 1,
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Send me a message',
                      style: TextStyle(
                        fontSize: sizingInformation.isDesktop ? 20 : 18,
                        fontWeight: FontWeight.bold,
                        color: themeProvider.textColor,
                      ),
                    ),
                    SizedBox(height: sizingInformation.isDesktop ? 20 : 16),

                    // Name field
                    TextFormField(
                      controller: _nameController,
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: sizingInformation.isDesktop ? 16 : 14,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        labelStyle: TextStyle(
                          color: themeProvider.textColor,
                          fontSize: sizingInformation.isDesktop ? 16 : 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: themeProvider.isDarkTheme
                                ? Colors.grey[600]!
                                : Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: themeProvider.isDarkTheme
                            ? Colors.grey[700]?.withValues(alpha: 0.3)
                            : Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: sizingInformation.isDesktop ? 16 : 12,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: sizingInformation.isDesktop ? 15 : 12),

                    // Email field
                    TextFormField(
                      controller: _emailController,
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: sizingInformation.isDesktop ? 16 : 14,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Your Email',
                        labelStyle: TextStyle(
                          color: themeProvider.textColor,
                          fontSize: sizingInformation.isDesktop ? 16 : 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: themeProvider.isDarkTheme
                                ? Colors.grey[600]!
                                : Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: themeProvider.isDarkTheme
                            ? Colors.grey[700]?.withValues(alpha: 0.3)
                            : Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: sizingInformation.isDesktop ? 16 : 12,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: sizingInformation.isDesktop ? 15 : 12),

                    // Message field
                    TextFormField(
                      controller: _messageController,
                      style: TextStyle(
                        color: themeProvider.textColor,
                        fontSize: sizingInformation.isDesktop ? 16 : 14,
                      ),
                      maxLines: sizingInformation.isDesktop ? 4 : 3,
                      decoration: InputDecoration(
                        labelText: 'Your Message',
                        labelStyle: TextStyle(
                          color: themeProvider.textColor,
                          fontSize: sizingInformation.isDesktop ? 16 : 14,
                        ),
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: themeProvider.isDarkTheme
                                ? Colors.grey[600]!
                                : Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        filled: true,
                        fillColor: themeProvider.isDarkTheme
                            ? Colors.grey[700]?.withValues(alpha: 0.3)
                            : Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: sizingInformation.isDesktop ? 16 : 12,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your message';
                        }
                        if (value.trim().length < 10) {
                          return 'Message must be at least 10 characters';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: sizingInformation.isDesktop ? 20 : 16),

                    // Send button
                    SizedBox(
                      width: double.infinity,
                      height: sizingInformation.isDesktop ? 50 : 45,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _sendEmail,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: _isLoading
                            ? SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                ),
                              )
                            : Text(
                                'Send Message',
                                style: TextStyle(
                                  fontSize:
                                      sizingInformation.isDesktop ? 16 : 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
