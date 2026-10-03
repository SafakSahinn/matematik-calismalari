// Çalışma planı. Bir konunun sayfası hazır olunca `sayfa` alanına yolunu yaz,
// konu bitince `durum: "bitti"` yap. Ana sayfa listeyi buradan üretir.
const PLAN = [
  {
    faz: "Faz 0: Temeller",
    konular: [
      { no: "0.2", ad: "Polinomlar" },
      { no: "0.3", ad: "Karmaşık sayılar" },
      { no: "0.4", ad: "Fonksiyon kavramı" },
      { no: "0.5", ad: "Fonksiyon aileleri" },
    ],
  },
  {
    faz: "Faz 1: Calculus 1 (Türev)",
    konular: [
      { no: "1.1", ad: "Limit, süreklilik, asimptotlar" },
      { no: "1.2", ad: "Türevin tanımı, polinomların türevi" },
      { no: "1.3", ad: "Zincir, çarpım ve bölüm kuralları" },
      { no: "1.4", ad: "Trigonometrik türevler" },
      { no: "1.5", ad: "Üstel, logaritmik, kapalı ve ters trigonometrik türevler" },
      { no: "1.6", ad: "İkinci türev, konkavlık" },
      { no: "1.7", ad: "Ekstremum değerler, grafik çizimi, optimizasyon" },
      { no: "1.8", ad: "L'Hôpital kuralı" },
      { no: "1.9", ad: "Doğrusal yaklaşım, Newton yöntemi, ilişkili oranlar" },
    ],
  },
  {
    faz: "Faz 2: Calculus 2 (İntegral ve seriler)",
    konular: [
      { no: "2.1", ad: "Belirsiz integral" },
      { no: "2.2", ad: "Belirli integral, Riemann toplamı, Temel Teorem" },
      { no: "2.3", ad: "Trigonometrik integraller" },
      { no: "2.4", ad: "Üstel ve logaritmik integraller" },
      { no: "2.5", ad: "Değişken değiştirme" },
      { no: "2.6", ad: "Trigonometrik dönüşüm" },
      { no: "2.7", ad: "Kısmi integrasyon" },
      { no: "2.8", ad: "Kısmi kesirlere ayırma" },
      { no: "2.9", ad: "Has olmayan integraller" },
      { no: "2.10", ad: "Uygulamalar: alan, hacim, yay uzunluğu" },
      { no: "2.11", ad: "Diziler, seriler, Taylor/Maclaurin" },
      { no: "2.12", ad: "Parametrik denklemler, kutupsal koordinatlar" },
      { no: "2.13", ad: "Çok katlı integraller" },
    ],
  },
  {
    faz: "Faz 3: Diferansiyel Denklemler",
    konular: [
      { no: "3.1", ad: "Temel kavramlar, yön alanları" },
      { no: "3.2", ad: "1. mertebe denklemler" },
      { no: "3.3", ad: "1. mertebe uygulamalar" },
      { no: "3.4", ad: "2. mertebe sabit katsayılı homojen denklemler" },
      { no: "3.5", ad: "Homojen olmayan denklemler" },
      { no: "3.6", ad: "Titreşimler ve devreler" },
      { no: "3.7", ad: "Laplace dönüşümü" },
      { no: "3.8", ad: "Doğrusal ODE sistemleri" },
      { no: "3.9", ad: "Sayısal çözüm (Euler, Runge-Kutta, ode45)" },
    ],
  },
];
