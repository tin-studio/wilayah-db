# wilayah-db
Database ID wilayah indonesia, berdasarkan data pada kodewilayah.id

# Modifikasi
Berdasarkan data dari https://raw.githubusercontent.com/kodewilayah/permendagri-72-2019/main/dist/base.csv, terdapat beberapa modifikasi yang saya terapkan disini
- Memisahkan tiap id
- Menambahkan double quotes

Alat yang saya gunakan
- Microsoft Excel
- Notepad++ dengan plugin CsvLint

Langkah - langkah yang saya terapkan
- Memisahkan ID yang semula **Dot-separated** menjadi **Comma-separated**
  Yaitu dengan menggunakan fitur **Excel text to column**
- Menambahkan double quotes pada setiap value
  Dengan mengedit csv yang telah dipisah id pada notepad++, lalu reformat data menggunakan plugin CsvLint

# Node Js
Penggunaan node js hanya untuk input data ke mysql
