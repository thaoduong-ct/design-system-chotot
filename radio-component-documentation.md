# Radio Component — CHOTOT Design System v3.0

## Overview

The Radio button is a 24×24px circular selection control (20×20px circle + 2px padding hit area). It has two modes — unselected and selected — across four interaction states. The visual language mirrors the Checkbox component but uses a circular shape and has no bulk/indeterminate variant. All circle visuals are rendered as SVG image assets.

---

## Visual Preview

| State | Unselected (`unselectSelect=false`) | Selected (`unselectSelect=true`) |
|-------|-------------------------------------|----------------------------------|
| Default | Empty circle, light grey border | Yellow fill + checkmark |
| Hover | Empty circle, dark/black border | Lighter yellow fill + checkmark |
| Pressed | Yellow ring (about-to-select preview) | Deeper yellow fill + checkmark |
| Disabled | Solid grey circle, no border | Grey fill + muted checkmark |

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `state` | `"Default"` \| `"Hover"` \| `"Pressed"` \| `"Disabled"` | `"Default"` |
| `unselectSelect` | `true` \| `false` | `false` |

### Mode matrix

| `unselectSelect` | Mode |
|-----------------|------|
| `false` | Unselected radio |
| `true` | Selected radio |

---

## Anatomy

```
┌─────────────────────┐  ← 24×24px outer container (hit area)
│  ┌───────────────┐  │  ← 2px padding on all sides
│  │  20×20px ○    │  │  ← circular SVG asset
│  │    [dot/✓]    │  │  ← inner icon (selected only)
│  └───────────────┘  │
└─────────────────────┘
```

- **Outer container:** 24×24px, `padding: 2px` (`--padding/padding-min-2`) on all sides
- **Inner circle:** 20×20px SVG image asset, positioned `items-start`
- **Inner icon:** checkmark/dot SVG overlaid on the circle when `unselectSelect=true`; centered within the 24×24px container

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Outer container (hit area) | — | 24×24px |
| Container padding | `--padding/padding-min-2` | `2px` (all sides) |
| Inner circle | — | 20×20px |
| Inner icon position | — | `inset: 33.33% 29.17% 33.33% 33.33%` (centred within 24px container) |

---

## States — Unselected (`unselectSelect=false`)

| State | Visual | Interactivity |
|-------|--------|---------------|
| Default | Empty circle — light grey border, white fill | `<div>` — static |
| Hover | Empty circle — dark/black border, white fill | `<button>` — interactive |
| Pressed | Empty circle — yellow border + yellow fill (preview of selection) | `<button>` — interactive |
| Disabled | Solid flat grey circle, no border | `<div>` — not interactive |

### Token reference (unselected)

| State | Fill colour | Border colour | Token |
|-------|------------|--------------|-------|
| Default | `#ffffff` | `#dddddd` | `--background/light/background-primary` + `--border/border-regular` |
| Hover | `#e8e8e8` | `#222222` | `--background/light/background-tertiary` + `--border/border-black` |
| Pressed | `#ffd400` | `#ffd400` | `--interaction/light/interaction-brand-light-pressed` + `--border/border-brand` |
| Disabled | `#c0c0c0` (solid) | — | `--icon/icon-disabled` |

---

## States — Selected (`unselectSelect=true`)

| State | Visual | Interactivity |
|-------|--------|---------------|
| Default | Yellow filled circle + dark checkmark | `<div>` — static |
| Hover | Lighter yellow circle + dark checkmark | `<button>` — interactive |
| Pressed | Deeper yellow circle + dark checkmark | `<button>` — interactive |
| Disabled | Grey filled circle + muted checkmark | `<div>` — not interactive |

### Token reference (selected)

| State | Fill colour | Checkmark colour | Token |
|-------|------------|-----------------|-------|
| Default | `#ffd400` | `#222222` | `--background/solid/background-brand` + `--icon/icon-on-background` |
| Hover | `#ffe884` | `#222222` | `--interaction/solid/interaction-brand-hover` + `--icon/icon-on-background` |
| Pressed | `#ffba00` | `#222222` | `--interaction/solid/interaction-brand-pressed` + `--icon/icon-on-background` |
| Disabled | `#c0c0c0` | `#ffffff` | `--icon/icon-disabled` + `--icon/icon-blank` |

---

## Comparison with Checkbox

| Feature | Checkbox | Radio |
|---------|----------|-------|
| Shape | Square (4px radius) | **Circle** |
| Inner icon area | 20×20px box (inset 2px) | 20×20px circle |
| Check icon | 16×16px centred | Dot/checkmark centred |
| Bulk / Indeterminate | Yes (`bulkSelection` prop) | **No** |
| State prop name | `state` | `state` |
| Selection prop | `unselectSelect` | `unselectSelect` |
| Container size | 24×24px | 24×24px |
| Padding | 2px | 2px |
| Pressed (unselected) | Yellow fill preview | **Same** |
| Disabled style | Solid grey | **Same** |

---

## Token Reference Summary

```
/* Container */
--padding/padding-min-2: 2px   /* Hit area padding */

/* Unselected */
--background/light/background-primary:              #ffffff   /* Default fill */
--background/light/background-tertiary:             #e8e8e8   /* Hover fill */
--interaction/light/interaction-brand-light-pressed:#ffd400   /* Pressed fill */
--icon/icon-disabled:                               #c0c0c0   /* Disabled fill */

--border/border-regular:  #dddddd   /* Default border */
--border/border-black:    #222222   /* Hover border */
--border/border-brand:    #ffd400   /* Pressed border */

/* Selected */
--background/solid/background-brand:           #ffd400   /* Default fill */
--interaction/solid/interaction-brand-hover:   #ffe884   /* Hover fill */
--interaction/solid/interaction-brand-pressed: #ffba00   /* Pressed fill */
--icon/icon-disabled:                          #c0c0c0   /* Disabled fill */

--icon/icon-on-background: #222222   /* Checkmark on yellow */
--icon/icon-blank:         #ffffff   /* Checkmark on disabled grey */
```

---

## Behavior Notes

- **Default and Disabled** states render as `<div>` (non-interactive). **Hover and Pressed** states render as `<button>` with `cursor-pointer`.
- **Pressed (unselected)** previews the selected state by filling the circle with brand yellow `#ffd400` before the click registers — identical to the Checkbox pressed behaviour.
- **Radio buttons should always be used in groups** — only one option in a group can be selected at a time. This mutual-exclusion logic must be implemented at the form/group level; the component itself only reflects a single item's state.
- **No intermediate/indeterminate state** — unlike Checkbox, Radio has no bulk or partial-selection variant.
- **Disabled** removes interactivity entirely; apply `pointer-events: none` and `cursor: not-allowed` at the group/wrapper level as needed.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Radio (full frame) | `569:13817` |
| Default — Unselected | `569:13816` |
| Hover — Unselected | `615:2086` |
| Pressed — Unselected | `686:4912` |
| Disabled — Unselected | `569:13815` |
| Default — Selected | `569:13814` |
| Hover — Selected | `686:4908` |
| Pressed — Selected | `631:2155` |
| Disabled — Selected | `995:19226` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
