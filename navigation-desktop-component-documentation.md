# Navigation — Desktop Component — CHOTOT Design System v3.0

## Overview

The Desktop Navigation is a 64px-tall full-width top bar ("Appwrapper / Navigation / Top Navigation") that spans 1440px. It supports two layout types — `Uni/ Scroliing` (standard scrolled/inner-page nav) and `Homepage` (landing-page nav with centered tabs) — across four brand verticals. A `skeleton` prop renders a loading placeholder and a `muaBan` prop toggles the "Đăng bán" CTA visibility.

---

## Visual Preview

| Type | Description |
|------|-------------|
| `Uni/ Scroliing` | Three-zone bar: Logo zone left · Search feature centre · Function group right |
| `Homepage` | Two-zone bar: Logo+tagline left · Function group right · **Tab Group centred absolutely** |

Both types come in 4 brand verticals and support a `skeleton` loading state.

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `type` | `"Uni/ Scroliing"` \| `"Homepage"` | `"Uni/ Scroliing"` |
| `vertical` | `"Chợ Tốt"` \| `"Chợ Tốt Xe"` \| `"Việc Làm Tốt"` \| `"Nhà Tốt"` | `"Chợ Tốt"` |
| `skeleton` | `true` \| `false` | `false` |
| `muaBan` | `true` \| `false` | `true` |

---

## Anatomy

### `Uni/ Scroliing` type

```
┌──────────────────────────────────────────────────────────────────────────────────────┐  64px
│  [≡] [Brand Logo]  │  [📍 City ▾]  [🔍 Search placeholder         🔍]  │  [🔔][💬][❤] [Quản lý tin] [Đăng bán] [Avatar ▾]  │
└──────────────────────────────────────────────────────────────────────────────────────┘
   ← Logo zone →       ←————————— Search feature (flex-1) ————————→   ←— Group function ——————————————————————————————→
```

### `Homepage` type

```
┌──────────────────────────────────────────────────────────────────────────────────────┐  64px
│  [Brand Logo]  Người bán uy tín  │        [Sản phẩm · Xe cộ · Bất động sản · Việc làm]        │  [🔔][💬][❤] [Quản lý tin] [Đăng bán] [Avatar ▾]  │
└──────────────────────────────────────────────────────────────────────────────────────┘
   ← Logo + tagline (left) →                  ↑ Tab Group (absolute centre)                        ← Function group (right) ——→
```

---

## Container

| Property | Token | Value |
|----------|-------|-------|
| Width | — | `1440px` (full-width) |
| Height | — | `64px` |
| Background | `--background/light/background-primary` | `#ffffff` |
| Border bottom | `--border/border-divider` / `--stroke/stroke-divider` | `#f4f4f4`, `1px` |
| Padding horizontal | `--padding/padding-medium-16` | `16px` |
| Internal gap | `--spacing/gap-x-small-8` | `8px` |

---

## Zone 1 — Logo (`Uni/ Scroliing`)

Contains a hamburger menu icon and the brand logo image asset.

| Element | Size | Notes |
|---------|------|-------|
| Menu (hamburger) icon | 40×40px | Icon button; `icon-primary` #222222 |
| Brand logo SVG | varies by vertical | Inline SVG or image asset; no token colours |

### Zone 1 — Logo + Tagline (`Homepage`)

| Element | Detail |
|---------|--------|
| Brand logo | Same SVG asset as above |
| Seller tagline | `"Người bán uy tín"` — `body-section` 14px Regular 400, `--text/text-secondary` #595959 |

---

## Zone 2 — Search Feature (`Uni/ Scroliing` only)

A `flex-1` row containing a **Location Pill** and a **Search Bar**.

### Location Pill

| Property | Token | Value |
|----------|-------|-------|
| Background | `--button/tonal/button-secondary` | `#f4f4f4` |
| Border | `--border/border-brand` | Brand colour (see table below) |
| Border width | `--stroke/stroke-action` | `2px` |
| Border radius | `99px` (pill) | — |
| Padding horizontal | `--padding/padding-small-12` | `12px` |
| Height | — | `40px` |
| Gap | `--spacing/gap-2x-small-4` | `4px` |

