# Clustering the Quality of Senior High School Education in Each District of Indonesia in 2023

<div style="text-align: center;">
  <img src="https://asset.kompas.com/crops/re-smGujOpms3lbCmHyEeCm4GiY=/46x160:755x633/1200x800/data/photo/2022/05/14/627f60a0ec075.jpg" 
       alt="BANNER SMA" 
       style="width: 50%;">
  <p>Sumber Gambar: Kompas.com</p>
</div>

# 📌 Latar Belakang 

<p align = "left">
🏫 Pendidikan merupakan komponen penting dalam membangun bangsa <br> 
📊 Menurut survei BPS pada tahun 2023, rata- rata lama sekolah penduduk Indonesia adalah 8,77 tahun <br>
📉 Masih terdapat kesenjangan kualitas pendidikan <br>
🖥 Metode clustering dapat membantu untuk mengetahui provinsi mana yang membutuhkan perhatian khusus <br>
  dalam mengatasi masalah pendidikan.

# 🏷 Data 
<p align = "left">
Data yang digunakan dalam penelitian ini adalah data sekunder yang diambil dari <b> Statistik Pendidikan tahun 2023 </b> 
yang terdapat pada website Badan Pusat Statistik, dengan variabel yang digunakan sebagai berikut : <br> <br>
<b>
X1 : Angka Partisipasi Sekolah (APS) pada kelompok umur 16-18 tahun <br>
X2 : Angka Partisipasi Kasar (APK) pada jenjang pendidikan SMA/sederajat <br>
X3 : Angka Partisipasi Murni(APM) di daerah perkotaan pada jenjang pendidikan SMA/Sederajat <br>
X4 : Angka Melek Huruf (AMH) pada kelompok umur 15-59 tahun <br>
X5 : Rata-rata lama sekolah penduduk umur 15 tahun ke atas <br>
X6 : Tingkat penyelesaian pendidikan minimal tamat SMA/sederajat <br> 
</b>
<br>

<b> Catatan: </b>
- Angka Partisipasi Sekolah (APS): Proporsi penduduk pada kelompok usia jenjang pendidikan tertentu yang masih bersekolah terhadap penduduk pada kelompok usia tersebut.<br>
- Angka Partisipasi Kasar (APK): Proporsi penduduk yang masih bersekolah pada suatu jenjang pendidikan tertentu tanpa memandang usia
 terhadap jumlah penduduk kelompok usia yang sesuai dengan jenjang pendidikan tersebut.<br>
- Angka Partisipasi Murni (APM): Proporsi penduduk pada kelompok usia jenjang pendidikan tertentu yang masih bersekolah pada jenjang pendidikan yang sesuai dengan kelompok usianya terhadap penduduk pada kelompok usia tersebut.<br>
- Angka Melek Huruf (AHM):  Proporsi penduduk kelompok umur tertentu yang memiliki kemampuan membaca dan menulis kalimat sederhana dalam huruf latin, huruf arab, dan huruf lainnya (seperti huruf jawa, kanji, dll) terhadap
penduduk kelompok umur tersebut.
<br>

# 🔍 Metode yang Digunakan
<p align = "left">
Metode yang digunakan pada analisis kali ini adalah <b> Analisis Klaster Hierarki </b>, dikarenakan belum ditemukan terkait banyak claster yang akan digunakan sebab belum ada penelitian terdahulu yang membahas secara detail. 

## 🖥 Languages Programs & Library 
Bahasa pemrograman yang digunakan dalam proses analisis data adalah <b>R</b>, dengan beberapa bantuan <i>library</i> sebagai berikut:<br>
<b>
1. library(readxl) <br>
2. library(cluster) <br>
3. library(dendextend) <br>
4. library(factoextra) <br>
5. library(tidyverse) <br>
6. library(clusterSim) <br>
</b>

# 📋 Hasil Analisis
## 📊 Statistika Deskriptif

<img src = "Statistika Deskriptif.png">

Beberapa informasi penting yang dapat diambil dari output tersebut yaitu: <br>
1. APS memilik rata-ratasebesar 75.495%, APK memiliki rata-rata sebesar 88.72% dan APM sebesar 67.81%. Angka tersebut <b>masih
berada dibawah target nasional yaitu 100%</b>.<br>
2. Rata- rata angka melek huruf sebesar 98.71% menunjukkan <b>tingkat melek huruf yang tinggi</b>.<br>
3. Rata-rata lama sekolah yang <b> masih rendah </b> yaitu sekitar 9,3 tahun. <br>
4. Nilai standart deviasi yang cukup besar pada Tingkat penyelesaian pendidikan yaitu 10.687%
menunjukkan perbedaan yang cukup tinggi antar provinsi artinya partisipasi penduduk yang sedang
mengenyam pendidikan sesuai dengan jenjang pendidikannya di Indonesia masih belum merata untuk
setiap Provinsi.

## 🌍 Analisis <i> Cluster </i>

### Korelasi Jarak <i> Cophnetic </i>

<img src = "Jarak Cophnetic.png">

Berdasarkan analisis yang telah dilakukan, diperoleh hasil bila metode <i>Average Linkage </i> memiliki korelasi terbesar dengan nilai 
<b> 0.8716066 </b>, dengan demikian data disimpulkan bila metode <i> Average Linkage </i> merupakan metode pengelompokan terbaik. 

### Penentuan Jumlah <i> Cluster </i> Optimal
Terdapat 3 metode yang digunakan untuk mengetahui jumlah <i>cluster</i> optimal, antara lain:
1. <i> Elbow </i> <br>
2. <i> Silhouette Score </i> <br>
3. <i> David Bouldin Index </i>

<img src = "Jumlah Cluster Optimal.png">

