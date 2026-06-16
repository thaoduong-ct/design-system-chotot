# Icon Button Component — CHOTOT Design System v3.0

## Overview

The Icon Button is a square, icon-only interactive element. It shares the same type system, states, and shape variants as the Button component but contains no text label — only a single icon centered in a fixed-dimension container.

---

## Visual Preview

| Type | Active |
|------|--------|
| Primary | Yellow square (`#ffd400`), dark icon |
| Primary - Success | Green square (`#12a154`), white icon |
| Black - Primary | Black square (`#222222`), white icon |
| Secondary | Light neutral square (`#f4f4f4`), dark icon |
| Tertiary | White square with border (`#dddddd`), dark icon |
| Ghost | Transparent square, no border, dark icon |

---

## Key Difference from Button

| | Button | Icon Button |
|--|--------|-------------|
| Content | Icon + text label | Icon only |
| Dimensions | Variable width × fixed height | Fixed width = fixed height (square) |
| Padding | `12px` H / `4px` V | `4px` uniform (all sides) |
| Typography | Label/Section | — |

---

## Props / Variants

| Prop | Values | Default |
|------|--------|---------|
| `size` | `XL - 48px` \| `L - 40px` \| `M - 32px` \| `S - 24px` | `M - 32px` |
| `type` | `Primary` \| `Primary - success` \| `Black - Primary` \| `Secondary` \| `Tertiary` \| `Ghost` | `Primary` |
| `state` | `Active` \| `Hover` \| `Pressed` \| `Loading` \| `Disabled` \| `Skeleton` | `Active` |
| `isPill` | `Yes` \| `No` | `No` |
| `icon` | ReactNode | default icon |

---

## Sizes

The container is always a **square**. The icon is 20×20px across all sizes.

| Size token | Container | Padding (all sides) | Icon size |
|------------|-----------|---------------------|-----------|
| `XL - 48px` | 48 × 48px | `--padding/padding-2x-small-4` (4px) | 20 × 20px |
| `L - 40px` | 40 × 40px | `--padding/padding-2x-small-4` (4px) | 20 × 20px |
| `M - 32px` | 32 × 32px | `--padding/padding-2x-small-4` (4px) | 20 × 20px |
| `S - 24px` | 24 × 24px | `--padding/padding-2x-small-4` (4px) | 20 × 20px |

---

## Types

### Primary
- **Background (Active):** `--button/solid/button-primary` → `#ffd400`
- **Background (Hover):** `--interaction/solid/interaction-brand-hover` → `#ffe884`
- **Background (Pressed):** `--interaction/solid/interaction-brand-pressed` → `#ffba00`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Icon color:** `--icon/icon-on-background` → `#222222`

### Primary - Success
- **Background (Active):** `--button/solid/button-success` → `#12a154`
- **Background (Hover):** `--interaction/solid/interaction-success-hover` → `#26c06e`
- **Background (Pressed):** `--interaction/solid/interaction-success-pressed` → `#108446`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Icon color:** `--icon/icon-blank` → `#ffffff`

### Black - Primary
- **Background (Active):** `--button/solid/button-neutral` → `#222222`
- **Background (Hover):** `--interaction/solid/interaction-neutral-hover` → `#595959`
- **Background (Pressed):** `--interaction/solid/interaction-neutral-pressed` → `#404040`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Icon color:** `--icon/icon-blank` → `#ffffff`

### Secondary
- **Background (Active):** `--button/tonal/button-tonal-neutral` → `#f4f4f4`
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Icon color:** `--icon/icon-primary` → `#222222`

### Tertiary
- **Background (Active):** `--button/solid/button-blank` → `#ffffff`
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Border:** `--border/border-regular` → `#dddddd`, width: `--stroke/stroke-divider` → `1px`
- **Icon color:** `--icon/icon-primary` → `#222222`

### Ghost
- **Background:** Transparent (no background, no border)
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Icon color:** `--icon/icon-primary` → `#222222`

---

## States

