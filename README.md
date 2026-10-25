# MDRG Custom Scenes Pack

> **Created by Paul.Epifancev #warlockforbugs**  
> Discord: anon.jun  
> GitHub: https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes

---

## ⚠️ IMPORTANT LICENSING WARNING ⚠️

This mod is and will **ALWAYS be 100% FREE and OPEN SOURCE**.  
I do not have a Patreon, Ko-fi, or any paid subscriptions.

Any version of this mod, or its source code, found behind a paywall, subscription service, or sold by third parties is an **unauthorized redistribution** of this open-source project.

Please do not support unauthorized monetization of community work. For your safety and to support the project, download **ONLY** from this official GitHub repository.

---

## 🎥 VIDEO DEMONSTRATION

<div align="center">
  <a href="https://www.youtube.com/watch?v=XEkRD-sylpk" target="_blank">
    <img src="https://img.youtube.com/vi/XEkRD-sylpk/maxresdefault.jpg" alt="MDRG Custom Scenes Video Preview" width="600">
  </a>
  <br>
  <sub>🎬 <a href="https://www.youtube.com/watch?v=XEkRD-sylpk" target="_blank">Watch on YouTube / Смотреть на YouTube</a></sub>
</div>

<br>

---

## 📋 OVERVIEW

**MDRG Custom Scenes Pack** is a native Lua mod that enables custom texture overrides for specific, isolated game scenes. It uses the game's native `TextureOverriderManager` API, requiring **no MelonLoader** and working seamlessly on both **PC and Android**.

This release contains **4 fully functional scenes** and **1 experimental test scene** (Lady Annalie's Clothier Shop) for advanced users.

*Note: This archive also contains a nested archive named `Custom Annalie TEST SHOP.zip` with all necessary assets and debug reports for the experimental Clothier Shop scene.*

---

## 🎮 INCLUDED SCENES

### 1. 👗 Lady Annalie's Fitting Room (Stable)
- **Manager ID:** `""` (Empty ID)
- **Textures Used:** `AnnalieChangingRoom.png`
- **Purpose:** Replaces the default fitting room backdrop inside the Clothier Shop with a custom texture. Works perfectly without visual artifacts.
- *(Original textures are included inside the archive).*

### 2. 🛒 Melissa's Grocery Shop (Stable)
- **Manager ID:** `"Shop"`
- **Textures Used:** `shop.png`, `cashier_counter.png`
- **Purpose:** Overrides the main shop background and the cashier counter foreground for a complete visual overhaul of the grocery store.
- *(Original textures are included inside the archive).*

### 3. 🛏️ Custom Missionary Scene (Stable)
- **Manager ID:** `"room_missionary"`
- **Textures Used:** `room_couch_missionary.png`, `MissionaryLight.png`
- **Purpose:** 
  - **New Background:** Replaces the standard background with a custom picture (`room_couch_missionary.png`).
  - **Daylight Effect:** Includes a transparent image (`MissionaryLight.png`) that removes the dark shadow and creates a bright, clear daylight effect. You can easily edit this file in any photo editor to add a warm tint or neon glow.
  - *(Original textures are included inside the archive).*

### 4. 🚿 Shower Scene (Stable Workaround + Experimental Script)
- **Manager ID:** `"shower"`
- **Purpose:** Modifies the shower environment. Due to a known engine-level texture offset bug, the main background texture is intentionally left **original** in the stable version to prevent visual breakage.

**How it works (Version 2 — Active / Stable):**  
This version targets exactly **3 nodes**, replacing them with completely transparent PNGs to cleanly hide or modify specific environmental elements without triggering the offset bug:
- `/Foreground/Shower Foreground` *(Replaced with transparent)*
- `/Center/Shower Wall` *(Replaced with transparent)*
- `/Back/Shower Back Props` *(Replaced with transparent)*

**The main background (`/Back/Shower Back`) remains vanilla** in V2 because injecting a custom texture into this node triggers a severe pixel offset bug at the engine level.

**For Mod Developers:** This archive intentionally includes **BOTH script versions** (V2 stable and V1 experimental) for other modders to study, reverse-engineer, and test:

| Version | Nodes Targeted | Behavior |
|---------|----------------|----------|
| **V2 (Stable)** | 3 nodes: `/Foreground/Shower Foreground`, `/Center/Shower Wall`, `/Back/Shower Back Props` | Background remains vanilla, transparent overlays on 3 safe nodes |
| **V1 (Experimental)** | 4 nodes: adds `/Back/Shower Back` | Attempts full override — demonstrates the texture offset bug in action |

**Assets:** All original vanilla textures for these nodes are included inside the archive for reference and restoration.

---

## 🔴 EXPERIMENTAL: Lady Annalie's Clothier Shop (Main Shop)

⚠️ **FOR TESTING PURPOSES ONLY / ТОЛЬКО ДЛЯ ТЕСТИРОВАНИЯ**

- **Manager ID:** `"Clothier"`
- **Included Files:** This mod archive contains a nested archive named `Custom Annalie TEST SHOP.zip` with all necessary assets and debug reports for this scene.
- **Purpose:** Attempts to override the main shop background, blink, decorations, and foreground.
- ⚠️ **Note:** This scene is provided **strictly for testing and reverse-engineering**. It suffers from a severe texture offset bug due to engine limitations (see "Known Issues" below). Do not use this for permanent gameplay.

---

## 🔴 KNOWN ISSUES / ИЗВЕСТНЫЕ ПРОБЛЕМЫ

### Texture Offset in Shower & Clothier Shop Scenes (UNRESOLVED)
**Affected Scenes:** `/Views/Shower Scene` (Manager: "shower") and `/Views/Clothier Scene` (Manager: "Clothier").  

**Problem / Проблема:**  
When injecting custom PNGs into these specific scenes, textures may appear shifted relative to their original position (usually by several pixels vertically), or scaled slightly larger/smaller than expected.

**Root Cause / Причина:**  
This is caused by a **PPU (Pixels Per Unit) and Pivot mismatch** between the original game sprites and the runtime-injected sprites. The game uses non-standard PPU values. Even with correct PPU values extracted from game dumps, the native Unity runtime pipeline does not apply them correctly during Lua sprite creation.

**Current Status / Текущий статус:**  
⚠️ **UNRESOLVED / НЕ РЕШЕНА.** I have not yet found a solution to this problem through the native Lua API. 

**Workaround / Обходной путь:**  
- **For the Shower Scene:** The stable V2 script intentionally skips the main background node (`/Back/Shower Back`) and only applies transparent overrides to 3 safe nodes (`Foreground`, `Wall`, `Props`). The experimental V1 script is provided *strictly for modders* to observe how the 4th node behaves when the offset bug is triggered.
- **For the Clothier Shop:** The scene is locked to the `TEST SHOP` archive for experimental use only. 
- **Community Help Needed:** If you know how to properly extract and apply PPU/pivot values for runtime sprite creation in MoonSharp/Lua, please reach out via Discord or open an issue on GitHub.

---

## 🔗 LINKS & SUPPORT
- 🌐 **Official GitHub (Download Here):**  
  [https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes](https://github.com/Paul-Epifancev/MDRG-Custom-4-Scenes)
- 💬 **Discord Support:**  
  [M.D.R.G Modding Lab](https://discord.gg/tnz9ZwhC4h)

---

**Author:** `anon.jun` (Paul.Epifancev)  
**License:** MIT Open Source
