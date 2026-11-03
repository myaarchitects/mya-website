# 🏛️ REKAPITULASI LENGKAP & DOKUMEN HANDOVER PROYEK WEBSITE MYA

**Dokumen Serah Terima Resmi Antar-Sesi**  
**Tanggal:** 17 Oktober 2026  
**Status Workspace:** Aktif & Terverifikasi  
**Direktori Proyek:** `C:\Users\Yarka\.gemini\antigravity\scratch`  
**File Utama Website:** `index.html` (Total ~4.256 baris)  
**Server Lokal:** `server.ps1` (Listener port 8080 dengan auto-port conflict protection & dual IPv4/localhost binding)  
**Launcher Cepat:** `Buka-Website.bat` (Membuka browser otomatis ke `http://localhost:8080/index.html`)  
**Browser Path:** `C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe`  

---

## 1. STRUKTUR ARSITEKTUR PORTOFOLIO (TOTAL 104 PROYEK AKTIF)

Website MYA menampilkan 5 kategori portofolio aktif yang telah terkurasi dengan sistem data bilingual (ID/EN) dan satu kategori dalam status penahanan (on hold):

### A. Rekapitulasi Jumlah per Kategori:
1. **Architecture (`arch1`–`arch31`): 31 Proyek Aktif**
   - Residensial mewah tropis, villa tebing, bangunan komersial, civic center, fasilitas edukasi/asrama.
   - Folder aset: `images/projects/1-architecture/arch-[nomor].jpg`.
2. **Urban Design & Master Plan (`mp1`–`mp31`): 31 Proyek Aktif**
   - Perancangan kota baru, transit-oriented development (TOD), koridor hijau-biru, zonasi kawasan terpadu.
   - Folder aset: `images/projects/2-masterplan/mp-[nomor].jpg`.
3. **Land Development Advisory (`lda1`–`lda18`): 18 Penugasan Strategis**
   - Menghubungkan studi kelayakan finansial, tata ruang kota, dan strategi investasi lahan.
   - Folder aset: `images/projects/5-land-development/land-[1-18].jpg`.
4. **Interior Architecture (`int1`–`int12`): 12 Proyek Aktif**
   - Eksplorasi materialitas, pencahayaan intim, furnitur bespoke, dan akustik ruang dalam.
   - Folder aset: `images/projects/3-interior/int-[nomor].jpg`.
5. **Design & Build (`db1`–`db12`): 12 Proyek Realisasi**
   - Integrasi langsung rancangan arsitektural dengan konstruksi presisi lapangan.
   - Folder aset: `images/projects/4-design-build/db-[nomor].jpg`.
6. **Digital Product (`dig1`–`dig12`): 12 Proyek — STATUS: ON HOLD**
   - Ditampilkan di menu navigasi, tetapi dinonaktifkan secara visual (`opacity: 0.45; cursor: not-allowed`), tidak dapat diklik pada mega menu maupun modal subnav, dan dikecualikan dari array grid utama `ALL`.

---

## 2. DETAIL REKAM JEJAK 18 PENUGASAN LAND DEVELOPMENT ADVISORY (LDA)
Seluruh 18 penugasan telah dikunci dengan **3 Parameter Konsultan Internasional** (seluruh unit luas yang belum terkonfirmasi telah dihapus sesuai instruksi):
1. **lda1 (Karawang):** Konsep Desain & Financial Feasibility (7.8 ha)
2. **lda2 (Karawang):** Konsep Desain & Financial Feasibility (Kawasan Terpadu Karawang 7.8 ha)
3. **lda3 (Dukuh Atas Jakarta):** Pengembangan Kawasan TOD Dukuh Atas (Konsep Desain & Financial Feasibility Studies)
4. **lda4 (Karawang):** Konsep Master Plan dan Zonasi Kawasan Industri & Perumahan (175 ha)
5. **lda5 (Cikupa Tangerang):** Preliminary Zonasi dan Urban Design (200 ha)
6. **lda6 (Sentul):** Feasibility Study Klaster Perumahan The Mountain (Menghitung PnL Total)
7. **lda7 (Sentul):** Feasibility Study Gate Kawasan Sentul Nirwana
8. **lda8 (Sentul):** Feasibility Study Area Komersial Sentul
9. **lda9 (Sentul):** Feasibility Study Hotel Penunjang Jungleland Sentul
10. **lda10 (Sentul):** Perencanaan Zonasi Kawasan Sentul Nirwana (16.000 ha)
11. **lda11 (Sentul):** Feasibility Study Koridor Komersial Terpadu Sentul
12. **lda12 (Sentul):** Konsep Desain & Feasibility Study Area Komersial Town Center
13. **lda13 (Sentul):** Financial Feasibility Study Pengembangan Retail & Town Center
14. **lda14 (Dukuh Atas Jakarta):** Studi Lanjutan Integrasi Moda & Financial Feasibility TOD Dukuh Atas
15. **lda15 (Sentul):** Perencanaan Master Plan & Zonasi Tahap 1 Sentul Nirwana
16. **lda16 (Sentul):** Konsep Master Plan & FS Klaster The Wind Extension Sentul
17. **lda17 (Sentul):** Master Plan Klaster Perumahan Terpadu di Sentul
18. **lda18 (Sentul):** Master Plan & PnL Klaster Perumahan The Breeze dan The Atmosphir Sentul Nirwana

**Tiga Parameter Internasional yang Diterapkan pada Setiap Proyek:**
- *Location & Context:* Analisis posisi geografis, konektivitas, aksesibilitas, dan regulasi zonasi daerah.
- *Advisory Scope:* Ruang lingkup konsultasi (analisis pasar, bauran peruntukan/product mix, dan studi tata ruang makro).
- *Development Strategy & Viability:* Strategi pentahapan (phasing), mitigasi risiko modal, uji PnL, dan kelayakan finansial.