| State | Description |
|-------|-------------|
| **Active** | Default resting state |
| **Hover** | Cursor over button — slightly lighter/darker background |
| **Pressed** | Mouse/touch down — deeper background shift |
| **Loading** | Shows a loading spinner inside the square container |
| **Disabled** | Non-interactive; background → `#c0c0c0`, icon → `--icon/icon-disabled` (`#c0c0c0`) |
| **Skeleton** | Placeholder loading state; background `--skeleton/skeleton-background` (`#f4f4f4`) |

---

## Shape

| `isPill` | Border radius token | Resolved value |
|----------|---------------------|----------------|
| `No` | `--radius/radius-card-small` | `8px` |
| `Yes` | `--radius/radius-pill` | `999px` (full circle) |

When `isPill=Yes` on a square container, the result is a **circle**.

---

## Spacing

| Token | Value | Usage |
|-------|-------|-------|
| `--padding/padding-2x-small-4` | `4px` | Uniform padding on all 4 sides |
| `--spacing/gap-2x-small-4` | `4px` | Gap (present in markup but effectively unused since only one child) |

---

## Token Reference Summary

```
/* Backgrounds */
--button/solid/button-primary:         #ffd400   /* Primary active */
--button/solid/button-success:         #12a154   /* Primary - success active */
--button/solid/button-neutral:         #222222   /* Black - Primary active */
--button/solid/button-blank:           #ffffff   /* Tertiary active */
--button/solid/button-disabled:        #c0c0c0   /* All types disabled */
--button/tonal/button-tonal-neutral:   #f4f4f4   /* Secondary active */

/* Interaction - solid */
--interaction/solid/interaction-brand-hover:       #ffe884
--interaction/solid/interaction-brand-pressed:     #ffba00
--interaction/solid/interaction-success-hover:     #26c06e
--interaction/solid/interaction-success-pressed:   #108446
--interaction/solid/interaction-neutral-hover:     #595959
--interaction/solid/interaction-neutral-pressed:   #404040

/* Interaction - light */
--interaction/light/interaction-primary-hover:            #f4f4f4
--interaction/light/interaction-neutral-light-pressed:    #dddddd

/* Icon */
--icon/icon-on-background:   #222222   /* Primary icon (on yellow bg) */
--icon/icon-primary:         #222222   /* Secondary / Tertiary / Ghost icon */
--icon/icon-blank:           #ffffff   /* Success / Black-Primary icon */
--icon/icon-disabled:        #c0c0c0   /* Disabled icon */

/* Border (Tertiary only) */
--border/border-regular:    #dddddd
--stroke/stroke-divider:    1px

/* Shape */
--radius/radius-card-small:  8px    /* isPill=No  → rounded square */
--radius/radius-pill:        999px  /* isPill=Yes → circle */

/* Spacing */
--padding/padding-2x-small-4:  4px   /* Uniform padding */

/* Skeleton */
--skeleton/skeleton-background:  #f4f4f4
--skeleton/skeleton-item:        #e8e8e8
```

---

## Multi-brand Support

Button color tokens are overridden per brand theme while token names remain constant:

| Token | `gds` (Chợ Tốt) | `pty` (Nhà Tốt) | `job` (Việc Làm Tốt) | `veh` |
|-------|-----------------|-----------------|----------------------|-------|
| `button-primary` | `#ffd400` | `#fa6819` | `#306bd9` | `#ffd400` |
| `button-tonal-neutral` (secondary) | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` | `#f4f4f4` |
| `icon-on-background` | `#222222` | `#ffffff` | `#ffffff` | `#222222` |

---

## Figma Node Reference

| Component | Node ID |
|-----------|---------|
| Icon Button (frame, full set) | `13185:2090` |
| M / Primary / Active / isPill=No | `13185:2091` |
| M / Secondary / Active / isPill=No | `13185:2397` |
| M / Tertiary / Active / isPill=No | `13185:2493` |
| M / Ghost / Active / isPill=No | `13185:2601` |
| M / Primary - success / Active / isPill=No | `13185:2097` |
| M / Black - Primary / Active / isPill=No | `13185:2103` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
