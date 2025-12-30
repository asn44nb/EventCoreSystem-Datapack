<h1 align="center">🎮 EventCore Sistemi</h1>

<p align="center">
  <b>Gelişmiş • Modüler • Vanilla Dostu</b><br>
  Minecraft Event Yönetim Sistemi
</p>

<p align="center">
  <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/">
    🔗 GitHub Repository
  </a>
</p>

<hr>

<h2>📌 Genel Bakış</h2>

<p>
  <b>EventCore</b>, Minecraft 1.21+ için tasarlanmış, tek bir merkezden çalışan
  <b>event tetikleme altyapısıdır</b>.<br>
  Tüm işlemler <code>eventcore:trigger</code> fonksiyonu üzerinden yönlendirilir.
</p>

<ul>
  <li>✔ Vanilla uyumlu</li>
  <li>✔ Modüler yapı</li>
  <li>✔ Genişletilebilir mimari</li>
  <li>✔ Okunabilir syntax</li>
</ul>

<hr>

<h2>📋 İçindekiler</h2>

<table>
  <tr><td>📖 <a href="#hakkında">Hakkında</a></td></tr>
  <tr><td>✨ <a href="#özellikler">Özellikler</a></td></tr>
  <tr><td>⚙️ <a href="#kurulum">Kurulum</a></td></tr>
  <tr><td>🚀 <a href="#hızlı-başlangıç">Hızlı Başlangıç</a></td></tr>
  <tr><td>🧠 <a href="#komut-kategorileri">Komut Kategorileri</a></td></tr>
  <tr><td>🧪 <a href="#örnekler">Örnekler</a></td></tr>
  <tr><td>📂 <a href="#proje-yapısı">Proje Yapısı</a></td></tr>
  <tr><td>🤝 <a href="#katkıda-bulunma">Katkıda Bulunma</a></td></tr>
  <tr><td>📜 <a href="#lisans">Lisans</a></td></tr>
</table>

<hr>

<h2 id="hakkında">Hakkında</h2>

<p><b>EventCore</b>, aşağıdaki sistemleri kapsayan birleşik bir event çekirdeğidir:</p>

<ul>
  <li>message (broadcast, whisper, title, actionbar)</li>
  <li>sound (playsound)</li>
  <li>player (tp, gamemode, kick)</li>
  <li>items (give, clear)</li>
  <li>xp</li>
  <li>score</li>
  <li>bossbar</li>
  <li>entity</li>
  <li>cmd (ham komut çalıştırma)</li>
  <li>func (başka bir fonksiyonu çağırma)</li>
</ul>

<hr>

<h2 id="özellikler">Özellikler</h2>

<table>
  <tr><th>Sistem</th><th>Açıklama</th></tr>
  <tr><td>📢 Message</td><td>Broadcast, whisper, title, actionbar</td></tr>
  <tr><td>🔊 Sound</td><td>Playsound</td></tr>
  <tr><td>👤 Player</td><td>Teleport, gamemode, kick</td></tr>
  <tr><td>🎒 Items</td><td>Give / clear / bileşen (component) desteği</td></tr>
  <tr><td>✨ XP</td><td>XP / seviye</td></tr>
  <tr><td>📊 Score</td><td>Set / add / remove</td></tr>
  <tr><td>🩸 Bossbar</td><td>Oluşturma / güncelleme / kaldırma</td></tr>
  <tr><td>👹 Entity</td><td>Spawn / kill</td></tr>
  <tr><td>⌨️ Cmd</td><td><code>type:"cmd"</code> ile ham Minecraft komutları</td></tr>
  <tr><td>🔁 Func</td><td><code>type:"func"</code> ile fonksiyon çağırma</td></tr>
</table>

<hr>

<h2 id="kurulum">Kurulum</h2>

<details>
  <summary><b>📦 Gereksinimler</b></summary>
  <ul>
    <li>Minecraft Java 1.21+</li>
    <li>Pack Format 48+</li>
  </ul>
</details>

