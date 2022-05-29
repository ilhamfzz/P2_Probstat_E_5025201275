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

