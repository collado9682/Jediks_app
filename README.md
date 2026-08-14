# FARO — Aplicación de orientación preventiva para jóvenes

**Equipo JEDIKS — Hackathon Nicaragua 2026**

## Propósito

**FARO** es una aplicación móvil desarrollada con **Flutter (Dart)** para el Hackathon Nicaragua 2026.

Su objetivo es orientar a jóvenes que enfrentan situaciones de violencia, riesgos sociales, crisis emocionales u otras dificultades, conectándolos con servicios de apoyo, centros de atención, actividades formativas, programas de acompañamiento y recursos ofrecidos por instituciones y organizaciones aliadas.

FARO busca facilitar el primer paso para encontrar ayuda mediante información clara, accesible y confiable.

> **FARO: encuentra apoyo, construye tu camino.**

---

## Funcionalidades principales

* Orientación según la necesidad del usuario.
* Directorio de centros de atención y servicios de apoyo.
* Información sobre orientación psicológica y bienestar emocional.
* Acceso a actividades formativas y programas de acompañamiento.
* Consulta de recursos ofrecidos por instituciones y organizaciones aliadas.
* Rutas sencillas para ayudar al usuario a identificar su primer paso.
* Contenido preventivo sobre violencia y riesgos sociales.

---

## Arquitectura del proyecto

El proyecto utiliza una arquitectura por capas inspirada en **Clean Architecture**.

Las responsabilidades se dividen en:

* **Data:** comunicación con APIs, bases de datos, modelos y repositorios.
* **Domain:** entidades, contratos, casos de uso y reglas de negocio.
* **Presentation:** páginas, widgets, controladores y gestión de estados.
* **Dependency Injection:** conexión entre las capas sin acoplar sus implementaciones.

Para la gestión de estados se utiliza **BLoC** y para la organización de componentes visuales puede aplicarse **Atomic Design**.

---

## Requisitos previos

* Flutter SDK estable.
* Dart SDK.
* Git.
* Visual Studio Code o Android Studio.
* Emulador Android, navegador compatible o dispositivo físico.
* Extensión de Flutter para Visual Studio Code.
* Opcionalmente, `adb` para dispositivos Android.

---

## Instalación

1. Clona el repositorio:

```bash
git clone URL_DEL_REPOSITORIO
```

2. Entra a la carpeta del proyecto:

```bash
cd faro_app
```

3. Instala las dependencias:

```bash
flutter pub get
```

4. Abre el proyecto en Visual Studio Code:

```bash
code .
```

5. Si ocurre algún problema con la compilación:

```bash
flutter clean
flutter pub get
```

---

## Cómo ejecutar la aplicación

### Ver dispositivos disponibles

```bash
flutter devices
```

### Ejecutar en Google Chrome

```bash
flutter run -d chrome
```

### Ejecutar en servidor web

```bash
flutter run -d web-server
```

### Ejecutar en emulador o dispositivo físico

Inicia el emulador o conecta el dispositivo y ejecuta:

```bash
flutter run
```

Si existe más de un dispositivo disponible:

```bash
flutter run -d <device-id>
```

---

## Generar APK para Android

### APK de prueba

```bash
flutter build apk
```

### APK de producción

```bash
flutter build apk --release
```

---

## Estructura del proyecto

```text
lib/
├── main.dart
│
├── app/
│   ├── app.dart
│   ├── config/
│   ├── di/
│   ├── routes/
│   └── theme/
│
├── core/
│   ├── constants/
│   ├── error/
│   ├── result/
│   ├── services/
│   ├── usecases/
│   └── widgets/
│
└── features/
    ├── home/
    ├── orientation/
    ├── resources/
    ├── activities/
    └── support_centers/
```

Cada funcionalidad puede dividirse en:

```text
feature/
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
│
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
│
└── presentation/
    ├── bloc/
    ├── pages/
    └── widgets/
```

---

## Consideraciones

FARO es una herramienta de orientación preventiva.

La aplicación:

* No sustituye la atención de profesionales.
* No realiza diagnósticos médicos o psicológicos.
* No reemplaza los canales oficiales de emergencia.
* Debe mostrar información validada y actualizada.
* Orienta al usuario hacia instituciones y recursos especializados.

---

## Licencia y créditos

Proyecto desarrollado para **Hackathon Nicaragua 2026** por el equipo **JEDIKS**.

**FARO — Encuentra apoyo, construye tu camino.**
::: 
