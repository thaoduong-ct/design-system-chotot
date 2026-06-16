# Announcer Component — CHOTOT Design System v3.0

## Overview

The Announcer is an inline notification banner used to communicate contextual feedback — informational, success, warning, error, or neutral messages — to the user. It sits inline within page content (not a floating toast). It has two device layouts (`Desktop` / `Mobile`), six `type` variants, optional title, description, close button, and a text-link action button. A `Skeleton` type provides a loading placeholder.

---

## Visual Preview

| Type | Background | Icon | Button colour |
|------|-----------|------|--------------|
| Info | Light blue `#f2f6fc` | ⓘ Blue | Blue link |
| Warning | Light orange `#fff4ec` | ⚠ Orange | Orange |
| Success | Light green `#ecf9f1` | ✔ Green | Green |
| Error | Light pink `#feebef` | ⚠ Red | Red/error |
| Neutral | Light grey `#f4f4f4` | ⓘ Grey | Dark/primary |
| Skeleton | Light grey `#f4f4f4` | Grey circle | Grey bar |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `type` | `"🔵 Info"` \| `"🟢 Success"` \| `"🟠 Warning"` \| `"🔴 Error"` \| `"⚪️ Neutral"` \| `"💀 Skeleton"` | `"🔵 Info"` |
| `device` | `"🖥️ Desktop"` \| `"📱 Mobile"` | `"🖥️ Desktop"` |
| `title` | `true` \| `false` | `true` |
| `description` | `true` \| `false` | `true` |
| `button` | `true` \| `false` | `true` |
| `closeButton` | `true` \| `false` | `true` |
| `inputTitle` | string | `"Title"` |
| `content` | string | `"Content"` |
| `changeIcon` | ReactNode \| `null` | `null` |

> `changeIcon` only applies to the `Neutral` type — it overrides the default info icon with a custom ReactNode.

---

## Anatomy

```
┌─────────────────────────────────────────┐
│  [Icon]  Title                       [×] │  ← group_content: icon + content (flex row)
│          Content                         │    content: title + description (flex col)
│                            Text button   │  ← text button (bottom-right, button=true)
└─────────────────────────────────────────┘
```

**Skeleton state:**

```
┌─────────────────────────────────────────┐
│  [○]  ████████████████████              │  ← grey circle + two grey text bars
│       ███████                           │
│                     [███████]           │  ← grey button bar
└─────────────────────────────────────────┘
```

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Width | — | `343px` |
| Border radius | `--radius/radius-card` | `12px` |
| Overflow | — | `clip` |
| Gap (content ↔ button) | `--spacing/gap-min-2` | `2px` |
| Gap (icon ↔ content area) | `--spacing/gap-x-small-8` | `8px` |
| Gap (title ↔ description) | `--spacing/gap-2x-small-4` | `4px` |

### Padding by Device

| Device | H padding | Token | V padding | Token |
|--------|----------|-------|----------|-------|
| Desktop | `20px` | `--padding/usage/pad-section-desktop` | `16px` | `--padding/usage/v-pad-section-desktop` |
| Mobile | `16px` | `--padding/padding-medium-16` | `12px` | `--padding/padding-small-12` |

---

## Background Colours by Type

| Type | Background Token | Background Colour |
|------|-----------------|------------------|
| Info | `--background/light/background-info-light` | `#f2f6fc` |
| Warning | `--background/light/background-warning-light` | `#fff4ec` |
| Success | `--background/light/background-success-light` | `#ecf9f1` |
| Error | `--background/light/background-error-light` | `#feebef` |
| Neutral | `--background/light/background-secondary` | `#f4f4f4` |
| Skeleton | `--background/light/background-secondary` | `#f4f4f4` |

---

## Icon (Left)

All icons render at **20×20px** as SVG image assets. The Neutral type can accept a custom `changeIcon` override.

| Type | Icon | Inset |
|------|------|-------|
| Info | Info-outline (blue circle ⓘ) | `8.33%` all sides |
| Warning | Warning-fill (orange triangle ⚠) | `12.5%` top/bottom, `8.33%` left/right |
| Success | Check-fill (green circle ✔) | `8.33%` all sides, no overflow clip |
| Error | Warning-fill (red triangle ⚠) | `12.5%` top/bottom, `8.33%` left/right |
| Neutral | Info-outline (grey ⓘ) or `changeIcon` | `8.33%` all sides |
| Skeleton | Grey placeholder circle | — |

---

## Close Button (`×`)

Rendered when `closeButton=true`. Positioned **absolute top-right** of the content column.

| Property | Value |
|----------|-------|
| Icon | `Close-outline` |
| Size | 20×20px |
| Inset | `29.17%` all sides (renders ~5.83px inner icon) |
| Spacer | A 20×20px transparent `padding-20px` div is added to the title row to prevent text overlapping the close button |

---

## Title Row

Shown when `title=true` (all types except Skeleton).

| Property | Token | Value |
|----------|-------|-------|
| Typography | `label-section` | 14px Bold 700, line-height 20px |
| Color | `--text/text-primary` | `#222222` |
| Layout | `flex` row, `flex-1` text + close spacer | — |