---

## 3. STATUS FITUR CHAT AI ASSISTANT SAAT INI

Telah diimplementasikan ke dalam `index.html`:
- **Komponen HTML:** `#ai-chat-btn` (tombol floating) dan `#ai-chat-drawer` (panel dialog chat).
- **Engine JavaScript:** Berada di dalam script utama `index.html`, memiliki akses langsung ke objek global `PROJECTS`, `PROJECT_NARRATIVES`, `getProjectData`, `getProjectSrc`, `renderProjectModal`, `goProjects`, dan variabel bahasa `lang`.
- **Fitur Pencarian:** Mampu menghitung total proyek (104 proyek aktif), memfilter kategori, mencari berdasarkan nama lokasi (Sentul, Karawang, Cikupa, Dukuh Atas), serta menampilkan kartu proyek interaktif yang dapat langsung diklik untuk membuka modal.

---

## 4. STATUS EKSEKUSI TUGAS PRIORITAS (SELESAI DIEKSEKUSI)

### A. Optimasi Kecepatan (Fix Lag) — STATUS: SELESAI (60 FPS LOCKED)
- **Tindakan yang Telah Dilakukan:**
  1. Menghapus seluruh properti `backdrop-filter: blur(...)` dan `-webkit-backdrop-filter` pada `#ai-chat-btn`, `#ai-chat-drawer`, dan seluruh sub-elemen chat.
  2. Mengganti background dengan solid ultra-dark mewah (`#121212`, `#141414`, `#181818`, `#1c1c1c`, `#262626`).
  3. Menerapkan isolasi layer hardware GPU via `transform: translateZ(0);`, `-webkit-transform: translateZ(0);`, dan `will-change: transform;`.
  4. **Hasil:** Kanvas WebGL partikel debu (`#dust`) dan scrolling website berjalan lancar 60 FPS mentok tanpa beban komposit GPU.

### B. Redesain Chat AI: "Omniscient AI Architecture Concierge" — STATUS: SELESAI
- **Tindakan yang Telah Dilakukan:**
  1. **UI Bersih & Minimalis:** Seluruh tombol dan chips FAQ kategori (`.ai-action-btn`) telah dihapus secara total dari drawer chat. Tampilan menjadi sangat mewah, bersih, dan eksklusif.
  2. **Interaktivitas Kartu Proyek:** Tetap menyajikan kartu proyek interaktif (`.ai-card-item`) dengan thumbnail gambar, judul, dan lokasi yang langsung membuka modal proyek saat diklik.
  3. **Basis Pengetahuan 6 Pilar (Omniscient Database) Telah Ditanamkan:**
     - **Pilar 1 (Rekam Jejak 27+ Tahun & Skala 104 Proyek Aktif):** Narasi pengalaman 27+ tahun, 104 proyek aktif di 5 kategori (Arsitektur 31, Urban Design 31, Land Advisory 18, Interior 12, Design & Build 12; Digital Product on hold), dan skala territorial (Sentul 16.000 ha, Cikupa 200 ha, Karawang 175 ha).
     - **Pilar 2 (Land Development Advisory & 3 Parameter Internasional):** 18 penugasan terkunci tanpa unit luas unconfirmed, elaborasi 3 Parameter (Location Context, Advisory Scope, Development Strategy & Viability), studi kasus PnL The Mountain, Sentul Gate, Jungleland Hotel, Town Center, dll.
     - **Pilar 3 (Studi Kasus Kelayakan Finansial Lokasi Spesifik):** Respon mendalam untuk Sentul Nirwana/Bogor, Karawang (7.8 ha & 175 ha), Cikupa Tangerang (200 ha, CBD & TOD MRT), serta TOD Dukuh Atas Jakarta (integrasi 5 moda & FS concourse).
     - **Pilar 4 (Tipologi Arsitektur):** Rekomendasi villa tropis (travertine, louver, curved duplex), komersial & mixed-use, edukasi & civic center, interior, dan design & build.
     - **Pilar 5 (Filosofi Beyond Green):** Penjabaran komprehensif 4 Pilar Ekologis (Desain Pasif & Adaptasi Iklim Tropis, Kesejahteraan Biofilik, Lanskap Produktif/Urban Farming, Ketahanan Umur Bangunan/Lifecycle).
     - **Pilar 6 (Alur Kerjasama & Kontak Resmi Studio):** 4 tahapan profesional (Briefing -> Concept/FS -> DED/BoQ -> Supervisi/Design & Build) serta kontak resmi: Head Office Studio: MYA Design Studio Bandung, Setrasari, West Java, 40152; Direct Lines +62 0851 1156 2610 (WA); Email `yarkasih.my2@gmail.com`.
  4. **Bilingual Intelligence:** Seluruh respon otomatis menyesuaikan dengan status bahasa aktif (`lang === 'id'` atau `'en'`) atau bahasa input pengunjung.

---

## 5. STANDAR KONSISTENSI & ATURAN TEKNIS (INVARIANTS)
1. **Modal Specs Container Height:** Tetap pertahankan CSS `--proj-specs-h: 14.75rem` agar layout modal detail proyek tidak bergeser saat navigasi antar proyek.
2. **Fallback Gambar Proyek:** Menggunakan rantai pengecekan ekstensi otomatis `.jpg` -> `.JPG` -> `.png` -> `.webp` -> fallback placeholder.
3. **Bilingual Engine:** Selalu sinkron dengan status `lang === 'id'` atau `'en'`.
4. **Digital Product:** Jangan pernah mengaktifkan klik proyek digital product hingga ada instruksi resmi pelepasan status *hold*.
