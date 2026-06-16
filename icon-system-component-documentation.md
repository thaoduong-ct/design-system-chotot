# Icon System — General — CHOTOT Design System v3.0

## Overview

The CHOTOT Icon System ("Icon System - General") is a library of **24×24px SVG symbol icons** used across all brand verticals. Each icon is available in two standard variants — **`-fill`** (solid, filled shape) and **`-outline`** (stroke/outlined shape). A subset of icons also provides a **`-duotone`** variant (two-tone layered colour). A small number of icons exist in only one variant or carry a special suffix.

All icons are referenced by symbol name and rendered as inline SVG. There are no design tokens governing icon colour — colour is applied at the consumer level via `--icon/*` tokens (e.g. `--icon/icon-primary`, `--icon/icon-secondary`, `--icon/icon-brand`, `--icon/icon-disabled`, `--icon/icon-blank`).

---

## Icon Size

| Size | Usage |
|------|-------|
| 24×24px | Standard — all icons in this system |
| 20×20px | Reduced — used inside compact controls (e.g. chips, badges, close buttons) |
| 16×16px | Small — used inside dense UI elements |

---

## Variants

| Suffix | Description |
|--------|-------------|
| `-fill` | Solid filled shape — use for selected, active, or high-emphasis states |
| `-outline` | Stroke outline shape — use for default/resting states |
| `-duotone` | Two-tone layered icon — use for illustrative or decorative contexts |
| `-stroke` | Stroke-only variant (Smartphone only) |
| (none) | Special/brand asset — no fill/outline distinction |

---

## Icon Catalogue

Icons are grouped below by functional category. Each row lists the base name and the available variants.

### Navigation & Directional

| Icon name | Variants |
|-----------|---------|
| `Arrowup` | fill, outline |
| `Arrowdown` | fill, outline |
| `Arrowleft` | fill, outline |
| `Arrowright` | fill, outline |
| `DoubleArrowup` | fill, outline |
| `DoubleArrowdown` | fill, outline |
| `arrowswitch` | fill, outline |
| `Chevronup` | fill, outline |
| `Chevrondown` | fill, outline |
| `Chevronleft` | fill, outline |
| `Chevronright` | fill, outline |
| `Chevronup-circle` | fill, outline |
| `Chevrondown-circle` | fill, outline |
| `Chevronleft-circle` | fill, outline |
| `Chevronright-circle` | fill, outline |

### UI Controls & Layout

| Icon name | Variants |
|-----------|---------|
| `Menu` | fill, outline |
| `Ellipsis` | fill, outline |
| `Morevertical` | fill, outline |
| `Verticalnavigation` | fill, outline |
| `Close` | fill, outline |
| `Plus` | fill, outline |
| `minus` | fill, outline |
| `Filter` | fill, outline |
| `Sort-Ascending` | (single) |
| `Sort-Default` | (single) |
| `Sort-Descending` | (single) |
| `Gridview` | fill, outline |
| `Listview` | fill, outline |
| `maximize` | fill, outline |
| `minimize` | fill, outline |
| `Check` | fill, outline |
| `CircleCheck` | fill, outline |
| `insert` | fill, outline |

### Search & Discovery

| Icon name | Variants |
|-----------|---------|
| `Search` | fill, outline |
| `Filter` | fill, outline |
| `Sparkle` | fill, outline |
| `MagicWand` | fill, outline |
| `Click` | fill, outline |

### Communication & Social

| Icon name | Variants |
|-----------|---------|
| `Chat` | fill, outline, **duotone** |
| `Comment` | fill, outline |
| `Mail` | fill, outline |
| `SMS` | fill, outline |
| `Notification` | fill, outline |
| `Phone` | fill, outline |
| `Phonecall` | fill, outline |
| `Send` | fill, outline, **duotone** |
| `Share` | fill, outline |
| `Feedback` | fill, outline |
| `Headphone` | fill, outline |
| `Speaker` | fill, outline |
| `Volume` | fill, outline |
| `Volume-mute` | fill, outline |
| `Facebook` | fill, outline |
| `Zalo` | fill |
| `apple` | fill |
| `google` | fill |

