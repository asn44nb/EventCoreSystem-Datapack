# 🎮 EventCore System

<div align="center">

![Minecraft](https://img.shields.io/badge/Minecraft-1.21+-green?style=for-the-badge&logo=minecraft)
![Pack Format](https://img.shields.io/badge/Pack%20Format-48-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-1.0.0-red?style=for-the-badge)

**Minecraft için gelişmiş, modüler ve kullanımı kolay event sistemi**

[Özellikler](#-özellikler) • [Kurulum](#-kurulum) • [Dökümanlar](#-dökümanlar) • [Katkıda Bulunma](#-katkıda-bulunma)

</div>

---

## 📋 İçindekiler

- [Hakkında](#-hakkında)
- [Özellikler](#-özellikler)
- [Kurulum](#-kurulum)
- [Hızlı Başlangıç](#-hızlı-başlangıç)
- [Dökümanlar](#-dökümanlar)
- [Örnekler](#-örnekler)
- [Katkıda Bulunma](#-katkıda-bulunma)
- [Lisans](#-lisans)

---

## 🎯 Hakkında

**EventCore**, Minecraft sunucularınız için güçlü bir event yönetim sistemidir. Tek bir komut üzerinden 50+ farklı işlemi gerçekleştirebilir, kompleks event sistemleri kurabilirsiniz.

### 🌟 Neden EventCore?

- ✅ **Tek komut ile her şey** - Tüm işlemler `eventcore:trigger` üzerinden
- ✅ **Modüler yapı** - İstediğiniz modülü kullanın
- ✅ **Kolay sözdizimi** - Anlaşılır ve okunabilir komutlar
- ✅ **Performans odaklı** - Optimize edilmiş datapack yapısı
- ✅ **Kapsamlı** - 50+ farklı komut desteği
- ✅ **Dokümantasyon** - Her komut için detaylı örnekler

---

## ✨ Özellikler

<table>
<tr>
<td width="50%">

### 📢 Mesajlaşma
- Broadcast mesajlar
- Özel mesajlar (whisper)
- Title/Subtitle
- Actionbar mesajları

### 🎵 Ses & Efekt
- Ses çalma
- Parçacık efektleri
- Özel efekt kombinasyonları

### 👤 Oyuncu Yönetimi
- Işınlanma
- Oyun modu değiştirme
- Oyuncu atma (kick)

</td>
<td width="50%">

### ✨ Efekt & Eşya
- Potion efektleri
- Eşya verme/alma
- NBT desteği

### 📊 Skorboard
- Skor yönetimi

</td>
</tr>
</table>

### 🔥 Gelişmiş Özellikler
- ⚙️ **Komut Çalıştırma** - Function ve raw command desteği

---

## 📥 Kurulum

### Gereksinimler
- Minecraft **1.21+**
- Pack Format **48**

### Adımlar

1. **Datapack'i İndirin**
```bash
git clone https://github.com/asn44nb/EventCoreSystem-Datapack.git
```

2. **Dünyaya Ekleyin**
```
world/
└── datapacks/
    └── eventcore/  # Buraya kopyalayın
```

3. **Yeniden Yükleyin**
```mcfunction
/reload
```

4. **Test Edin**
```mcfunction
/function eventcore:trigger {args:{type:"broadcast", data:{msg:"EventCore aktif!"}}}
```

✅ Eğer mesajı görüyorsanız, kurulum başarılı!

---

## 🚀 Hızlı Başlangıç

### Temel Sözdizimi

```mcfunction
function eventcore:trigger {args:{type:"KOMUT_TİPİ", data:{PARAMETRELER}}}
```

### İlk Komutunuz

```mcfunction
# Herkese mesaj gönderin
function eventcore:trigger {args:{type:"broadcast", data:{msg:"Merhaba Dünya!"}}}
```

### Daha Fazla Örnek

```mcfunction
# Oyuncuyu ışınlayın
function eventcore:trigger {args:{type:"tp", data:{target:"@p", x:0, y:100, z:0}}}

# Eşya verin
function eventcore:trigger {args:{type:"give", data:{target:"@p", item:"diamond", count:64}}}

# Efekt verin
function eventcore:trigger {args:{type:"effect_add", data:{target:"@a", effect:"speed", dur:60, amp:2}}}
```

---

## 📚 Dökümanlar

### Komut Kategorileri

<details>
<summary><b>📢 Mesajlaşma Komutları</b></summary>

#### Broadcast
```mcfunction
function eventcore:trigger {args:{type:"broadcast", data:{msg:"Sunucu yeniden başlıyor!"}}}
```

#### Whisper (Özel Mesaj)
```mcfunction
function eventcore:trigger {args:{type:"whisper", data:{target:"@p", msg:"Gizli görev: Ejderhayı yenmelisin"}}}
```

#### Title
```mcfunction
function eventcore:trigger {args:{type:"title", data:{target:"@a", text:"OYUN BAŞLIYOR", color:"gold"}}}
```

#### Actionbar
```mcfunction
function eventcore:trigger {args:{type:"actionbar", data:{target:"@a", text:"Kalan süre: 60 saniye", color:"red"}}}
```

</details>

<details>
<summary><b>🎵 Ses & Efekt Komutları</b></summary>

#### Ses Çalma
```mcfunction
function eventcore:trigger {args:{type:"playsound", data:{sound:"entity.player.levelup", source:"master", target:"@a"}}}
```

#### Parçacık Efekti
```mcfunction
function eventcore:trigger {args:{type:"particle", data:{type:"heart", x:0, y:100, z:0, dx:1, dy:1, dz:1, speed:0.1, count:20}}}
```

</details>

<details>
<summary><b>👤 Oyuncu Yönetimi</b></summary>

#### Işınlanma (Basit)
```mcfunction
function eventcore:trigger {args:{type:"tp", data:{target:"@p", x:0, y:100, z:0}}}
```

#### Işınlanma (Yön ile)
```mcfunction
function eventcore:trigger {args:{type:"tp", data:{target:"@p", x:0, y:100, z:0, yaw:90, pitch:0, rot:true}}}
```

#### Oyun Modu
```mcfunction
function eventcore:trigger {args:{type:"gamemode", data:{mode:"creative", target:"@p"}}}
```

#### Kick
```mcfunction
function eventcore:trigger {args:{type:"kick", data:{target:"@p", reason:"AFK"}}}
```

</details>

<details>
<summary><b>✨ Efekt Komutları</b></summary>

#### Efekt Verme
```mcfunction
function eventcore:trigger {args:{type:"effect_add", data:{target:"@p", effect:"speed", dur:60, amp:1}}}
```

#### Efekt Temizleme (Tümü)
```mcfunction
function eventcore:trigger {args:{type:"effect_clear", data:{target:"@p"}}}
```

#### Efekt Temizleme (Belirli)
```mcfunction
function eventcore:trigger {args:{type:"effect_clear", data:{target:"@p", effect:"poison"}}}
```

</details>

<details>
<summary><b>🎒 Eşya Komutları</b></summary>

#### Basit Eşya Verme
```mcfunction
function eventcore:trigger {args:{type:"give", data:{target:"@p", item:"diamond", count:64}}}
```

#### NBT ile Eşya Verme
```mcfunction
execute as X at @s run function eventcore:trigger {args:{type:"give", data:{target:"@p", item:"diamond_sword", count:1, nbt:'[minecraft:enchantments={"minecraft:sharpness":5}]'}}}
```

#### Eşya Temizleme
```mcfunction
function eventcore:trigger {args:{type:"clear", data:{target:"@p", item:"dirt", count:64}}}
```

</details>

<details>
<summary><b>📊 Skorboard Komutları</b></summary>

#### Skor Ayarlama
```mcfunction
function eventcore:trigger {args:{type:"score_set", data:{target:"@p", obj:"kills", val:100}}}
```

#### Skor Ekleme
```mcfunction
function eventcore:trigger {args:{type:"score_add", data:{target:"@p", obj:"coins", val:50}}}
```

#### Skor Çıkarma
```mcfunction
function eventcore:trigger {args:{type:"score_remove", data:{target:"@p", obj:"health", val:10}}}
```

</details>

[📖 Tam Dokümantasyon](./COMMANDS.md)

---

## 💡 Örnekler

### Event Zincirleri

<details>
<summary><b>🎮 PvP Arena Başlangıcı</b></summary>

```mcfunction
# Oyuncuları ışınla
function eventcore:trigger {args:{type:"tp", data:{target:"@a[tag=pvp]", x:0, y:100, z:0}}}

# Başlangıç mesajı
function eventcore:trigger {args:{type:"title", data:{target:"@a[tag=pvp]", text:"3", color:"red"}}}

# Sayaç sesi
function eventcore:trigger {args:{type:"playsound", data:{sound:"block.note_block.hat", source:"master", target:"@a[tag=pvp]"}}}

# Efekt ver
function eventcore:trigger {args:{type:"effect_add", data:{target:"@a[tag=pvp]", effect:"resistance", dur:10, amp:4}}}

# Kit ver
function eventcore:trigger {args:{type:"give", data:{target:"@a[tag=pvp]", item:"diamond_sword", count:1}}}
```

</details>

<details>
<summary><b>🏆 Kazanan Kutlaması</b></summary>

```mcfunction
# Başlık
function eventcore:trigger {args:{type:"title", data:{target:"@a", text:"🎉 KAZANAN: Steve 🎉", color:"gold"}}}

# Ses
function eventcore:trigger {args:{type:"playsound", data:{sound:"ui.toast.challenge_complete", source:"master", target:"@a"}}}

# Havai fişek efekti
function eventcore:trigger {args:{type:"particle", data:{type:"firework", x:0, y:100, z:0, dx:2, dy:2, dz:2, speed:0.5, count:100}}}

# Ödül
function eventcore:trigger {args:{type:"give", data:{target:"@p[tag=winner]", item:"diamond", count:64}}}
function eventcore:trigger {args:{type:"xp", data:{target:"@p[tag=winner]", amount:10, mode:"levels"}}}
```

</details>

<details>
<summary><b>🐉 Boss Fight Başlatıcı</b></summary>

```mcfunction
# Boss spawn
function eventcore:trigger {args:{type:"summon", data:{entity:"wither", x:0, y:100, z:0, nbt:'{CustomName:"{\\"text\\":\\"Mega Boss\\",\\"color\\":\\"red\\"}",Health:500f}'}}}

# Bossbar oluştur
function eventcore:trigger {args:{type:"bossbar_new", data:{id:"boss_fight", name:"Mega Boss", color:"red", max:500, val:500}}}

# Duyuru
function eventcore:trigger {args:{type:"broadcast", data:{msg:"⚔️ BOSS FIGHT BAŞLADI! ⚔️"}}}

# Efekt ver
function eventcore:trigger {args:{type:"effect_add", data:{target:"@a", effect:"strength", dur:300, amp:1}}}

# Dramatik müzik
function eventcore:trigger {args:{type:"playsound", data:{sound:"music_disc.pigstep", source:"master", target:"@a"}}}
```

</details>

---

## 🏗️ Proje Yapısı

```
eventcore/
├── pack.mcmeta
└── data/
    └── eventcore/
        └── function/
            ├── trigger.mcfunction          # Ana router
            ├── messages/                   # Mesaj komutları
            │   ├── broadcast.mcfunction
            │   ├── whisper.mcfunction
            │   ├── title.mcfunction
            │   └── actionbar.mcfunction
            ├── sound/                      # Ses & efekt
            ├── player/                     # Oyuncu yönetimi
            ├── effect/                     # Potion efektleri
            ├── item/                       # Eşya yönetimi
            ├── score/                      # Skorboard
            └── command/                    # Komut çalıştırıcı
```

---

## 🤝 Katkıda Bulunma

Katkılarınızı bekliyoruz! İşte nasıl katkıda bulunabilirsiniz:

### Pull Request Süreci

1. Projeyi fork'layın
2. Feature branch oluşturun (`git checkout -b feature/YeniOzellik`)
3. Değişikliklerinizi commit edin (`git commit -m 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/YeniOzellik`)
5. Pull Request açın

### Geliştirme Kuralları

- ✅ Her komut için `.mcfunction` dosyası oluşturun
- ✅ Açıklayıcı commit mesajları yazın
- ✅ Değişikliklerinizi test edin
- ✅ Dokümantasyonu güncelleyin

### Bug Bildirimi

Hata bulduysanız [Issue açın](https://github.com/asn44nb/EventCoreSystem-Datapack/issues) ve şunları belirtin:
- Minecraft versiyonu
- Hata açıklaması
- Nasıl tekrarlanır
- Beklenen davranış

---

## 📊 İstatistikler

- **50+** Farklı komut
- **10** Ana kategori
- **Modüler** yapı
- **Kolay** kullanım

---

## 📄 Lisans

Bu proje [MIT Lisansı](LICENSE) altında lisanslanmıştır.

```
MIT License

Copyright (c) 2024 EventCore

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software.
```

---

## 🌟 Yıldızlamayı Unutmayın!

Bu projeyi beğendiyseniz ⭐ vermeyi unutmayın!

---

## 📞 İletişim & Destek

- **GitHub Issues**: [Hata Bildirin veya Öneride Bulunun](https://github.com/asn44nb/EventCoreSystem-Datapack/issues)
- **Wiki**: [Detaylı Dokümantasyon](https://github.com/asn44nb/EventCoreSystem-Datapack/wiki)

---

## 🙏 Teşekkürler

EventCore'u kullanan ve katkıda bulunan herkese teşekkürler! 

**İyi Oyunlar! 🎮**

---

<div align="center">

Made with ❤️ for Minecraft Community

[⬆ Başa Dön](#-eventcore-system)

</div>
