# Clustering-the-Quality-of-Senior-High-School-Education-in-Each-District-of-Indonesia-in-2023

Credit: Nadia Alzena, Fathina Arifa, Sherly Adinda, Aulia Naurah 
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
Berdasarkan analisis yang telah dilakukan, diperoleh hasil bila metode <i>Average Linkage </i> memiliki korelasi terbesar dengan nilai 
<b> 0.8716066 </b>, dengan demikian data disimpulkan bila metode <i> Average Linkage </i> merupakan metode pengelompokan terbaik. 

### Penentuan Jumlah <i> Cluster </i> Optimal
Terdapat 3 metode yang digunakan untuk mengetahui jumlah <i>cluster</i> optimal, antara lain:
1. <i> Elbow </i> <br>
2. <i> Silhouette Score </i> <br>
3. <i> David Bouldin Index </i>

### Dendogram 

### Klasterisasi Wilayah

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

### Kesimpulan 