### User & Account

| Icon name | Variants |
|-----------|---------|
| `User` | fill, outline, **duotone** |
| `Profile` | fill, outline |
| `Boyface` | fill, outline |
| `Groupofuser` | fill, outline |
| `Addfriend` | fill, outline |
| `Logout` | fill, outline |
| `Lock` | fill, outline |
| `Hide` | fill, outline |
| `Unhide` | fill, outline |
| `Setting` | fill, outline |
| `Dashboard` | fill, outline |
| `Addashboard` | fill, outline |
| `private-seller-ava` | (single, avatar asset) |

### Location & Maps

| Icon name | Variants |
|-----------|---------|
| `Location` | fill, outline |
| `CurrentLocation` | fill, outline |
| `Pin` | fill, outline |
| `House` | fill, outline |
| `home` | fill, **duotone** |
| `Building` | fill, outline |

### Commerce & Transactions

| Icon name | Variants |
|-----------|---------|
| `Handbag` | fill, outline |
| `shoppingcart` | fill, outline |
| `Shop` | fill, outline |
| `Tag` | fill, outline, **duotone** |
| `Ticket-percent` | fill, outline |
| `Money` | fill, outline |
| `Wallet` | fill, outline |
| `Cardpayment` | fill, outline |
| `Cardinfo` | fill, outline |
| `Globalpayment` | fill, outline |
| `Fee` | fill, outline |
| `Package` | fill, outline |
| `Delivery` | fill, outline |
| `Promotion` | fill, outline |
| `Gift` | fill, outline |
| `car` | fill, outline |
| `Suitcase` | fill, outline |

### Media & Content

| Icon name | Variants |
|-----------|---------|
| `Camera` | fill, outline *(two symbol pairs exist: `Camera`/`camera` — capitalisation varies)* |
| `Image` | fill, outline |
| `Video` | fill, outline |
| `livestream` | fill, outline |
| `play` | fill, outline |
| `pause` | fill, outline |
| `scan` | fill, outline |
| `Upload` | fill, outline |
| `Download` | fill, outline |
| `Device` | fill, outline |
| `Smartphone` | fill, stroke |

### Editing & Actions

| Icon name | Variants |
|-----------|---------|
| `Edit` | fill, outline |
| `Duplicate` | fill, outline |
| `Trashbin` | fill, outline |
| `Retry` | fill, outline |
| `Unpublish` | fill, outline |
| `recurring` | fill, outline |
| `Note` | fill, outline |
| `Report` | fill, outline |

### Status & Feedback

| Icon name | Variants |
|-----------|---------|
| `Info` | fill, outline |
| `Warning` | fill, outline |
| `Help` | fill, outline |
| `Star` | fill, outline |
| `Circlestar` | fill, outline |
| `Heart` | fill, outline |
| `Like` | fill, outline |
| `Bookmark` | fill, outline |
| `Stats` | fill, outline |

### Time & Scheduling

| Icon name | Variants |
|-----------|---------|
| `Calendar` | fill, outline |
| `Clock` | fill, outline |
| `Alarm` | fill, outline |
| `Hourglass` | fill, outline |

### Badges & Trust

| Icon name | Variants |
|-----------|---------|
| `Verify` | fill, outline |
| `Certificate` | fill, outline |
| `Shieldcheck` | fill, outline |
| `Shieldplus` | fill, outline |
| `Medal` | fill, outline |
| `Partnerbadge` | fill |
| `Verified Shop` | (single, composite asset) |

### Chotot-Specific & Brand

