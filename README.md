# MDRG Custom Scenes Pack / Набор кастомных сцен

> **Created by / Создано:** Paul.Epifancev #warlockforbugs  
> Discord: anon.jun  
> GitHub: https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes

---

## ⚠️ IMPORTANT LICENSING WARNING / ВАЖНОЕ ПРЕДУПРЕЖДЕНИЕ О ЛИЦЕНЗИИ ⚠️

**[EN]** This mod is and will **ALWAYS be 100% FREE and OPEN SOURCE**.  
I do not have a Patreon, Ko-fi, or any paid subscriptions.

Any version of this mod, or its source code, found behind a paywall, subscription service, or sold by third parties is an **unauthorized redistribution** of this open-source project.

Please do not support unauthorized monetization of community work. For your safety and to support the project, download **ONLY** from this official GitHub repository.

**[RU]** Этот мод есть и всегда будет **НАВСЕГДА БЕСПЛАТНЫМ и с ОТКРЫТЫМ ИСХОДНЫМ КОДОМ**.  
У меня нет Patreon, Ko-fi или платных подписок.

Любая версия этого мода или его исходного кода, находящаяся за платным доступом или продаваемая третьими лицами, является **несанкционированным распространением** этого Open Source проекта.

Пожалуйста, не поддерживайте несанкционированную монетизацию труда комьюнити. Для вашей безопасности скачивайте мод **ТОЛЬКО** из этого официального репозитория GitHub.

---

## 🎥 VIDEO DEMONSTRATION / ВИДЕО-ДЕМОНСТРАЦИЯ

<div align="center">
  <a href="https://www.youtube.com/watch?v=XEkRD-sylpk" target="_blank">
    <img src="https://img.youtube.com/vi/XEkRD-sylpk/maxresdefault.jpg" alt="MDRG Custom Scenes Video Preview" width="600">
  </a>
  <br>
  <sub>🎬 <a href="https://www.youtube.com/watch?v=XEkRD-sylpk" target="_blank">Watch on YouTube / Смотреть на YouTube</a></sub>
</div>

<br>

---

## 📋 OVERVIEW / ОБЗОР

**[EN]** **MDRG Custom Scenes Pack** is a native Lua mod that enables custom texture overrides for specific, isolated game scenes. It uses the game's native `TextureOverriderManager` API, requiring **no MelonLoader** and working seamlessly on both **PC and Android**.

