# widgets_flutter


## Getting Started
Widget'lar:

MaterialApp (Dolaylı): Bu kodda doğrudan MaterialApp yok, ancak Scaffold ve MaterialPageRoute gibi Material Design widget'ları kullanıldığı için, bu kodun bir MaterialApp widget'ı içinde yer aldığını varsayabiliriz. MaterialApp uygulamanın temel yapısını oluşturur ve temayı, rotaları ve diğer genel ayarları tanımlar.
Scaffold: Temel bir ekran yapısı oluşturur. Uygulama çubuğu (AppBar), gövde (body), alt gezinme çubuğu (bottomNavigationBar) gibi temel bileşenleri içerir.
SafeArea: İçeriği cihazın güvenli alanlarına (durum çubuğu, çentik vb.) sığdırır.
SingleChildScrollView: Kaydırılabilir bir içerik alanı oluşturur.
Padding: Widget'ların etrafına boşluk ekler.
ConstrainedBox: Bir widget'ın boyutunu sınırlar.
Container: Widget'ları gruplar ve stil uygular (arka plan rengi, kenarlık, gradyan vb.).
Column: Widget'ları dikey olarak sıralar.
TextField: Kullanıcıdan metin girişi alır.
ElevatedButton: Yükseltilmiş bir düğme oluşturur.
TextButton: Metin tabanlı bir düğme oluşturur.
Text: Ekranda metin görüntüler.
SizedBox: Widget'lar arasında boşluk oluşturur.
Image.asset: Yerel varlıklardan (assets) bir resim (bu durumda bir GIF) görüntüler.
GestureDetector: Dokunma olaylarını algılar.
Icon: Ekranda bir ikon gösterir.
OutlineInputBorder: TextField'lar için kenarlık oluşturur.
LinearGradient: Container widget'ının arka planına gradyan uygular.
MaterialPageRoute: Sayfalar arası geçişler için kullanılır.
Temel Flutter Kavramları:

Widget Ağacı: Flutter'da her şey bir widget'tır ve widget'lar bir ağaç yapısı içinde düzenlenir.
Durum Yönetimi (StatefulWidget): _LoginScreenState sınıfı, LoginScreen widget'ının durumunu yönetir. setState() yöntemi, widget'ın durumunu günceller ve yeniden çizilmesini sağlar.
Navigasyon: Navigator.push() ve Navigator.pushReplacement() yöntemleri, sayfalar arası geçişleri yönetir.
Giriş İşleme: TextField widget'ları ve TextEditingController sınıfları, kullanıcı girişlerini işler.
Layout (Düzen): Column, Padding, SizedBox gibi widget'lar, widget'ların düzenini kontrol eder.
Temalar ve Stiller: TextStyle, InputDecoration, ElevatedButtonStyle gibi sınıflar, widget'ların görünümünü özelleştirir.
Varlık Yönetimi (Asset Management): pubspec.yaml dosyası ve Image.asset widget'ı, yerel varlıkların (resimler, GIF'ler vb.) yönetilmesini sağlar.
Odak Yönetimi (Focus Management): FocusNode ve WidgetsBinding.instance.focusManager.primaryFocus?.unfocus() klavye kapatma ve odak yönetimi için kullanılır.
Medya Sorguları (Media Queries): MediaQuery.of(context) ile ekran boyutları ve diğer cihaz özelliklerine erişim sağlanır.


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
"# widgets_flutter" 
