# P2_Probstat_E_5025201275

#### Nama    : Moh. Ilham Fakhri Zamzami
#### NRP     : 5025201275
#### Kelas   : Probabilitas Statistik E
</br>

### Nomer 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![image](https://user-images.githubusercontent.com/94663388/170873512-afab1b8f-e896-4376-ada0-8881b0f42d66.png)


#### 1a
Masukkan semua data pada variabel responden, x, dan y
```R
Responden <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
Berikut tampilan table_data pada global environment setelah menggunakan syntax `data.frame`

![Screenshot (680)](https://user-images.githubusercontent.com/94663388/170871561-5b83baaf-9a6f-4056-b673-e08084f93007.png)

hitung standar devisiasinya dengan syntax `sd` seperti berikut
```R
sd(x-y)
```
dan didapatkan output seperti gambar berikut : </br>
![image](https://user-images.githubusercontent.com/94663388/170872009-7e244e89-4766-4c37-aa5c-2a6fd3883e23.png)

#### 1b
Untuk mencari nilai `t (p - values)`, digunakanlah syntax `t.test` seperti sourecode dibawah ini
```R
t.test(x, y, alternative = "greater", var.equal = FALSE)
```
dan output-nya akan telihat seperti gambar dibawah ini

![image](https://user-images.githubusercontent.com/94663388/170872299-871be53f-ccb9-4270-b8cd-eaab0fd36b8a.png)

#### 1c
Pertama, kompresi variabel x dan y terlebih dahulu : 
```R
var.test(x, y)
```
![image](https://user-images.githubusercontent.com/94663388/170872569-dc23a5e4-5479-4ad8-8a5e-c2b0c4a75861.png)

Selanjutnya untuk melihat pengaruhnya maka lanjutkan dengan
```R
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)
```
dan didapat output sebagai berikut :

![image](https://user-images.githubusercontent.com/94663388/170872658-d6adc094-ed83-42cf-8db2-13ed01de4958.png)

Bandingkan dengan hasil output pada nomer 1 point b, diketahui bahwa nilai mean dan convidence adalah sama, dan terlihat nilai p-value dan df berbeda, sehingga dapat disimpulkan bahwa tidak ada pengaruh yang signifikan secara statistika


### Nomer 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. 
#### 2a
Apakah Anda setuju dengan klaim tersebut?

****Setuju****

#### 2b

![image](https://user-images.githubusercontent.com/94663388/170873227-af418d06-3518-47e6-94da-248284907e65.png)
dapat diketahui bahwa n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900 Maka null (H0) dan alternatif (H1) hipotesis adalah
```
H0 : μ = 20000
H1 : μ > 20000
```
#### 2c
Kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun

### Nomer 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.
![image](https://user-images.githubusercontent.com/94663388/170873439-3f521d2a-8789-4023-b44f-cb8d287fa80a.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)?

#### 3a
Setelah dilakukan perhitungan, didapatkan nilai H0 dan H1 sebagai berikut :

Nilai H0 :</br>
![H0 (3)](https://user-images.githubusercontent.com/94663388/170873856-707e5a9a-6ad4-43e6-8d0e-39f6580dec42.jpg)

Nilai H1 :</br>
![H1 (3)](https://user-images.githubusercontent.com/94663388/170873839-04b1bab8-be98-4752-bcad-51c0a2318682.jpg)

#### 3b
Untuk menghitung Sampel Statistik Penghitungan, digunakan syntax `tsum.test` seperti pada sourecode berikut ini : 
```R
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
dan didapatkan output sebagai berikut : </br>
![image](https://user-images.githubusercontent.com/94663388/170874163-86546714-644b-4e25-b3e6-bbaf929f73bf.png)

#### 3c
dengan melakukan uji statistik pada df = 2, gunakan sourecode seperti dibawah ini : 
```R
plotDist(dist='t', df=2, col="blue")
```
Kemudian didapatkan hasil sebagai berikut : </br>
![plotDist (3)](https://user-images.githubusercontent.com/94663388/170874912-bb623651-7b25-4c44-a31e-65c665bb9eec.png)

#### 3d
nilai untuk mendapatkan nilau kritikal dapat digunakan syntax `qchisq` dengan df=2
```R
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```
![image](https://user-images.githubusercontent.com/94663388/170874958-cc09f96d-1642-4d21-a495-41a7ba5c16d6.png)

#### 3e
keputusannya dapat dibuat dengan `t.test`

#### 3f
Kesimpulannya tidak ditemukan perbedaan rata-rata jika dilihat dari uji statistik, namun jika dilihat dari nilai kritikal ditemukan perbedaan tetapi tidak signifikan 


### Nomer 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama

#### 4a
Ambil data pada link dan inisialisasi pada variabel dataset terlebih dahulu :
```R
dataset <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(dataset)
head(dataset)
```
Kemudian grup variabel dataset
```R
dataset$V1 <- as.factor(dataset$V1)
dataset$V1 = factor(dataset$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))
```
Cek apakah dia menyimpan nilai pada grupnya
```R
class(dataset$V1)
```
bagi tiap value ke tiga bagian pada tiap grup kucing
```R
group1 <- subset(dataset, V1=="Kucing Oren")
group2 <- subset(dataset, V1=="Kucing Hitam")
group3 <- subset(dataset, V1=="Kucing Putih")
```

#### 4b
Untuk mencari Homogeneity of variances gunakan syntax `barlett.test` seperti sc dibawah ini :
```R
bartlett.test(Length~V1, data=dataoneway)
```
didapat nilai p-value = 0.8054. Maka Bartlett's K-squared punya nilai 0.43292 dan df = 2

#### 4c
```R
qqnorm(group1$Length)
qqline(group1$Length)
```
![nomer 4c (4)](https://user-images.githubusercontent.com/94663388/170876417-07fc933a-88ed-4ebb-9013-a85b27bed90e.png)

#### 4d
nilai p-value-nya adalah 0.8054

#### 4e
gunakan syntax `anova` dan Post-hoc `Tukey HSD` seperti sc dibawah ini :
```R
model1 <- lm(Length~Group, data=dataset)
anova(model1)
TukeyHSD(aov(model1))
```

#### 4f
Visualisasinya dapat menggunakan sc berikut ini :
```R
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```

### 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view

#### 5a
Baca file GTL.csv pada yang telah di download pada link tersebut :
```R
GTL <- read.csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
head(GTL)
```
![image](https://user-images.githubusercontent.com/94663388/170879822-fbf4972f-09e5-4354-bc85-5b0ef9826c93.png)

Kemudia lakukan observasi pada data :
```R
str(GTL)
```
![image](https://user-images.githubusercontent.com/94663388/170879882-a04b0848-fae9-4826-9b1f-9ea3d02aed1a.png)

Lalu visualisasi menggunakan command berikut ini :
```R
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```
![image](https://user-images.githubusercontent.com/94663388/170879909-63c41b72-bd77-4a19-b0b8-529673425017.png)

#### 5b
Buat variabel as factor sebagai `anova` terlebih dahulu
```R
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
```
![image](https://user-images.githubusercontent.com/94663388/170880122-0b37fa86-8959-4bba-abc5-0599415da576.png)
```R
anova_test <- aov(Light ~ Glass*Temp_Factor, data = GTL)
```
kemudian, lakukan aov (analysis of variance) seperti command dibawah ini :
```R
summary(anova_test)
```
![image](https://user-images.githubusercontent.com/94663388/170880334-a3c4ade7-ef05-47d7-96e1-bb759bea316a.png)

#### 5c
Gunakan `group_by` dan lakukan `summarise` sesuai mean dan standar deviasi yang berlaku
```R
sum_data <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(sum_data)
```
Berikut tampilan variabel sum_data  pada global environment setelah proses diatas : </br>
![image](https://user-images.githubusercontent.com/94663388/170880544-c3488bd8-6563-43f3-8ef0-415454ba55a6.png)

#### 5d
gunakan syntax `TukeyHSD` seperti sourecode berikut ini :
```R
tukey_test <- TukeyHSD(anova_test)
print(tukey_test)
```
![image](https://user-images.githubusercontent.com/94663388/170880815-3d3aa9d3-2744-422e-aeff-2f4b1f7a49ae.png)

#### 5e
Buat compact letter-nya terlebih dahulu dengan sc sebagai berikut :
```R
tukey.cld <- multcompLetters4(anova_test, tukey_test)
print(tukey.cld)
```
![image](https://user-images.githubusercontent.com/94663388/170880938-1589b5f5-859d-4293-bff0-7b97baeddba9.png)

Kemudian tambahkan compact letter display tersebut ke tabel bersama dengan means dan sd :
```R
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
sum_data$Tukey <- cld$Letters
print(sum_data)
```
![image](https://user-images.githubusercontent.com/94663388/170881545-8a808589-d69f-49be-a2b4-b78c00fdac1c.png)