<details>
  <summary><b>🛠 Kurulum Adımları</b></summary>
  <ol>
    <li><code>world/datapacks/eventcore/</code> klasörüne yerleştir</li>
    <li><code>/reload</code></li>
    <li>Test et</li>
  </ol>
</details>

<hr>

<h2 id="hızlı-başlangıç">🚀 Hızlı Başlangıç</h2>

<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"EventCore aktif!"}}}
</code></pre>

<hr>

<h2 id="komut-kategorileri">🧠 Komut Kategorileri</h2>

<pre><code>
message  → broadcast / whisper / title / actionbar
sound    → playsound
player   → tp / gamemode / kick
items    → give / clear (1.21+ bileşen sistemi)
xp       → xp / levels
score    → set / add / remove
bossbar  → create / update / remove
entity   → spawn / kill
cmd      → ham komut çalıştırma (data.command)
func     → fonksiyon çağırma (data.command)
</code></pre>

<hr>

<h2 id="örnekler">🧪 Örnekler</h2>

<h3>📢 Broadcast</h3>
<pre><code>
function eventcore:trigger {args:{type:"broadcast",data:{msg:"Sunucu başlıyor!"}}}
</code></pre>

<h3>🔊 Sound</h3>
<pre><code>
function eventcore:trigger {args:{type:"playsound",data:{sound:"entity.player.levelup",target:"@a"}}}
</code></pre>

<h3>👤 Teleport</h3>
<pre><code>
function eventcore:trigger {args:{type:"tp",data:{target:"@p",x:0,y:80,z:0}}}
</code></pre>

<h3>🎒 Item (Bileşen Sistemi – 1.21+)</h3>
<p>
Minecraft 1.21 ve sonrası sürümlerde <b>give</b> komutlarında klasik NBT yerine
<b>item components (bileşenler)</b> kullanılır.
</p>
<pre><code>
function eventcore:trigger {  args:{    type:"give",    data:{      target:"@p",      item:"minecraft:diamond_sword",      count:1,      nbt:'[minecraft:enchantments={"minecraft:sharpness":5}]'}}}
</code></pre>

<h3>📊 Score</h3>
<pre><code>
function eventcore:trigger {args:{type:"score_add",data:{target:"@p",obj:"coins",val:10}}}
</code></pre>

<h3>🩸 Bossbar</h3>
<pre><code>
function eventcore:trigger {args:{type:"bossbar_create",data:{id:"event:timer",name:"Etkinlik",max:300,color:"red"}}}
</code></pre>

<h3>👹 Entity</h3>
<pre><code>
function eventcore:trigger {args:{type:"spawn",data:{entity:"minecraft:zombie",x:0,y:64,z:0,count:1}}}
</code></pre>

<h3>⌨️ CMD — Ham Komut Çalıştırma</h3>
<pre><code>
function eventcore:trigger {args:{type:"cmd", data:{command:"say Merhaba Dünya"}}}
</code></pre>

<h3>🔁 FUNC — Fonksiyon Çağırma</h3>
<pre><code>
function eventcore:trigger {args:{type:"func", data:{command:"eventcore:subfunctions/start_round"}}}
</code></pre>

<hr>

<h2 id="proje-yapısı">📂 Proje Yapısı</h2>

<pre><code>
eventcore/
├── pack.mcmeta
└── data/eventcore/function/
    ├── trigger.mcfunction
    ├── message/
    ├── sound/
    ├── player/
    ├── items/
    ├── xp/
    ├── score/
    ├── bossbar/
    ├── entity/
    └── subfunctions/
        └── start_round.mcfunction
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

<p>MIT License © 2024 EventCore</p>

<hr>

<h2>Destek</h2>

<ul>
  <li>Issues: <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/issues">GitHub Issues</a></li>
  <li>Repo: <a href="https://github.com/asn44nb/EventCoreSystem-Datapack/">GitHub Repository</a></li>
</ul>

<p align="center">
  <b>EventCore — kontrol sende.</b>
</p>