Contents: location icon (20×20px, `icon-brand`) + city name text + `chevron-down` icon (16×16px).

| Typography | Token | Value |
|-----------|-------|-------|
| City name | `header-caption` | 14px SemiBold 600, line-height 20px |
| Color | `--text/text-primary` | `#222222` |

### Brand border colours for Location Pill

| Vertical | Border color | Token |
|----------|-------------|-------|
| Chợ Tốt | `#ffd400` | `--border/border-brand` (gds) |
| Chợ Tốt Xe | `#ffd400` | `--border/border-brand` (veh) |
| Nhà Tốt | `#fa6819` | `--border/border-brand` (pty) |
| Việc Làm Tốt | `#306bd9` | `--border/border-brand` (job) |

### Search Bar

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-secondary` | `#f4f4f4` |
| Border radius | `99px` (pill) | — |
| Height | — | `40px` |
| Padding horizontal | `--padding/padding-small-12` | `12px` |
| Flex | `flex-1` | Fills remaining space |

Contents (left → right):

| Element | Size | Style |
|---------|------|-------|
| Search icon (left) | 20×20px | `icon-tertiary` #8c8c8c |
| Placeholder text | flex-1 | `body-section` 14px Regular, `--text/text-tertiary` #8c8c8c |
| Submit button (circle) | 32×32px | Brand-colour fill (see CTA table); contains 20×20px white search icon |

---

## Zone 3 — Group Function (both types)

Right-aligned group. Elements left → right:

| Element | Size | Notes |
|---------|------|-------|
| Icon buttons (×3) | 24×24px icon in 40×40px hit area | Notification 🔔, Chat 💬, Wishlist ❤; `icon-primary` #222222; each may carry a **badge** |
| "Quản lý tin" button | — | `button-secondary` style; white bg + `border-thin` #e8e8e8; `text-primary` #222222; `label-section` 14px Bold |
| CTA button (`muaBan=true`) | — | Brand-coloured primary button (see CTA table); `label-section` 14px Bold |
| Account avatar pill | 32px avatar + `chevron-down-outline` 24px | White bg, `border-thin` #e8e8e8 1px, pill shape |

### CTA Button per Vertical

| Vertical | Label | Background | Text color | Token |
|----------|-------|-----------|-----------|-------|
| Chợ Tốt | "Đăng bán" | `#ffd400` | `#222222` | `--background/solid/background-brand` |
| Chợ Tốt Xe | "Bán xe" | `#ffd400` | `#222222` | `--background/solid/background-brand` |
| Nhà Tốt | "Đăng tin" | `#fa6819` | `#ffffff` | `--background/solid/background-brand` (pty) |
| Việc Làm Tốt | "Đăng tuyển" | `#306bd9` | `#ffffff` | `--background/solid/background-brand` (job) |

> When `muaBan=false`, the CTA button is hidden entirely.

### "Quản lý tin" button — `Homepage` variant

On the `Homepage` type, "Quản lý tin" renders with a white/blank background (no border), using `icon-blank` / `text-blank` — matching the dark navbar background colour used in some brand headers.

---

## Badge (Notification Indicator)

Appears on icon buttons when there is an unread count.

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/solid/background-error` | `#f0325e` |
| Border | `--border/border-blank` | `#ffffff`, `1px` |
| Text color | `--text/text-blank` | `#ffffff` |
| Typography | `label-annotation` | 10px Bold 700, line-height 16px |
| Min width | — | `16px` (pill, expands for 2+ digits) |
| Border radius | `99px` (pill) | — |
| Position | Absolute | Top-right of icon button |

---

## Account Avatar Pill

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Border | `--border/border-thin` | `#e8e8e8`, `1px` |
| Border radius | `99px` (pill) | — |
| Height | — | `40px` |
| Gap | `--spacing/gap-2x-small-4` | `4px` |
| Avatar size | — | `32×32px` (circular, see Avatar component) |
| Chevron icon | — | `chevron-down-outline` 24×24px, `icon-primary` #222222 |

---

## Tab Group (Homepage only)

Centred absolutely within the nav bar. Contains 4 tabs corresponding to the four marketplaces.

