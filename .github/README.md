<h1 align="center">🎮 EventCore Sistemi</h1>

<p align="center">
  <b>Gelişmiş • Modüler • Vanilla Dostu</b><br>
  Minecraft Event Yönetim Sistemi
</p>

<p align="center">
  <img src="https://img.shields.io/badge/versiyon-2.4.0-green" alt="versiyon">
  <img src="https://img.shields.io/badge/Minecraft-1.21.6%2B-blue" alt="minecraft">
  <img src="https://img.shields.io/badge/pack--format-94-orange" alt="pack format">
</p>

<p align="center">
  <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/">
    🔗 GitHub Repository
  </a>
</p>

<hr>

<h2>📌 Genel Bakış</h2>

<p>
  <b>EventCore</b>, Minecraft 1.21.6+ için tasarlanmış, tek bir merkezden çalışan
  <b>event tetikleme altyapısıdır</b>.<br>
  Tüm işlemler <code>eventcore:trigger</code> fonksiyonu üzerinden yönlendirilir.
</p>

<ul>
  <li>✔ Vanilla uyumlu</li>
  <li>✔ Modüler yapı</li>
  <li>✔ Genişletilebilir mimari</li>
  <li>✔ Okunabilir sözdizimi</li>
  <li>✔ Tek çağrıda çoklu eylem desteği (<code>events:[]</code>)</li>
  <li>✔ Gecikmeli yürütme (<code>config:{delay:N}</code>)</li>
  <li>✔ Ayarlanabilir config sistemi</li>
</ul>

<hr>

<h2>📋 İçindekiler</h2>

<table>
  <tr><td>📖 <a href="#hakkında">Hakkında</a></td></tr>
  <tr><td>✨ <a href="#özellikler">Özellikler</a></td></tr>
  <tr><td>⚙️ <a href="#kurulum">Kurulum</a></td></tr>
  <tr><td>🚀 <a href="#hızlı-başlangıç">Hızlı Başlangıç</a></td></tr>
  <tr><td>🧠 <a href="#trigger-sözdizimi">Trigger Sözdizimi</a></td></tr>
  <tr><td>⚙️ <a href="#config-sistemi">Config Sistemi</a></td></tr>
  <tr><td>🧪 <a href="#örnekler">Örnekler</a></td></tr>
  <tr><td>📂 <a href="#proje-yapısı">Proje Yapısı</a></td></tr>
  <tr><td>🤝 <a href="#katkıda-bulunma">Katkıda Bulunma</a></td></tr>
  <tr><td>📜 <a href="#lisans">Lisans</a></td></tr>
</table>

<hr>

<h2 id="hakkında">Hakkında</h2>

<p><b>EventCore</b>, aşağıdaki sistemleri kapsayan birleşik bir event çekirdeğidir:</p>

<ul>
  <li>message (broadcast, whisper, msg, title, subtitle, actionbar, title_times, title_clear, title_reset)</li>
  <li>sound (playsound, particle)</li>
  <li>player (tp, gamemode, kick, freeze, attribute)</li>
  <li>effect (effect_add, effect_clear, heal)</li>
  <li>item (give, give_raw, clear, enchant)</li>
  <li>xp</li>
  <li>score (score_set, score_add, score_remove, score_reset, score_obj_add, score_obj_remove)</li>
  <li>bossbar (bossbar_new, bossbar_set, bossbar_del)</li>
  <li>entity (summon, remove, data_merge, modify)</li>
  <li>waypoint (waypoint_create, waypoint_tp, waypoint_delete,waypoint_get)</li>
  <li>timer (delay, repeat, stop)</li>
  <li>cmd / cmds (ham komut çalıştırma)</li>
  <li>func / funcs (fonksiyon çağırma)</li>
  <li>config (config_set, config_set_str, config_get, config_reset, config_list)</li>
</ul>

<hr>

<h2 id="özellikler">Özellikler</h2>

<table>
  <tr><th>Sistem</th><th>Açıklama</th></tr>
  <tr><td>📢 Message</td><td>Broadcast, whisper, msg, title, subtitle, actionbar ve title kontrolleri</td></tr>
  <tr><td>🔊 Sound</td><td>Playsound ve partikül desteği</td></tr>
  <tr><td>👤 Player</td><td>Teleport, gamemode, kick, dondurma, attribute</td></tr>
  <tr><td>✨ Effect</td><td>Efekt ekleme, temizleme ve anlık iyileştirme</td></tr>
  <tr><td>🎒 Items</td><td>Give / clear / enchant — 1.21+ bileşen sistemi desteği</td></tr>
  <tr><td>✨ XP</td><td>XP puan ve seviye yönetimi</td></tr>
  <tr><td>📊 Score</td><td>Scoreboard oyuncu ve objective yönetimi</td></tr>
  <tr><td>🩸 Bossbar</td><td>Oluşturma / güncelleme / kaldırma</td></tr>
  <tr><td>👹 Entity</td><td>Spawn / kill / data merge / modify</td></tr>
  <tr><td>📍 Waypoint</td><td>Waypoint oluşturma, ışınlanma, silme</td></tr>
  <tr><td>⏱ Timer</td><td>Gecikmeli, tekrarlayan ve durdurulabilir zamanlayıcılar</td></tr>
  <tr><td>⌨️ Cmd / Cmds</td><td>Tekil veya çoklu ham komut çalıştırma (güvenlik filtreli)</td></tr>
  <tr><td>🔁 Func / Funcs</td><td>Tekil veya çoklu fonksiyon çağırma</td></tr>
  <tr><td>⚙️ Config</td><td>Ayarlanabilir sistem değişkenleri, yeniden yükleme sonrası kalıcı</td></tr>
