import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const Color primaryColor = Color(0xFF5B63D3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              const Spacer(flex: 3),

              // LOGO
              Image.asset(
                'assets/images/logo_oficial.png',
                width: 300,
                fit: BoxFit.contain,
              ),

              const Spacer(flex: 2),

              // MENSAJE PRINCIPAL
              const Text(
                'Tu guía segura hacia espacios\nlibres de violencia.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.35,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF262626),
                ),
              ),

              const SizedBox(height: 18),

              // INDICADORES
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _indicator(active: true),
                  const SizedBox(width: 7),
                  _indicator(),
                  const SizedBox(width: 7),
                  _indicator(),
                ],
              ),

              const Spacer(flex: 3),

              // BOTÓN SIGUIENTE
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // Después conectaremos la segunda pantalla.
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Siguiente',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // OMITIR
              TextButton(
                onPressed: () {
                  // Después llevará al inicio o login.
                },
                child: const Text(
                  'Omitir',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _indicator({
    bool active = false,
  }) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active
            ? primaryColor
            : const Color(0xFFD9D9D9),
      ),
    );
  }
}