| Tab | Label |
|-----|-------|
| 1 | Sản phẩm |
| 2 | Xe cộ |
| 3 | Bất động sản |
| 4 | Việc làm |

### Tab Typography

| State | Style | Weight | Token |
|-------|-------|--------|-------|
| Active | `label-section` | 14px Bold 700 | `--text/text-primary` (or white on coloured bg) |
| Inactive | `body-section` | 14px Regular 400 at **40% opacity** | Same colour at reduced opacity |

### Tab text colour by background

| Background | Tab text color |
|-----------|----------------|
| White (`#ffffff`) | `--text/text-primary` #222222 |
| Coloured header bg | `--text/text-blank` #ffffff |

---

## Skeleton State (`skeleton=true`)

Replaces logo and search feature zones with animated gradient placeholder shapes. Group function is also replaced with grey pill placeholders.

| Element | Appearance |
|---------|-----------|
| Logo placeholder | Rounded rectangle, `background-secondary` #f4f4f4 → white gradient |
| Search bar placeholder | Full-width pill, same gradient |
| Icon button placeholders | Circle shapes, same gradient |
| Button placeholders | Pill shapes, same gradient |

No text or interactive elements are rendered in skeleton state.

---

## Behavior Notes

- **`Uni/ Scroliing`** is used on all inner pages and after the user scrolls past the homepage hero — it always shows the search feature.
- **`Homepage`** is the landing-page variant — the search feature is hidden and replaced by the centred Tab Group for marketplace navigation.
- **Tab Group position is absolute** — it does not participate in the flex layout of the left/right zones, allowing it to be truly centred regardless of the size of the left or right content.
- **`muaBan=false`** hides the CTA button; use this when the user is already in a post/listing flow where re-promoting "Đăng bán" would be redundant.
- **Badge** on icon buttons should be conditionally rendered based on unread notification/message counts from application state.
- **Account pill** should link to the authenticated user's profile/account page; when unauthenticated, replace with a "Đăng nhập" (Login) text link or button.
- **Brand vertical** drives three visual elements simultaneously: Location Pill border colour, Search Bar submit button colour, and CTA button colour/label.

---

## Token Reference Summary

```
/* Container */
--background/light/background-primary:  #ffffff   /* Nav background */
--border/border-divider:                #f4f4f4   /* Bottom border */
--stroke/stroke-divider:                1px
--padding/padding-medium-16:            16px      /* H padding */
--spacing/gap-x-small-8:                8px       /* Internal gap */

/* Location Pill */
--button/tonal/button-secondary:        #f4f4f4   /* Pill background */
--border/border-brand:                  brand colour per vertical
--stroke/stroke-action:                 2px
--padding/padding-small-12:             12px

/* Search Bar */
--background/light/background-secondary: #f4f4f4

/* Text */
--text/text-primary:    #222222
--text/text-secondary:  #595959   /* Tagline */
--text/text-tertiary:   #8c8c8c   /* Search placeholder, search icon */
--text/text-blank:      #ffffff   /* White labels on dark/coloured backgrounds */

/* Badge */
--background/solid/background-error:  #f0325e
--border/border-blank:                #ffffff
--text/text-blank:                    #ffffff

/* CTA — per vertical */
--background/solid/background-brand (gds/veh): #ffd400
--background/solid/background-brand (pty):     #fa6819
--background/solid/background-brand (job):     #306bd9

/* Account pill */
--border/border-thin: #e8e8e8

/* Typography */
--header/caption/header-caption-font-size:    14px    /* City name, currency */
--header/caption/header-caption-font-weight:  600
--header/caption/header-caption-line-height:  20px

--label/section/label-section-font-size:      14px    /* Active tab, CTA, "Quản lý tin" */
--label/section/label-section-font-weight:    700
--label/section/label-section-line-height:    20px

--body/section/body-section-font-size:        14px    /* Inactive tab, placeholder, tagline */
--body/section/body-section-font-weight:      400
--body/section/body-section-line-height:      20px

--label/annotation/label-annotation-font-size:    10px   /* Badge */
--label/annotation/label-annotation-font-weight:  700
--label/annotation/label-annotation-line-height:  16px
```

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Navigation — Desktop (full frame) | `578:6484` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