- <b> Metode Elbow </b>: Berdasarkan plot tersebut terlihat bahwa pada saat jumlah cluster sebanyak 4 sudah tidak terjadi penurunan   WSS yang signifikan. <br>
- <b> Silhouette Score </b>:Berdasarkan plot diatas,terlihat bahwa nilai 
silhoutte tertinggi adalah pada k= 4, menunjukan bahwa jumlah cluster optimal untuk pemisahan yang jelas adalah 4 <br>
- <b> David Bouldin Index </b>:Berdasarkan plot diatas, nilai david-Bouldin index
terendah tercapai pada k = 4 yang berati jumlah cluster optimal adalah 4 <br> <br>
<b>Dikarenakan seluruh metode menunjukkan cluster optimal ada pada k=4, maka k=4 digunakan sebagai jumlah pengelompokan dalam analisis cluster.</b>

### Dendogram 
<img src="Cluster Dendogram .png" alt="Dendrogram" width="600" height="500">

### Klasterisasi Wilayah

<img src = "Peta Tematik .png" width = "1000" height = "500">

<b> Tabel Anggota <i>Cluster</i> </b>
<table border="1">
  <thead>
    <tr>
      <th> <i> Cluster </i> </th>
      <th> Provinsi </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> 1 </td>
      <td> Aceh, Sumatera Utara, Sumatera Barat, Riau, Jambi, Sumatera Selatan, Bengkulu,
Lampung, Kep. Bangka Belitung, Kepulauan Riau, Jawa Barat, Jawa Tengah, Jawa
Timur, Banten, Bali, Nusa Tenggara Barat, Nusa Tenggara Timur, Kalimantan Barat,
Kalimantan Tengah, Kalimantan Selatan, Kalimantan Timur, Kalimantan Utara,
Sulawesi Utara, Sulawesi Tengah, Sulawesi Selatan, Sulawesi Tenggara, Gorontalo,
Sulawesi Barat, Maluku, Maluku Utara, Papua Barat</td>
    </tr>
    <tr>
      <td> 2 </td>
      <td> DKI Jakarta </td>
    </tr>
    <tr>
      <td> 3 </td>
      <td> DI Yogyakarta </td>
    </tr>
    <tr>
      <td> 4 </td>
      <td> Papua </td>
    </tr>
  </tbody>
</table>

### Karakteristik Setiap <i>Cluster</i>

<img src = "Karakteristik Setiap Cluster.png" width = "1000" height = "500">

<table border="1">
  <thead>
    <tr>
      <th> <i> Cluster </i> </th>
      <th> Karakteristik </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> 1 </td>
      <td>  
- APS (X1): 75,45 (tinggi, tetapi masih di bawah Cluster 3). <br>
- APK (X2): 89,50 (cukup tinggi, kedua tertinggi). <br>
- APM (X3): 67,86 (kedua tertinggi). <br>
- AMH (X4): 99,11 (tertinggi kedua). <br>
- Rata-rata Lama Sekolah (X5): 9,27 (ketiga terendah).<br>
- Tingkat Penyelesaian SMA (X6): 65,17 (kedua tertinggi).<br> 
      </td>
    </tr>
    <tr>
      <td> 2 </td>
      <td> 
- APS (X1): 72,50 (rendah dibanding cluster lain). <br>
- APK (X2): 77,40 (terendah kedua).<br>
- APM (X3): 60,81 (terendah).<br>
- AMH (X4): 99,88 (tertinggi).<br>
- Rata-rata Lama Sekolah (X5): 11,42 (tertinggi).<br>
- Tingkat Penyelesaian SMA (X6): 88,10 (tertinggi).<br>
      </td>
    </tr>
    <tr>
      <td> 3 </td>
      <td> 
 - APS (X1): 91,17 (tertinggi). <br>
- APK (X2): 90,82 (tertinggi). <br>
- APM (X3): 77,77 (tertinggi). <br>
- AMH (X4): 99,07 (kedua tertinggi). <br>
- Rata-rata Lama Sekolah (X5): 10,16 (kedua tertinggi). <br>
- Tingkat Penyelesaian SMA (X6): 89,69 (tertinggi). <br> 
      </td>
    </tr>
    <tr>
      <td> 4 </td>
      <td> 
- APS (X1): 64,15 (terendah).<br>
- APK (X2): 73,90 (kedua terendah).<br>
- APM (X3): 63,27 (ketiga terendah).<br>
- AMH (X4): 84,83 (terendah).<br>
- Rata-rata Lama Sekolah (X5): 7,32 (terendah).<br>
- Tingkat Penyelesaian SMA (X6): 39,50 (terendah).<br>
      </td>
    </tr>
  </tbody>
</table>

### Kesimpulan 
<table border="1">
  <thead>
    <tr>
      <th> <i> Cluster </i> </th>
      <th> Kesimpulan </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> 1 </td>
      <td> Fokus untuk meningkatkan rata-rata lama sekolah penduduk agar selaras dengan tingkat penyelesaian SMA yang sudah cukup baik.
</td>
    </tr>
    <tr>
      <td> 2 </td>
      <td> Fokus pada peningkatan partisipasi pendidikan (APS, APK, APM), karena meskipun AMH dan lama sekolah tinggi, partisipasi sekolah masih rendah. </td>
    </tr>
    <tr>
      <td> 3 </td>
      <td> Cluster ini memiliki indikator pendidikan terbaik, dengan tingkat partisipasi dan penyelesaian pendidikan tertinggi. </td>
    </tr>
    <tr>
      <td> 4 </td>
      <td> Cluster ini membutuhkan perhatian paling besar, terutama dalam meningkatkan angka melek huruf, rata-rata lama sekolah, dan partisipasi pendidikan. </td>
    </tr>
  </tbody>
</table>