| Icon name | Variants | Notes |
|-----------|---------|-------|
| `CTFeed` | fill, outline | Chợ Tốt Feed feature icon |
| `Dongtot` | fill | "Đồng Tốt" brand icon |
| `GoiPro` | fill | "Gói Pro" subscription icon |
| `SDA` | fill, outline | |
| `Bump` | fill, outline | Listing bump feature |
| `Bumpdays` | fill, outline | Multi-day bump feature |
| `Sellfaster` | fill, outline | "Bán nhanh" accelerator icon |
| `Sellerinfo` | fill, outline | Seller information |
| `Cupid` | fill, outline | Promotions / love feature |

### Lightning / Power States

| Icon name | Variants |
|-----------|---------|
| `lightningauto` | fill, outline |
| `lightningon` | fill, outline |
| `lightningoff` | fill, outline |

---

## Duotone Icons

Only the following icons have a `-duotone` variant:

| Icon | Use case |
|------|---------|
| `Chat-duotone` | Illustrative chat / empty state |
| `home-duotone` | Illustrative home / real estate |
| `send-duotone` | Illustrative send / messaging empty state |
| `User-duotone` | Illustrative profile / avatar fallback |
| `tag-duotone` | Illustrative tag / deals empty state |

Duotone icons are not typically used as interactive UI icons — reserve them for illustrations, empty states, or feature headers.

---

## Naming Convention

```
{IconName}-{variant}

Examples:
  Heart-fill         → solid heart
  Heart-outline      → outlined heart
  Chat-duotone       → two-tone chat illustration
  Sort-Ascending     → sort direction (no variant suffix)
  Verified Shop      → composite trust badge (no variant suffix)
```

Icon names use **PascalCase** for proper nouns (e.g. `Cardpayment`, `Shieldcheck`) and **camelCase** for some utility icons (e.g. `car`, `home`, `play`). When referencing by symbol ID, use the exact name as listed.

---

## Usage Guidelines

- **Fill vs Outline:** Use `-fill` for the active/selected/pressed state of interactive icons (e.g. a bookmarked item, an active nav tab). Use `-outline` for the default/resting state.
- **Colour:** Do not hardcode icon colour. Apply `--icon/*` CSS tokens at the consumer level:
  - `--icon/icon-primary` `#222222` — default dark icons
  - `--icon/icon-secondary` `#595959` — secondary/subdued icons
  - `--icon/icon-tertiary` `#8c8c8c` — placeholder/hint icons
  - `--icon/icon-brand` — brand-colour icons (vertical-specific)
  - `--icon/icon-disabled` `#c0c0c0` — disabled state
  - `--icon/icon-blank` `#ffffff` — icons on dark/coloured backgrounds
  - `--icon/icon-error` `#f0325e` — error/destructive icons
- **Size:** Render at 24×24px by default. Scale to 20px or 16px only in space-constrained contexts.
- **Hit area:** Wrap 24px icons in a 40×40px touchable container for interactive icons to meet minimum tap-target requirements.
- **Accessibility:** Always provide an `aria-label` or accompanying visible label when an icon is the sole interactive element.

---

## Token Reference (Icon Colour)

```
--icon/icon-primary:    #222222   /* Default dark */
--icon/icon-secondary:  #595959   /* Subdued */
--icon/icon-tertiary:   #8c8c8c   /* Placeholder / hint */
--icon/icon-disabled:   #c0c0c0   /* Disabled state */
--icon/icon-blank:      #ffffff   /* On dark / coloured bg */
--icon/icon-error:      #f0325e   /* Error / destructive */
--icon/icon-on-background: #222222  /* On brand-yellow bg */

/* Brand icon colour — per vertical */
--icon/icon-brand (gds/veh): #ffd400
--icon/icon-brand (pty):     #fa6819
--icon/icon-brand (job):     #306bd9
```

---

## Figma Node Reference

| Item | Node ID |
|------|---------|
| Icon System — General (full frame) | `52:39059` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`

> **Drive archive:** Original SVG source files are archived at `https://drive.google.com/drive/u/1/folders/1nQDIVTrwvd0YXvj5BJQPjfJaggPWshoC`
