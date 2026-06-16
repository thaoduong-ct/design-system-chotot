# Design System Tokens — CHOTOT Design System v3.0

## Overview

This document covers all design tokens used in the CHOTOT Design System. Tokens are organized into three top-level categories:

1. **Color** — Primitive color scales and per-brand semantic themes
2. **Measurement** — Spacing, padding, radius, and stroke
3. **Typography** — Font primitives and usage-level type styles

---

## Table of Contents

- [1. Color Primitives](#1-color-primitives)
  - [Gray](#gray)
  - [Red](#red)
  - [Green](#green)
  - [Orange](#orange)
  - [Blue](#blue)
  - [Yellow](#yellow)
  - [Overlay](#overlay)
  - [Brand Palettes](#brand-palettes)
- [2. Semantic Themes](#2-semantic-themes)
  - [Logo](#logo)
  - [Border](#border)
  - [Background](#background)
  - [Text](#text)
  - [Icon](#icon)
  - [Interaction](#interaction)
  - [Button](#button)
  - [Skeleton](#skeleton)
- [3. Measurement](#3-measurement)
  - [Spacing (Gap)](#spacing-gap)
  - [Padding](#padding)
  - [Radius](#radius)
  - [Stroke](#stroke)
- [4. Typography Primitives](#4-typography-primitives)
- [5. Typography Usage Styles](#5-typography-usage-styles)

---

## 1. Color Primitives

Primitive color scales are the raw source of truth. They are not used directly in components — semantic theme tokens alias into these values.

### Gray

| Token | Value | Swatch |
|-------|-------|--------|
| `gray-0` | `#ffffff` | ⬜ |
| `gray-25` | `#f7f7f7` | ⬜ |
| `gray-50` | `#f4f4f4` | ⬜ |
| `gray-75` | `#e8e8e8` | ⬜ |
| `gray-100` | `#dddddd` | ◻️ |
| `gray-200` | `#c0c0c0` | 🔲 |
| `gray-300` | `#a7a7a7` | 🔲 |
| `gray-400` | `#8c8c8c` | 🔲 |
| `gray-500` | `#737373` | ⬛ |
| `gray-600` | `#595959` | ⬛ |
| `gray-700` | `#404040` | ⬛ |
| `gray-800` | `#2e2e2e` | ⬛ |
| `gray-900` | `#222222` | ⬛ |

### Red

| Token | Value |
|-------|-------|
| `red-50` | `#feebef` |
| `red-75` | `#fcd6df` |
| `red-100` | `#fbc2cf` |
| `red-200` | `#f9adbf` |
| `red-300` | `#f6849e` |
| `red-400` | `#f35b7e` |
| `red-500` | `#f0325e` |
| `red-600` | `#cb294e` |
| `red-700` | `#a6203f` |
| `red-800` | `#82162f` |
| `red-900` | `#5d0d20` |

### Green

| Token | Value |
|-------|-------|
| `green-50` | `#ecf9f1` |
| `green-75` | `#d9f2e4` |
| `green-100` | `#abe7c5` |
| `green-200` | `#6ed498` |
| `green-300` | `#26c06e` |
| `green-400` | `#12a154` |
| `green-500` | `#108446` |
| `green-600` | `#0f6638` |
| `green-700` | `#0d4a29` |
| `green-800` | `#0e3a22` |
| `green-900` | `#082b18` |

### Orange

| Token | Value |
|-------|-------|
| `orange-50` | `#fff4ec` |
| `orange-75` | `#ffe4d5` |
| `orange-100` | `#ffceb4` |
| `orange-200` | `#ffa97b` |
| `orange-300` | `#fb7328` |
| `orange-400` | `#e16725` |
| `orange-500` | `#c44e0e` |
| `orange-600` | `#993600` |
| `orange-700` | `#6d2600` |
| `orange-800` | `#591f00` |
| `orange-900` | `#471900` |

### Blue

| Token | Value |
|-------|-------|
| `blue-50` | `#f2f6fc` |
| `blue-75` | `#e4ecfb` |
| `blue-100` | `#cadbf7` |
| `blue-200` | `#a3c0f5` |
| `blue-300` | `#7fa7f0` |
| `blue-400` | `#548af0` |
| `blue-500` | `#306bd9` |
| `blue-600` | `#1952ba` |
| `blue-700` | `#113b8a` |
| `blue-800` | `#0b2f70` |
| `blue-900` | `#0b234f` |

### Yellow

| Token | Value |
|-------|-------|
| `yellow-50` | `#fff8d6` |
| `yellow-75` | `#ffed9f` |
| `yellow-100` | `#ffd400` |
| `yellow-200` | `#ffc800` |
| `yellow-300` | `#ffba00` |
| `yellow-400` | `#cc8f00` |
| `yellow-500` | `#9e6c00` |
| `yellow-600` | `#7f5500` |
| `yellow-700` | `#603f00` |
| `yellow-800` | `#4f3200` |
| `yellow-900` | `#432900` |

### Overlay

| Token | Value |
|-------|-------|
| `gray-0---10%` | `rgba(255, 255, 255, 0.10)` |
| `gray-0---50%` | `rgba(255, 255, 255, 0.50)` |
| `gray-0---75%` | `rgba(255, 255, 255, 0.75)` |
| `gray-900---50%` | `rgba(34, 34, 34, 0.50)` |

### Brand Palettes

Each product brand ships its own primitive palette alongside the shared scales.

#### Chợ Tốt (`chotot`)

| Token | Value |
|-------|-------|
| `chotot-50` | `#fff8d6` |
| `chotot-75` | `#ffe884` |
| `chotot-100` | `#ffd400` |
| `chotot-200` | `#ffc800` |
| `chotot-300` | `#ffba00` |
| `chotot-400` | `#cc8f00` |
| `chotot-500` | `#9e6c00` |
| `chotot-600` | `#7f5500` |
| `chotot-700` | `#603f00` |
| `chotot-800` | `#4f3200` |
| `chotot-900` | `#432900` |

#### Nhà Tốt (`nhatot`)

| Token | Value |
|-------|-------|
| `nhatot-50` | `#fff1e3` |
| `nhatot-75` | `#ffe5cf` |
| `nhatot-100` | `#ffcfab` |
| `nhatot-200` | `#ffaf7a` |
| `nhatot-300` | `#fb7328` |
| `nhatot-400` | `#fa6819` |
| `nhatot-500` | `#d14200` |
| `nhatot-600` | `#a33100` |
| `nhatot-700` | `#752506` |
| `nhatot-800` | `#5e1a03` |
| `nhatot-900` | `#451608` |

#### Việc Làm Tốt (`vieclamtot`)

| Token | Value |
|-------|-------|
| `vieclamtot-50` | `#f2f6fc` |
| `vieclamtot-75` | `#e4ecfb` |
| `vieclamtot-100` | `#cadbf7` |
| `vieclamtot-200` | `#a3c0f5` |
| `vieclamtot-300` | `#7fa7f0` |
| `vieclamtot-400` | `#548af0` |
| `vieclamtot-500` | `#306bd9` |
| `vieclamtot-600` | `#1952ba` |
| `vieclamtot-700` | `#113b8a` |
| `vieclamtot-800` | `#0b2f70` |
| `vieclamtot-900` | `#0b234f` |

#### Chợ Tốt Xe (`chototxe`)

| Token | Value |
|-------|-------|
| `chototxe-50` | `#fff8d6` |
| `chototxe-75` | `#ffe884` |
| `chototxe-100` | `#ffd400` |
| `chototxe-200` | `#ffc800` |
| `chototxe-300` | `#ffba00` |
| `chototxe-400` | `#cc8f00` |
| `chototxe-500` | `#9e6c00` |
| `chototxe-600` | `#7f5500` |
| `chototxe-700` | `#603f00` |
| `chototxe-800` | `#4f3200` |
| `chototxe-900` | `#432900` |

---

## 2. Semantic Themes

Semantic tokens give meaning to primitive values. They are defined per brand theme. The system ships four themes: `gds` (Chợ Tốt), `veh` (Chợ Tốt Xe), `pty` (Nhà Tốt), `job` (Việc Làm Tốt).

Token names are **identical across all themes** — only their resolved values differ.

### Logo

| Token | gds | veh | pty | job |
|-------|-----|-----|-----|-----|
| `logo-primary` | `#ffba00` | `#ffd400` | `#fa6819` | `#306bd9` |
| `logo-secondary` | `#ffba00` | `#ffba00` | `#ffba00` | `#ffba00` |
| `logo-on-black` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` |

### Border

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `border-divider` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | Subtle section dividers |
| `border-thin` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | Thin lines |
| `border-regular` | `#dddddd` | `#dddddd` | `#dddddd` | `#dddddd` | Default borders |
| `border-bold` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | Emphasized borders |
| `border-active` | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` | Focus / selected state |
| `border-brand` | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` | Brand accent border |
| `border-info` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Informational |
| `border-success` | `#12a154` | `#12a154` | `#12a154` | `#12a154` | Success state |
| `border-error` | `#f0325e` | `#f0325e` | `#f0325e` | `#f0325e` | Error state |
| `border-warning` | `#fb7328` | `#fb7328` | `#fb7328` | `#fb7328` | Warning state |
| `border-disabled` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | Disabled state |
| `border-black` | `#222222` | `#222222` | `#222222` | `#222222` | High-contrast border |
| `border-blank` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` | White / invisible border |
| `border-overlay` | `rgba(255,255,255,0.50)` | `rgba(255,255,255,0.50)` | `rgba(255,255,255,0.50)` | `rgba(255,255,255,0.50)` | Borders on dark surfaces |

### Background

#### Light Backgrounds

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `background-primary` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` | Main surface |
| `background-app` | `#f7f7f7` | `#f7f7f7` | `#f7f7f7` | `#f7f7f7` | App shell / page bg |
| `background-secondary` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | Secondary surface |
| `background-tertiary` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | Tertiary surface |
| `background-disable` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | Disabled surface |
| `background-brand-light` | `#fff8d6` | `#fff8d6` | `#fff1e3` | `#f2f6fc` | Tinted brand surface |
| `background-brand-light-secondary` | `#ffe884` | `#ffe884` | `#ffe5cf` | `#e4ecfb` | Deeper tinted brand surface |
| `background-error-light` | `#feebef` | `#feebef` | `#feebef` | `#feebef` | Error tint |
| `background-info-light` | `#f2f6fc` | `#f2f6fc` | `#f2f6fc` | `#f2f6fc` | Info tint |
| `background-success-light` | `#ecf9f1` | `#ecf9f1` | `#ecf9f1` | `#ecf9f1` | Success tint |
| `background-warning-light` | `#fff4ec` | `#fff4ec` | `#fff4ec` | `#fff4ec` | Warning tint |

#### Solid Backgrounds

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `background-brand` | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` | Primary brand fill |
| `background-chotot` | `#ffd400` | `#ffd400` | `#ffd400` | `#ffd400` | Chợ Tốt fill (always yellow) |
| `background-appwrapper` | `#ffd400` | `#ffd400` | `#ffd400` | `#ffd400` | App wrapper fill |
| `background-inverted` | `#222222` | `#222222` | `#222222` | `#222222` | Dark inverted surface |
| `background-info` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Info fill |
| `background-success` | `#12a154` | `#12a154` | `#12a154` | `#12a154` | Success fill |
| `background-error` | `#f0325e` | `#f0325e` | `#f0325e` | `#f0325e` | Error fill |
| `background-warning` | `#fb7328` | `#fb7328` | `#fb7328` | `#fb7328` | Warning fill |
| `background-overlay` | `rgba(34,34,34,0.50)` | `rgba(34,34,34,0.50)` | `rgba(34,34,34,0.50)` | `rgba(34,34,34,0.50)` | Modal scrim |
| `background-overlay-inverted` | `rgba(255,255,255,0.10)` | `rgba(255,255,255,0.10)` | `rgba(255,255,255,0.10)` | `rgba(255,255,255,0.10)` | Light overlay on dark |

### Text

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `text-primary` | `#222222` | `#222222` | `#222222` | `#222222` | Default body text |
| `text-secondary` | `#595959` | `#595959` | `#595959` | `#595959` | Supporting text |
| `text-tertiary` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | Placeholder / hint text |
| `text-on-background` | `#222222` | `#222222` | `#ffffff` | `#ffffff` | Text on brand bg |
| `text-brand` | `#cc8f00` | `#cc8f00` | `#fa6819` | `#306bd9` | Brand-colored text |
| `text-link` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Hyperlinks |
| `text-info` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Informational |
| `text-success` | `#12a154` | `#12a154` | `#12a154` | `#12a154` | Success message |
| `text-error` | `#f0325e` | `#f0325e` | `#f0325e` | `#f0325e` | Error message |
| `text-warning` | `#fb7328` | `#fb7328` | `#fb7328` | `#fb7328` | Warning message |
| `text-chotot` | `#ffd400` | `#ffd400` | `#ffd400` | `#ffd400` | Chợ Tốt yellow (always) |
| `text-disabled` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | Disabled text |
| `text-blank` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` | White text (on dark bg) |
| `text-overlay` | `rgba(255,255,255,0.75)` | — | — | — | Primary overlay text |
| `text-overlay-secondary` | `rgba(255,255,255,0.50)` | — | — | — | Secondary overlay text |

### Icon

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `icon-primary` | `#222222` | `#222222` | `#222222` | `#222222` | Default icon |
| `icon-secondary` | `#595959` | `#595959` | `#595959` | `#595959` | Supporting icon |
| `icon-tertiary` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | `#8c8c8c` | Subtle icon |
| `icon-on-background` | `#222222` | `#222222` | `#ffffff` | `#ffffff` | Icon on brand bg |
| `icon-brand` | `#ffba00` | `#ffba00` | `#fa6819` | `#306bd9` | Brand-colored icon |
| `icon-chotot` | `#ffba00` | `#ffba00` | `#ffba00` | `#ffba00` | Chợ Tốt icon (always) |
| `icon-chotot-bold` | `#cc8f00` | `#cc8f00` | `#cc8f00` | `#cc8f00` | Bold Chợ Tốt icon |
| `icon-info` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Info icon |
| `icon-success` | `#12a154` | `#12a154` | `#12a154` | `#12a154` | Success icon |
| `icon-error` | `#f0325e` | `#f0325e` | `#f0325e` | `#f0325e` | Error icon |
| `icon-warning` | `#fb7328` | `#fb7328` | `#fb7328` | `#fb7328` | Warning icon |
| `icon-blank` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` | White icon (on dark bg) |
| `icon-disabled` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | Disabled icon |

### Interaction

Interaction tokens define background color changes on hover and pressed states.

#### Solid Interactions

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `interaction-brand-hover` | `#ffe884` | `#ffe884` | `#fb7328` | `#548af0` | Brand button hover |
| `interaction-brand-pressed` | `#ffba00` | `#ffba00` | `#d14200` | `#1952ba` | Brand button pressed |
| `interaction-chotot-hover` | `#ffe884` | `#ffe884` | `#ffe884` | `#ffe884` | Chotot hover (always) |
| `interaction-chotot-pressed` | `#ffc800` | `#ffc800` | `#ffc800` | `#ffc800` | Chotot pressed (always) |
| `interaction-success-hover` | `#26c06e` | `#26c06e` | `#26c06e` | `#26c06e` | Success hover |
| `interaction-success-pressed` | `#108446` | `#108446` | `#108446` | `#108446` | Success pressed |
| `interaction-error-hover` | `#f35b7e` | `#f35b7e` | `#f35b7e` | `#f35b7e` | Error hover |
| `interaction-error-pressed` | `#cb294e` | `#cb294e` | `#cb294e` | `#cb294e` | Error pressed |
| `interaction-info-hover` | `#548af0` | `#548af0` | `#548af0` | `#548af0` | Info hover |
| `interaction-info-pressed` | `#1952ba` | `#1952ba` | `#1952ba` | `#1952ba` | Info pressed |
| `interaction-warning-hover` | `#ffa97b` | `#ffa97b` | `#ffa97b` | `#ffa97b` | Warning hover |
| `interaction-warning-pressed` | `#e16725` | `#e16725` | `#e16725` | `#e16725` | Warning pressed |
| `interaction-neutral-hover` | `#595959` | `#595959` | `#595959` | `#595959` | Neutral/Black hover |
| `interaction-neutral-pressed` | `#404040` | `#404040` | `#404040` | `#404040` | Neutral/Black pressed |

#### Light Interactions

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `interaction-primary-hover` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | Secondary/Tertiary/Ghost hover |
| `interaction-brand-light-hover` | `#fff8d6` | `#fff8d6` | `#ffe5cf` | `#e4ecfb` | Brand tonal hover |
| `interaction-brand-light-pressed` | `#ffd400` | `#ffd400` | `#ffcfab` | `#cadbf7` | Brand tonal pressed |
| `interaction-neutral-light-hover` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | `#e8e8e8` | Neutral light hover |
| `interaction-neutral-light-pressed` | `#dddddd` | `#dddddd` | `#dddddd` | `#dddddd` | Neutral light pressed |
| `interaction-success-light-hover` | `#d9f2e4` | `#d9f2e4` | `#d9f2e4` | `#d9f2e4` | Success tonal hover |
| `interaction-success-light-pressed` | `#abe7c5` | `#abe7c5` | `#abe7c5` | `#abe7c5` | Success tonal pressed |
| `interaction-error-light-hover` | `#fcd6df` | `#fcd6df` | `#fcd6df` | `#fcd6df` | Error tonal hover |
| `interaction-error-light-pressed` | `#fbc2cf` | `#fbc2cf` | `#fbc2cf` | `#fbc2cf` | Error tonal pressed |
| `interaction-info-light-hover` | `#e4ecfb` | `#e4ecfb` | `#e4ecfb` | `#e4ecfb` | Info tonal hover |
| `interaction-info-light-pressed` | `#cadbf7` | `#cadbf7` | `#cadbf7` | `#cadbf7` | Info tonal pressed |
| `interaction-warning-light-hover` | `#ffe4d5` | `#ffe4d5` | `#ffe4d5` | `#ffe4d5` | Warning tonal hover |
| `interaction-warning-light-pressed` | `#ffceb4` | `#ffceb4` | `#ffceb4` | `#ffceb4` | Warning tonal pressed |

### Button

#### Solid Button Backgrounds

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `button-primary` | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` | Primary button bg |
| `button-success` | `#12a154` | `#12a154` | `#12a154` | `#12a154` | Success button bg |
| `button-error` | `#f0325e` | `#f0325e` | `#f0325e` | `#f0325e` | Error button bg |
| `button-info` | `#306bd9` | `#306bd9` | `#306bd9` | `#306bd9` | Info button bg |
| `button-neutral` | `#222222` | `#222222` | `#222222` | `#222222` | Black-Primary button bg |
| `button-blank` | `#ffffff` | `#ffffff` | `#ffffff` | `#ffffff` | Tertiary button bg |
| `button-chotot` | `#ffd400` | `#ffd400` | `#ffd400` | `#ffd400` | Chợ Tốt button (always) |
| `button-appwrapper` | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` | App-level CTA |
| `button-disabled` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | `#c0c0c0` | Disabled bg (all types) |

#### Tonal Button Backgrounds

| Token | gds | veh | pty | job | Usage |
|-------|-----|-----|-----|-----|-------|
| `button-secondary` | `#fff8d6` | `#fff8d6` | `#fff1e3` | `#f2f6fc` | Secondary (tonal) button bg |
| `button-tonal-neutral` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | Neutral tonal bg |
| `button-tonal-success` | `#ecf9f1` | `#ecf9f1` | `#ecf9f1` | `#ecf9f1` | Success tonal bg |
| `button-tonal-error` | `#feebef` | `#feebef` | `#feebef` | `#feebef` | Error tonal bg |
| `button-tonal-info` | `#f2f6fc` | `#f2f6fc` | `#f2f6fc` | `#f2f6fc` | Info tonal bg |

### Skeleton

| Token | Value | Usage |
|-------|-------|-------|
| `skeleton-background` | `#f4f4f4` | Skeleton container fill |
| `skeleton-item` | `#e8e8e8` | Animated shimmer element |

---

## 3. Measurement

### Spacing (Gap)

Used for `gap` between flex/grid children.

| Token | Value |
|-------|-------|
| `gap-min-2` | `2px` |
| `gap-2x-small-4` | `4px` |
| `gap-2x-small-6` | `6px` |
| `gap-x-small-8` | `8px` |
| `gap-small-12` | `12px` |
| `gap-medium-16` | `16px` |
| `gap-large-20` | `20px` |

### Padding

Used for internal component padding.

| Token | Value |
|-------|-------|
| `padding-min-2` | `2px` |
| `padding-2x-small-4` | `4px` |
| `padding-2x-small-6` | `6px` |
| `padding-x-small-8` | `8px` |
| `padding-small-12` | `12px` |
| `padding-medium-16` | `16px` |
| `padding-large-20` | `20px` |

### Radius

| Token | Value | Usage |
|-------|-------|-------|
| `radius-ad-small` | `4px` | Small ad cards |
| `radius-ad` | `6px` | Standard ad cards |
| `radius-card-small` | `8px` | Buttons, small cards |
| `radius-card` | `12px` | Standard cards |
| `radius-decoration` | `16px` | Decorative / large cards |
| `radius-modal` | `20px` | Modals, bottom sheets |
| `radius-pill` | `999px` | Pill shape / circles |

### Stroke

| Token | Value | Usage |
|-------|-------|-------|
| `stroke-divider` | `1px` | Default borders |
| `stroke-action` | `2px` | Focus rings, active borders |
| `stroke-emphasize` | `3px` | Emphasized outlines |

---

## 4. Typography Primitives

Two font families are available. **Reddit Sans** is the primary typeface used across all components.

### Font Families

| Token | Value |
|-------|-------|
| `font-family` (Reddit Sans) | `Reddit Sans` |
| `font-family` (Inter) | `Inter` |

### Font Sizes

| Token | Value |
|-------|-------|
| `font-size-10` | `10px` |
| `font-size-12` | `12px` |
| `font-size-14` | `14px` |
| `font-size-16` | `16px` |
| `font-size-18` | `18px` |
| `font-size-20` | `20px` |
| `font-size-24` | `24px` |
| `font-size-32` | `32px` |

### Font Weights

| Token | Value | Name |
|-------|-------|------|
| `font-weight-light` | `300` | Light |
| `font-weight-regular` | `400` | Regular |
| `font-weight-medium` | `500` | Medium |
| `font-weight-semi-bold` | `600` | Semi Bold |
| `font-weight-bold` | `700` | Bold |
| `font-weight-extra-bold` | `800` | Extra Bold |

### Line Heights

| Token | Value |
|-------|-------|
| `line-height-16` | `16px` |
| `line-height-18` | `18px` |
| `line-height-20` | `20px` |
| `line-height-24` | `24px` |
| `line-height-26` | `26px` |
| `line-height-28` | `28px` |
| `line-height-32` | `32px` |
| `line-height-40` | `40px` |

---

## 5. Typography Usage Styles

Semantic type styles compose the primitives above into named roles. All styles use **Reddit Sans**.

### Display

Large editorial headings and page-level titles.

| Style | Font Size | Weight | Line Height | Letter Spacing |
|-------|-----------|--------|-------------|----------------|
| `display-page` | `32px` | `700` | `40px` | `0px` |
| `display-section` | `24px` | `700` | `32px` | `0px` |
| `display-caption` | `20px` | `700` | `28px` | `0px` |
| `display-annotation` | `18px` | `700` | `26px` | `0px` |

### Header

Section and component-level headers.

| Style | Font Size | Weight | Line Height | Letter Spacing |
|-------|-----------|--------|-------------|----------------|
| `header-page` | `20px` | `600` | `28px` | `0px` |
| `header-section` | `16px` | `600` | `24px` | `0px` |
| `header-caption` | `14px` | `600` | `20px` | `0px` |
| `header-annotation` | `12px` | `600` | `18px` | `0px` |

### Label

Interactive element labels (buttons, tabs, form labels).

| Style | Font Size | Weight | Line Height | Letter Spacing |
|-------|-----------|--------|-------------|----------------|
| `label-page` | `16px` | `700` | `24px` | `0px` |
| `label-section` | `14px` | `700` | `20px` | `0px` |
| `label-caption` | `12px` | `700` | `18px` | `0px` |
| `label-annotation` | `10px` | `700` | `16px` | `0px` |

### Body

Long-form and descriptive text.

| Style | Font Size | Weight | Line Height | Letter Spacing |
|-------|-----------|--------|-------------|----------------|
| `body-page` | `16px` | `400` | `24px` | `0px` |
| `body-section` | `14px` | `400` | `20px` | `0px` |
| `body-caption` | `12px` | `400` | `18px` | `0px` |
| `body-annotation` | `10px` | `400` | `16px` | `0px` |

### Tagline

Supporting, medium-weight descriptive text.

| Style | Font Size | Weight | Line Height | Letter Spacing |
|-------|-----------|--------|-------------|----------------|
| `tagline-section` | `16px` | `500` | `20px` | `0px` |
| `tagline-caption` | `14px` | `500` | `20px` | `0px` |
| `tagline-annotation` | `12px` | `500` | `18px` | `0px` |
| `tagline-footext` | `10px` | `500` | `16px` | `0px` |

### Miscellaneous

| Token | Value | Usage |
|-------|-------|-------|
| `text.text-link` | `#24a3a3` | Standalone hyperlink color |

---

## Typography Scale Summary

| Style group | Sizes available | Weight |
|-------------|-----------------|--------|
| Display | 32 / 24 / 20 / 18 | **Bold 700** |
| Header | 20 / 16 / 14 / 12 | **Semi Bold 600** |
| Label | 16 / 14 / 12 / 10 | **Bold 700** |
| Body | 16 / 14 / 12 / 10 | Regular 400 |
| Tagline | 16 / 14 / 12 / 10 | Medium 500 |

---

## Brand Theme Quick Reference

| Property | gds (Chợ Tốt) | veh (CT Xe) | pty (Nhà Tốt) | job (Việc Làm) |
|----------|--------------|-------------|---------------|----------------|
| Brand color | `#ffd400` yellow | `#ffd400` yellow | `#fa6819` orange | `#306bd9` blue |
| Text on brand | dark `#222222` | dark `#222222` | light `#ffffff` | light `#ffffff` |
| Icon on brand | dark `#222222` | dark `#222222` | light `#ffffff` | light `#ffffff` |
| Border active | `#ffd400` | `#ffd400` | `#fa6819` | `#306bd9` |
| Button hover | `#ffe884` | `#ffe884` | `#fb7328` | `#548af0` |
| Button pressed | `#ffba00` | `#ffba00` | `#d14200` | `#1952ba` |