This release contains **4 fully functional scenes** and **1 experimental test scene** (Lady Annalie's Clothier Shop) for advanced users.

*Note: This archive also contains a nested archive named `Custom Annalie TEST SHOP.zip` with all necessary assets and debug reports for the experimental Clothier Shop scene.*

**[RU]** **MDRG Custom Scenes Pack** — это нативный Lua-мод, который позволяет заменять текстуры в определённых изолированных сценах игры. Он использует нативный API игры `TextureOverriderManager`, **не требует MelonLoader** и работает как на **ПК, так и на Android**.

Этот релиз содержит **4 полностью рабочие сцены** и **1 экспериментальную тестовую сцену** (магазин одежды Lady Annalie) для продвинутых пользователей.

*Примечание: В этом архиве также находится вложенный архив `Custom Annalie TEST SHOP.zip` со всеми необходимыми ассетами и отладочными отчётами для экспериментальной сцены магазина одежды.*

---

## 🎮 INCLUDED SCENES / ВКЛЮЧЁННЫЕ СЦЕНЫ

### 1. 👗 Lady Annalie's Fitting Room (Stable) / Примерочная Lady Annalie (Стабильная)

**[EN]** 
- **Manager ID:** `""` (Empty ID)
- **Textures Used:** `AnnalieChangingRoom.png`
- **Purpose:** Replaces the default fitting room backdrop inside the Clothier Shop with a custom texture. Works perfectly without visual artifacts.
- *(Original textures are included inside the archive).*

**[RU]** 
- **ID менеджера:** `""` (пустой ID)
- **Используемые текстуры:** `AnnalieChangingRoom.png`
- **Назначение:** Заменяет стандартный фон примерочной внутри магазина одежды на кастомную текстуру. Работает идеально, без визуальных артефактов.
- *(Оригинальные текстуры включены в архив).*

---

### 2. 🛒 Melissa's Grocery Shop (Stable) / Продуктовый магазин Melissa (Стабильная)

**[EN]** 
- **Manager ID:** `"Shop"`
- **Textures Used:** `shop.png`, `cashier_counter.png`
- **Purpose:** Overrides the main shop background and the cashier counter foreground for a complete visual overhaul of the grocery store.
- *(Original textures are included inside the archive).*

**[RU]** 
- **ID менеджера:** `"Shop"`
- **Используемые текстуры:** `shop.png`, `cashier_counter.png`
- **Назначение:** Заменяет основной фон магазина и передний план прилавка кассира для полного визуального обновления продуктового магазина.
- *(Оригинальные текстуры включены в архив).*

---

### 3. 🛏️ Custom Missionary Scene (Stable) / Кастомная миссионерская сцена (Стабильная)

**[EN]** 
- **Manager ID:** `"room_missionary"`
- **Textures Used:** `room_couch_missionary.png`, `MissionaryLight.png`
- **Purpose:** 
  - **New Background:** Replaces the standard background with a custom picture (`room_couch_missionary.png`).
  - **Daylight Effect:** Includes a transparent image (`MissionaryLight.png`) that removes the dark shadow and creates a bright, clear daylight effect. You can easily edit this file in any photo editor to add a warm tint or neon glow.
  - *(Original textures are included inside the archive).*

**[RU]** 
- **ID менеджера:** `"room_missionary"`
- **Используемые текстуры:** `room_couch_missionary.png`, `MissionaryLight.png`
- **Назначение:** 
  - **Новый фон:** Заменяет стандартный фон на кастомную картинку (`room_couch_missionary.png`).
  - **Эффект дневного света:** Включает прозрачное изображение (`MissionaryLight.png`), которое убирает тёмную тень и создаёт яркий, чистый эффект дневного света. Вы можете легко отредактировать этот файл в любом графическом редакторе, добавив тёплый оттенок или неоновое свечение.
  - *(Оригинальные текстуры включены в архив).*

---

### 4. 🚿 Shower Scene (Stable Workaround + Experimental Script) / Сцена душа (Стабильное решение + экспериментальный скрипт)

**[EN]** 
- **Manager ID:** `"shower"`
- **Purpose:** Modifies the shower environment. Due to a known engine-level texture offset bug, the main background texture is intentionally left **original** in the stable version to prevent visual breakage.

**How it works (Version 2 — Active / Stable):**  
This version targets exactly **3 nodes**, replacing them with completely transparent PNGs to cleanly hide or modify specific environmental elements without triggering the offset bug:
- `/Foreground/Shower Foreground` *(Replaced with transparent)*
- `/Center/Shower Wall` *(Replaced with transparent)*
- `/Back/Shower Back Props` *(Replaced with transparent)*

**The main background (`/Back/Shower Back`) remains vanilla** in V2 because injecting a custom texture into this node triggers a severe pixel offset bug at the engine level.

**For Mod Developers:** This archive intentionally includes **BOTH script versions** (V2 stable and V1 experimental) for other modders to study, reverse-engineer, and test:

| Version / Версия | Nodes Targeted / Целевые ноды | Behavior / Поведение |
|---------|----------------|----------|
| **V2 (Stable / Стабильная)** | 3 nodes / 3 ноды: `/Foreground/Shower Foreground`, `/Center/Shower Wall`, `/Back/Shower Back Props` | Background remains vanilla, transparent overlays on 3 safe nodes / Фон остаётся оригинальным, прозрачные наложения на 3 безопасных нодах |
| **V1 (Experimental / Экспериментальная)** | 4 nodes / 4 ноды: adds `/Back/Shower Back` / добавляет `/Back/Shower Back` | Attempts full override — demonstrates the texture offset bug in action / Пытается сделать полную замену — демонстрирует баг смещения текстур в действии |

**Assets:** All original vanilla textures for these nodes are included inside the archive for reference and restoration.

**[RU]** 
- **ID менеджера:** `"shower"`
- **Назначение:** Модифицирует окружение сцены душа. Из-за известного бага смещения текстур на уровне движка, основная фоновая текстура намеренно оставлена **оригинальной** в стабильной версии, чтобы избежать визуальных поломок.

**Как это работает (Версия 2 — Активная / Стабильная):**  
Эта версия нацелена ровно на **3 ноды**, заменяя их полностью прозрачными PNG-файлами, чтобы чисто скрыть или модифицировать определённые элементы окружения, не вызывая бага смещения:
- `/Foreground/Shower Foreground` *(Заменено на прозрачное)*
- `/Center/Shower Wall` *(Заменено на прозрачное)*
- `/Back/Shower Back Props` *(Заменено на прозрачное)*

**Основной фон (`/Back/Shower Back`) остаётся ванильным** в V2, потому что инъекция кастомной текстуры в эту ноду вызывает сильный баг смещения пикселей на уровне движка.

**Для разработчиков модов:** В этом архиве намеренно находятся **ОБЕ версии скриптов** (V2 стабильная и V1 экспериментальная), чтобы другие моддеры могли их изучать, реверс-инжинирить и тестировать:

| Версия | Целевые ноды | Поведение |
|---------|----------------|----------|
| **V2 (Стабильная)** | 3 ноды: `/Foreground/Shower Foreground`, `/Center/Shower Wall`, `/Back/Shower Back Props` | Фон остаётся оригинальным, прозрачные наложения на 3 безопасных нодах |
| **V1 (Экспериментальная)** | 4 ноды: добавляет `/Back/Shower Back` | Пытается сделать полную замену — демонстрирует баг смещения текстур в действии |

**Ассеты:** Все оригинальные ванильные текстуры для этих нод включены в архив для справки и восстановления.

---

## 🔴 EXPERIMENTAL: Lady Annalie's Clothier Shop (Main Shop) / ЭКСПЕРИМЕНТАЛЬНО: Магазин одежды Lady Annalie (Основной магазин)

⚠️ **FOR TESTING PURPOSES ONLY / ТОЛЬКО ДЛЯ ТЕСТИРОВАНИЯ**

**[EN]** 
- **Manager ID:** `"Clothier"`
- **Included Files:** This mod archive contains a nested archive named `Custom Annalie TEST SHOP.zip` with all necessary assets and debug reports for this scene.
- **Purpose:** Attempts to override the main shop background, blink, decorations, and foreground.
- ⚠️ **Note:** This scene is provided **strictly for testing and reverse-engineering**. It suffers from a severe texture offset bug due to engine limitations (see "Known Issues" below). Do not use this for permanent gameplay.

**[RU]** 
- **ID менеджера:** `"Clothier"`
- **Включённые файлы:** В архиве мода находится вложенный архив `Custom Annalie TEST SHOP.zip` со всеми необходимыми ассетами и отладочными отчётами для этой сцены.
- **Назначение:** Пытается заменить основной фон магазина, blink, декорации и передний план.
- ⚠️ **Примечание:** Эта сцена предоставлена **исключительно для тестирования и реверс-инжиниринга**. Она страдает от серьёзного бага смещения текстур из-за ограничений движка (см. "Известные проблемы" ниже). Не используйте её для постоянной игры.

---

## 🔴 KNOWN ISSUES / ИЗВЕСТНЫЕ ПРОБЛЕМЫ

### Texture Offset in Shower & Clothier Shop Scenes (UNRESOLVED) / Смещение текстур в сцене душа и магазине одежды (НЕ РЕШЕНО)

**[EN]** 
**Affected Scenes:** `/Views/Shower Scene` (Manager: "shower") and `/Views/Clothier Scene` (Manager: "Clothier").  

**Problem:**  
When injecting custom PNGs into these specific scenes, textures may appear shifted relative to their original position (usually by several pixels vertically), or scaled slightly larger/smaller than expected.

**Root Cause:**  
This is caused by a **PPU (Pixels Per Unit) and Pivot mismatch** between the original game sprites and the runtime-injected sprites. The game uses non-standard PPU values. Even with correct PPU values extracted from game dumps, the native Unity runtime pipeline does not apply them correctly during Lua sprite creation.

**Current Status:**  
⚠️ **UNRESOLVED.** I have not yet found a solution to this problem through the native Lua API. 

**Workaround:**  
- **For the Shower Scene:** The stable V2 script intentionally skips the main background node (`/Back/Shower Back`) and only applies transparent overrides to 3 safe nodes (`Foreground`, `Wall`, `Props`). The experimental V1 script is provided *strictly for modders* to observe how the 4th node behaves when the offset bug is triggered.
- **For the Clothier Shop:** The scene is locked to the `TEST SHOP` archive for experimental use only. 
- **Community Help Needed:** If you know how to properly extract and apply PPU/pivot values for runtime sprite creation in MoonSharp/Lua, please reach out via Discord or open an issue on GitHub.

**[RU]** 
**Затронутые сцены:** `/Views/Shower Scene` (менеджер: "shower") и `/Views/Clothier Scene` (менеджер: "Clothier").  

**Проблема:**  
При инъекции кастомных PNG в эти конкретные сцены текстуры могут отображаться со смещением относительно их оригинального положения (обычно на несколько пикселей по вертикали) или немного больше/меньше ожидаемого размера.

**Корневая причина:**  
Это вызвано **несоответствием PPU (Pixels Per Unit) и Pivot** между оригинальными спрайтами игры и спрайтами, инжектируемыми в runtime. Игра использует нестандартные значения PPU. Даже при правильных значениях PPU, извлечённых из дампов игры, нативный пайплайн Unity runtime не применяет их корректно при создании спрайтов через Lua.

**Текущий статус:**  
⚠️ **НЕ РЕШЕНО.** Я пока не нашёл решения этой проблемы через нативный Lua API.

**Обходной путь:**  
- **Для сцены душа:** Стабильный скрипт V2 намеренно пропускает ноду основного фона (`/Back/Shower Back`) и применяет прозрачные замены только к 3 безопасным нодам (`Foreground`, `Wall`, `Props`). Экспериментальный скрипт V1 предоставлен *исключительно для моддеров*, чтобы наблюдать, как ведёт себя 4-я нода при срабатывании бага смещения.
- **Для магазина одежды:** Сцена заблокирована в архиве `TEST SHOP` только для экспериментального использования.
- **Нужна помощь комьюнити:** Если вы знаете, как правильно извлекать и применять значения PPU/pivot для создания спрайтов в runtime через MoonSharp/Lua, пожалуйста, свяжитесь через Discord или откройте issue на GitHub.

---

## 🔗 LINKS & SUPPORT / ССЫЛКИ И ПОДДЕРЖКА

**[EN]** 
- 🌐 **Official GitHub (Download Here):**  
  [https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes](https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes)
- 💬 **Discord Support:**  
  [M.D.R.G Modding Lab](https://discord.gg/tnz9ZwhC4h)

**[RU]** 
- 🌐 **Официальный GitHub (Скачать здесь):**  
  [https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes](https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes)
- 💬 **Поддержка в Discord:**  
  [M.D.R.G Modding Lab](https://discord.gg/tnz9ZwhC4h)

---

**[EN]** **Author:** `anon.jun` (Paul.Epifancev)  
**License:** MIT Open Source  

*If you find this mod useful, please consider leaving a "Like" on the forum thread and starring the repository on GitHub. It helps the project grow and stay free.*

**[RU]** **Автор:** `anon.jun` (Paul.Epifancev)  
**Лицензия:** MIT Open Source  

*Если вам полезен этот мод, пожалуйста, поставьте "Нравится" в теме на форуме и добавьте звезду репозиторию на GitHub. Это помогает проекту расти и оставаться бесплатным.*
