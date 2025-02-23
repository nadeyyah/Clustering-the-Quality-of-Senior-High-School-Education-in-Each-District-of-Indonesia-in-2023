#Install Library
library(readxl)
library(cluster)
library(dendextend)
library(factoextra)
library(tidyverse)
library(clusterSim)

#Import Data
SchoolQuality = read_excel("~/Downloads/Data_Cluster .xlsx")
head(SchoolQuality)
data = SchoolQuality

#Standarisasi Data
data_cluster = scale(SchoolQuality[2:7])

#Mencari jarak dengan metode Euclidean
jarak = dist(data_cluster, method = "euclidean")

#Melakukan klasterisasi dengan 4 metode berbeda
single = hclust(jarak, method="single")
complete = hclust(jarak, method="complete")
average = hclust(jarak, method="average")
ward = hclust(jarak, method = "ward.D2")

#Menghitung korelasi antara jarak cophenetic dengan jarak asli
cor_single = cor((cophenetic(single)), jarak)
cor_complete = cor((cophenetic(complete)), jarak)
cor_avg = cor((cophenetic(average)), jarak)
cor_ward = cor((cophenetic(ward)), jarak)

#Membuat data frame untuk jarak cophnetic
jarak_cophenetic <- data.frame (
  metode = c("Single", "Complete", "Average", "Ward"),
  korelasi = c(cor_single, cor_complete, cor_avg,
               cor_ward) )

#Data frame ditampilkan dalam bentuk tabel
jarak_cophenetic
#Mencari jumlah cluster optimum dengan plot WSS
plot_wss= fviz_nbclust(data_cluster, FUN=hcut, method=
                         "wss")
plot_wss
#Mencari Jumlah cluster optimum dengan silhouette score
fviz_nbclust(data_cluster, FUN=hcut, method =
               "silhouette")
#mencari jumlah cluaster optimum dengan david bouldin index
calculate_dbi = function(data, max_k) {
  dbi_values =  numeric(max_k - 1)
  # Loop untuk jumlah klaster dari 2 hingga max_k
  for (k in 2:max_k) {
    # Klaster hierarki
    hc <- hclust(dist(data), method = "ward.D2")
    clusters <- cutree(hc, k = k)
    # Hitung Davies-Bouldin Index
    dbi_values[k - 1] <- index.DB(data, clusters)$DB
  }
  return(dbi_values)
}
max_k = 10
dbi_values = calculate_dbi(data_cluster,max_k)
# Membuat plot
plot(2:max_k, dbi_values, type = "b", pch = 19, col =
       "navy",
     
     xlab = "Number of Clusters (k)", ylab = "Davies-
Bouldin Index",
     
     main = "Davies-Bouldin Index for Hierarchical
Clustering")

#Membuat plot dendogram untuk metode average linkage
plot(average, SchoolQuality$Provinsi, hang = -1)

#Menandai anggota kelompok pada setiap cluster pada dendogram
rect.hclust(average,k=4,border=2:3)

#Menampilkan hasil cluster dalam bentuk data frame
average.cut = cutree(average,4)
daftar_cluster = data.frame(Daerah=SchoolQuality$Provinsi,
                            Cluster= average.cut)

#Mengurutkan kota/kab berdasarkan cluster dan diubah dalam bentuk tabel
arrange(daftar_cluster, Cluster)

#Mencari summary untuk mengetahui karakteristik setiap cluster
summary = SchoolQuality[,2:7]%>%
  mutate(Cluster=average.cut)%>%
  group_by(Cluster)%>%
  summarise_all("mean")

#Mengubah menjadi data frame
tabelSummary= as.data.frame(summary)
tabelSummary
