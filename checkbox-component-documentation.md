# Checkbox Component — CHOTOT Design System v3.0

## Overview

The Checkbox is a 24×24px selection control with three distinct modes: a standard individual checkbox, a bulk "select all" checkbox (checked), and a bulk indeterminate checkbox. All modes share the same size, border radius, and hit-area container.

---

## Visual Preview

| Mode | Default | Hover | Pressed | Disabled |
|------|---------|-------|---------|---------|
| Standard — Unchecked | Empty box, grey border | Dark border, grey fill | Yellow fill + yellow border | Solid grey |
| Bulk — All Selected | Yellow fill + checkmark | Lighter yellow + checkmark | Deeper yellow + checkmark | Grey fill + checkmark |
| Bulk — Indeterminate | Minus icon | Minus icon (hover) | Minus icon (pressed) | Minus icon (disabled) |

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `state` | `Default` \| `Hover` \| `Pressed` \| `Disabled` | `Default` |
| `bulkSelection` | `true` \| `false` | `false` |
| `unselectSelect` | `true` \| `false` | `false` |

### Mode matrix

| `bulkSelection` | `unselectSelect` | Mode |
|-----------------|------------------|------|
| `false` | `false` | Standard unchecked checkbox |
| `false` | `true` | Standard checked checkbox |
| `true` | `true` | Bulk — all items selected (checkmark) |
| `true` | `false` | Bulk — indeterminate (minus icon) |

---

## Anatomy

```
┌─────────────────────┐  ← 24×24px outer container (hit area)
│  ┌───────────────┐  │  ← 2px inset on all sides
│  │  20×20px box  │  │
│  │  [icon/check] │  │
│  └───────────────┘  │
└─────────────────────┘
```

- **Outer container:** 24×24px, `overflow: hidden`
- **Inner box:** 20×20px, positioned `2px` from all edges
- **Border radius:** `--radius/radius-ad-small` = `4px` (applied to both container and box)
- **Border width (when present):** `--stroke/stroke-action` = `2px`
- **Check icon:** 16×16px, centered within the 24×24px container
- **Indeterminate icon (Union):** 20×20px SVG asset (minus shape)

---

## Mode 1 — Standard Unchecked (`bulkSelection=false`, `unselectSelect=false`)

Empty box only, no icon.

| State | Box Background | Border Color | Border Width |
|-------|---------------|--------------|-------------|
| Default | `--background/light/background-primary` `#ffffff` | `--border/border-regular` `#dddddd` | `--stroke/stroke-action` `2px` |
| Hover | `--background/light/background-tertiary` `#e8e8e8` | `--border/border-black` `#222222` | `--stroke/stroke-action` `2px` |
| Pressed | `--interaction/light/interaction-brand-light-pressed` `#ffd400` | `--border/border-brand` `#ffd400` | `--stroke/stroke-action` `2px` |
| Disabled | `--icon/icon-disabled` `#c0c0c0` (solid fill) | — (no border) | — |

> **Pressed** previews the about-to-be-selected state with a brand yellow fill before the click completes.

---

## Mode 2 — Bulk All Selected (`bulkSelection=true`, `unselectSelect=true`)

Filled box with a white checkmark icon. Used for "select all" header controls.

| State | Box Background | Check Icon Color |
|-------|---------------|-----------------|
| Default | `--background/solid/background-brand` `#ffd400` | `--icon/icon-on-background` `#222222` |
| Hover | `--interaction/solid/interaction-brand-hover` `#ffe884` | `--icon/icon-on-background` `#222222` |
| Pressed | `--interaction/solid/interaction-brand-pressed` `#ffba00` | `--icon/icon-on-background` `#222222` |
| Disabled | `--icon/icon-disabled` `#c0c0c0` (solid fill) | `--icon/icon-blank` `#ffffff` |

> No border is applied in this mode — the box is a solid fill only.

---

## Mode 3 — Bulk Indeterminate (`bulkSelection=true`, `unselectSelect=false`)

Displays a minus/dash (indeterminate) icon indicating partial selection. Uses SVG asset images per state.

| State | Visual |
|-------|--------|
| Default | Indeterminate minus icon — default colours |
| Hover | Indeterminate minus icon — hover variant |
| Pressed | Indeterminate minus icon — pressed variant |
| Disabled | Indeterminate minus icon — disabled/muted variant |

> The indeterminate icon is rendered as a full 20×20px SVG asset positioned at `left: 2px, top: 2px`.

---

## Shared Tokens

```
/* Container */
size: 24 × 24px

/* Inner box */
size: 20 × 20px
inset: 2px (all sides)
--radius/radius-ad-small: 4px   /* border-radius */

/* Border (Standard unchecked only) */
--stroke/stroke-action: 2px     /* border-width */

/* Check icon size */
16 × 16px (centered in 24px container)
```

---

## Token Reference Summary

```
/* Standard unchecked backgrounds */
--background/light/background-primary:              #ffffff   /* Default */
--background/light/background-tertiary:             #e8e8e8   /* Hover */
--interaction/light/interaction-brand-light-pressed:#ffd400   /* Pressed */
--icon/icon-disabled:                               #c0c0c0   /* Disabled */

/* Standard unchecked borders */
--border/border-regular:   #dddddd   /* Default */
--border/border-black:     #222222   /* Hover */
--border/border-brand:     #ffd400   /* Pressed */

/* Bulk selected backgrounds */
--background/solid/background-brand:            #ffd400   /* Default */
--interaction/solid/interaction-brand-hover:    #ffe884   /* Hover */
--interaction/solid/interaction-brand-pressed:  #ffba00   /* Pressed */
--icon/icon-disabled:                           #c0c0c0   /* Disabled */

/* Icons */
--icon/icon-on-background:  #222222   /* Check icon on yellow bg */
--icon/icon-blank:          #ffffff   /* Check icon on disabled grey bg */

/* Shape & stroke */
--radius/radius-ad-small:  4px
--stroke/stroke-action:    2px
```

---

## Behavior Notes

- The **2px inset** on the inner box gives a subtle visual padding within the 24×24px touch target, keeping the active area generously sized.
- The **Pressed (unchecked)** state fills the box with `#ffd400` — the same brand yellow as the selected state — providing a visual "about to check" preview on mouse down.
- The **Bulk Indeterminate** state (minus icon) should be shown when some but not all items in a list are selected.
- The **Bulk All-Selected** state (checkmark) should be shown when every item in the list is selected.
- `Disabled` in all modes removes interactivity and applies a flat `#c0c0c0` fill with no border.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Checkbox (full frame) | `558:6225` |
| Standard / Default / Unchecked | `558:6230` |
| Standard / Hover / Unchecked | `615:723` |
| Standard / Pressed / Unchecked | `671:4895` |
| Standard / Disabled / Unchecked | `558:6235` |
| Bulk / Default / Selected | `558:6226` |
| Bulk / Hover / Selected | `671:4891` |
| Bulk / Pressed / Selected | `618:2125` |
| Bulk / Disabled / Selected | `995:18957` |
| Bulk / Default / Indeterminate | `558:6232` |
| Bulk / Hover / Indeterminate | `671:4897` |
| Bulk / Pressed / Indeterminate | `671:4886` |
| Bulk / Disabled / Indeterminate | `995:18961` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