</table>

<hr>

<h2 id="kurulum">Kurulum</h2>

<details>
  <summary><b>📦 Gereksinimler</b></summary>
  <ul>
    <li>Minecraft Java Edition 1.21.6+</li>
    <li>Pack Format 94</li>
  </ul>
</details>

<details>
  <summary><b>🛠 Kurulum Adımları</b></summary>
  <ol>
    <li>ZIP dosyasını <code>world/datapacks/</code> klasörüne çıkart</li>
    <li><code>/reload</code> komutunu çalıştır</li>
    <li>Yükleme onayı için sohbette <code>[EventCore] v2.2.0 yüklendi.</code> mesajını gör</li>
  </ol>
</details>

<hr>

<h2 id="hızlı-başlangıç">🚀 Hızlı Başlangıç</h2>

<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"EventCore aktif!"}},events:[],config:{}}
</code></pre>

<hr>

<h2 id="trigger-sözdizimi">🧠 Trigger Sözdizimi</h2>

<p>
  <code>eventcore:trigger</code> üç macro parametresi alır.
  Üçü de her zaman belirtilmelidir — boş geçilebilir ama atlanamaz.
</p>

<pre><code>
function eventcore:trigger {
  args:{type:"...",data:{...}},
  events:[{type:"...",data:{...}}, ...],
  config:{...}
}
</code></pre>

<h3>args:{}</h3>
<p>Tekil bir eylem çalıştırır. Boş bırakılabilir: <code>args:{}</code></p>

<h3>events:[]</h3>
<p>Birden fazla eylemi sırayla çalıştırır. Boş bırakılabilir: <code>events:[]</code></p>

<h3>config:{}</h3>
<table>
  <tr><th>Alan</th><th>Tür</th><th>Açıklama</th></tr>
  <tr><td><code>delay:N</code></td><td>int</td><td>N tick sonra çalıştır</td></tr>
  <tr><td><code>version_check:0b</code></td><td>bool</td><td>Sürüm kontrolünü devre dışı bırak (varsayılan: 1b)</td></tr>
  <tr><td><code>as:"@a"</code></td><td>string</td><td>execute as bağlamı</td></tr>
  <tr><td><code>at:"@s"</code></td><td>string</td><td>execute at bağlamı</td></tr>
  <tr><td><code>silent:1b</code></td><td>bool</td><td>Hata mesajlarını bastır</td></tr>
</table>

<hr>

<h2 id="config-sistemi">⚙️ Config Sistemi</h2>

<p>
  Config değerleri <code>eventcore:config</code> storage'ında tutulur.
  <code>/reload</code> sonrası otomatik yüklenir — mevcut değerlerin üstüne yazılmaz.
</p>

<table>
  <tr><th>Anahtar</th><th>Varsayılan</th><th>Açıklama</th></tr>
  <tr><td><code>debug.sound</code></td><td><code>1b</code></td><td>Trigger sonrası level-up sesi</td></tr>
  <tr><td><code>errors.show</code></td><td><code>1b</code></td><td>Hata mesajlarını göster</td></tr>
  <tr><td><code>cmd.security</code></td><td><code>1b</code></td><td>OP/ban/kick komut filtresi</td></tr>
  <tr><td><code>broadcast.prefix</code></td><td><code>"[DUYURU]"</code></td><td>Broadcast ön eki</td></tr>
  <tr><td><code>broadcast.prefix_color</code></td><td><code>"gold"</code></td><td>Ön ek rengi</td></tr>
  <tr><td><code>broadcast.msg_color</code></td><td><code>"yellow"</code></td><td>Mesaj rengi</td></tr>
  <tr><td><code>on_load.enabled</code></td><td><code>0b</code></td><td>Yükleme sonrası fonksiyon çalıştır</td></tr>
  <tr><td><code>on_load.ns</code></td><td><code>"eventcore"</code></td><td>Yükleme fonksiyonu namespace'i</td></tr>
  <tr><td><code>on_load.path</code></td><td><code>"version/announce"</code></td><td>Yükleme fonksiyonu yolu</td></tr>