---

## Description Row

Shown when `description=true` (all types except Skeleton).

| Property | Token | Value |
|----------|-------|-------|
| Typography | `body-section` | 14px Regular 400, line-height 20px |
| Color | `--text/text-primary` | `#222222` |

---

## Text Button (Bottom)

Right-aligned text-link action button. Shown when `button=true`. Colour matches the semantic type.

| Type | Text colour | Token |
|------|------------|-------|
| Info | `#306bd9` | `--text/text-link` |
| Warning | `#fb7328` | `--text/text-warning` |
| Success | `#12a154` | `--text/text-success` |
| Error | `#f0325e` | `--text/text-error` |
| Neutral | `#222222` | `--text/text-primary` |
| Skeleton | Grey bar placeholder | `--skeleton/skeleton-item` #e8e8e8 |

Typography: `label-section` — 14px Bold 700, `text-center`, `overflow-hidden text-ellipsis whitespace-nowrap`.

---

## Skeleton State

When `type="💀 Skeleton"` and `device="🖥️ Desktop"`:

| Element | Dimensions | Colour |
|---------|-----------|--------|
| Icon placeholder | 20×20px circle | `--skeleton/skeleton-item` #e8e8e8 |
| Title bar | 183×20px, radius 4px | `--skeleton/skeleton-item` #e8e8e8 |
| Description bar | 70×20px, radius 4px | `--skeleton/skeleton-item` #e8e8e8 |
| Button placeholder | 83×32px, radius 4px | `--skeleton/skeleton-item` #e8e8e8 |

> Skeleton is only defined for Desktop. Mobile skeleton is not a listed variant.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Title | `label-section` | 14px | 700 Bold | 20px |
| Description / Content | `body-section` | 14px | 400 Regular | 20px |
| Text button label | `label-section` | 14px | 700 Bold | 20px |

Font family: **Reddit Sans** (all elements).

---

## Behavior Notes

- **Inline placement** — the Announcer sits inline within page content, not as a floating overlay. Use it inside forms, detail pages, or section headers to provide contextual feedback.
- **`closeButton=false`** removes the `×` icon; also removes the 20px title-row spacer, giving the title the full available width.
- **`button=false`** hides the text-link action entirely; use when the Announcer is purely informational with no follow-up action needed.
- **`title=false` + `description=false`** can reduce the component to icon-only + optional button — useful for compact one-line banners.
- **`changeIcon`** (Neutral only) — pass a custom 20×20px ReactNode to replace the default info icon, e.g. for product-specific or branded messaging.
- **Semantic colours are not interchangeable** — use `Error` for destructive/blocking conditions, `Warning` for cautionary/non-blocking conditions, `Success` for confirmations, `Info` for neutral guidance, `Neutral` for non-semantic contextual messages.

---

## Token Reference Summary

```
/* Container */
--radius/radius-card:         12px
--spacing/gap-min-2:          2px    /* Outer gap between content group and button */
--spacing/gap-x-small-8:      8px    /* Icon ↔ content column gap */
--spacing/gap-2x-small-4:     4px    /* Title ↔ description gap */

/* Padding */
--padding/usage/pad-section-desktop:   20px   /* Desktop H */
--padding/usage/v-pad-section-desktop: 16px   /* Desktop V */
--padding/padding-medium-16:           16px   /* Mobile H */
--padding/padding-small-12:            12px   /* Mobile V */

/* Backgrounds */
--background/light/background-info-light:    #f2f6fc
--background/light/background-warning-light: #fff4ec
--background/light/background-success-light: #ecf9f1
--background/light/background-error-light:   #feebef
--background/light/background-secondary:     #f4f4f4   /* Neutral + Skeleton */

/* Text */
--text/text-primary:  #222222   /* Title, description, Neutral button */
--text/text-link:     #306bd9   /* Info button */
--text/text-warning:  #fb7328   /* Warning button */
--text/text-success:  #12a154   /* Success button */
--text/text-error:    #f0325e   /* Error button */

/* Skeleton */
--skeleton/skeleton-item:          #e8e8e8
--border-radius/radius-rounded-4:  4px

/* Typography */
--label/section/label-section-font-size:    14px
--label/section/label-section-font-weight:  700
--label/section/label-section-line-height:  20px

--body/section/body-section-font-size:    14px
--body/section/body-section-font-weight:  400
--body/section/body-section-line-height:  20px
```

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Announcer (full frame) | `1311:20700` |
| Desktop — Info | `1055:24386` |
| Desktop — Warning | `1311:20701` |
| Desktop — Success | `1323:24629` |
| Desktop — Error | `1311:20809` |
| Desktop — Neutral | `2529:5583` |
| Desktop — Skeleton | `1311:20823` |
| Mobile — Info | `2589:5995` |
| Mobile — Warning | `2589:5986` |
| Mobile — Success | `2589:6004` |
| Mobile — Error | `2589:6013` |
| Mobile — Neutral | `2589:5977` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
