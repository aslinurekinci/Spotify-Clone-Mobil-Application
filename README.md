# 🎵 Spotify Clone - Flutter App

Modern ve kullanıcı dostu bir Spotify klonu uygulaması. Flutter ile geliştirilmiş, Clean Architecture prensiplerine uygun olarak tasarlanmıştır.

## 📱 Özellikler

- **Firebase Authentication**: Email/Password ile güvenli giriş ve kayıt sistemi
- **Dark/Light Mode**: Kullanıcı tercihine göre tema seçimi (Hydrated Bloc ile kalıcı)
- **Modern UI/UX**: Spotify tarzı modern ve şık arayüz tasarımı
- **Clean Architecture**: Katmanlı mimari yapı (Data, Domain, Presentation)
- **State Management**: BLoC pattern ile state yönetimi
- **Dependency Injection**: GetIt ile bağımlılık yönetimi

  <img width="200" height="400" alt="Ekran görüntüsü 2025-12-01 133648" src="https://github.com/user-attachments/assets/228a1e5f-ee4b-4cde-8327-470af4a80a89" />


## 🚀 Kurulum

### Gereksinimler

- Flutter SDK (3.9.2 veya üzeri)
- Firebase projesi
- Android Studio / VS Code

### Adımlar

1. **Repository'yi klonlayın:**
   ```bash
   git clone https://github.com/kullaniciadi/spotify.git
   cd spotify
   ```

2. **Bağımlılıkları yükleyin:**
   ```bash
   flutter pub get
   ```

3. **Firebase yapılandırması:**
   - Firebase Console'dan yeni bir proje oluşturun
   - Android ve iOS için uygulama ekleyin
   - `google-services.json` dosyasını `android/app/` klasörüne ekleyin
   - `GoogleService-Info.plist` dosyasını `ios/Runner/` klasörüne ekleyin
   - `lib/firebase_options.dart` dosyasını kendi Firebase yapılandırmanızla güncelleyin

4. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```

## 📦 Kullanılan Paketler

- `flutter_bloc` - State management
- `hydrated_bloc` - Kalıcı state yönetimi
- `firebase_core` - Firebase temel yapılandırma
- `firebase_auth` - Firebase Authentication
- `get_it` - Dependency injection
- `dartz` - Functional programming utilities
- `flutter_svg` - SVG görsel desteği

## 🏗️ Proje Yapısı

```
lib/
├── common/              # Ortak widget'lar ve helper'lar
├── core/               # Temel yapılandırmalar
├── data/               # Data katmanı
├── domain/             # Domain katmanı
└── presentation/       # UI katmanı
```