</table>

<h3>Config Kullanımı</h3>

<pre><code>
# Tüm değerleri listele
function eventcore:trigger {args:{type:"config_list"},events:[],config:{}}

# Değer oku
function eventcore:trigger {args:{type:"config_get",data:{key:"broadcast.prefix"}},events:[],config:{}}

# Bool/int değer yaz
function eventcore:trigger {args:{type:"config_set",data:{key:"debug.sound",value:0b}},events:[],config:{}}

# String değer yaz
function eventcore:trigger {args:{type:"config_set_str",data:{key:"broadcast.prefix",value:"[OLAY]"}},events:[],config:{}}

# Varsayılanlara sıfırla
function eventcore:trigger {args:{type:"config_reset"},events:[],config:{}}
</code></pre>

<hr>

<h2 id="örnekler">🧪 Örnekler</h2>

<h3>📢 Tekil Eylem — Broadcast</h3>
<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"Sunucu başlıyor!"}},events:[],config:{}}
</code></pre>

<h3>📋 Çoklu Eylem — events:[]</h3>
<pre><code>
function eventcore:trigger {args:{},events:[{type:"broadcast",data:{msg:"Etkinlik başladı!"}},{type:"title",data:{target:"@a",text:"BAŞLADI",color:"gold"}},{type:"playsound",data:{sound:"minecraft:entity.player.levelup",source:"master",target:"@a"}}],config:{}}
</code></pre>

<h3>⏱ Gecikmeli Yürütme</h3>
<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"5 saniye sonra!"}},events:[],config:{delay:100}}
</code></pre>

<h3>👤 Bağlamlı Yürütme — as + at</h3>
<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"Tüm oyuncular!"}},events:[],config:{as:"@a",at:"@s"}}
</code></pre>

<h3>📊 Scoreboard</h3>
<pre><code>
function eventcore:trigger {args:{type:"score_obj_add",data:{obj:"coins",type:"dummy"}},events:[],config:{}}
function eventcore:trigger {args:{type:"score_add",data:{target:"@s",obj:"coins",val:10}},events:[],config:{}}
</code></pre>

<h3>⌨️ Çoklu Komut</h3>
<pre><code>
function eventcore:trigger {args:{type:"cmds",data:{commands:["title @s title {\"text\":\"A\"}","title @s subtitle {\"text\":\"B\"}"]}},events:[],config:{}}
</code></pre>

<h3>🔕 Sürüm Kontrolü Devre Dışı</h3>
<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"test"}},events:[],config:{version_check:0b}}
</code></pre>

<hr>

<h2 id="proje-yapısı">📂 Proje Yapısı</h2>

<pre><code>
eventcore/
├── pack.mcmeta
└── data/eventcore/function/
    ├── trigger.mcfunction          ← Ana giriş noktası
    ├── multi.mcfunction            ← Sadece events:[] girişi
    ├── trigger/
    │   ├── run_core.mcfunction
    │   ├── run_as.mcfunction
    │   ├── run_at.mcfunction
    │   ├── run_as_at.mcfunction
    │   ├── defer.mcfunction
    │   ├── schedule_delay.mcfunction
    │   └── run_pending.mcfunction
    ├── internal/
    │   └── dispatch.mcfunction     ← Ortak eylem yönlendirici
    ├── events/
    │   ├── process.mcfunction
    │   └── exec.mcfunction
    ├── config/
    │   ├── load.mcfunction
    │   ├── list.mcfunction
    │   ├── get.mcfunction
    │   ├── set.mcfunction
    │   ├── set_str.mcfunction
    │   ├── reset.mcfunction
    │   └── run_on_load.mcfunction
    ├── version/
    │   └── announce.mcfunction
    ├── messages/
    ├── sound/
    ├── player/
    ├── effect/
    ├── item/
    ├── xp/
    ├── score/
    ├── bossbar/
    ├── entity/
    ├── waypoint/
    ├── timer/
    └── command/
</code></pre>

<hr>

<h2 id="katkıda-bulunma">🤝 Katkıda Bulunma</h2>

<p>
  🔗 <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/">
  https://github.com/asn44nb/EventCoreSystem-Datapack/
  </a>
</p>

<ul>
  <li>Fork</li>
  <li>Branch aç</li>
  <li>Commit</li>
  <li>PR gönder</li>
</ul>

<hr>

<h2 id="lisans">📜 Lisans</h2>

<p>MIT License © 2025 Legends11</p>

<hr>

<h2>Destek</h2>

<ul>
  <li>Issues: <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/issues">GitHub Issues</a></li>
  <li>Repo: <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/">GitHub Repository</a></li>
</ul>

<p align="center">
  <b>EventCore — kontrol sende.</b>
</p>