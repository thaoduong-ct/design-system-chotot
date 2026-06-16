# Button Component — CHOTOT Design System v3.0

## Overview

The Button component is a core interactive element in the CHOTOT Design System. It supports 4 sizes, 6 visual types, 2 shape variants (rounded / pill), and 6 interaction states.

---

## Visual Preview

| Type | Active |
|------|--------|
| Primary | Yellow background (`#ffd400`), dark label |
| Primary - Success | Green background (`#12a154`), white label |
| Black - Primary | Black background (`#222222`), white label |
| Secondary | Light neutral background (`#f4f4f4`), dark label |
| Tertiary | White background with border (`#dddddd`), dark label |
| Ghost | Transparent background, no border, dark label |

---

## Props / Variants

| Prop | Values | Default |
|------|--------|---------|
| `size` | `XL - 48px` \| `L - 40px` \| `M - 32px` \| `S - 24px` | `M - 32px` |
| `type` | `Primary` \| `Primary - success` \| `Black - Primary` \| `Secondary` \| `Tertiary` \| `Ghost` | `Primary` |
| `state` | `Active` \| `Hover` \| `Pressed` \| `Loading` \| `Disabled` \| `Skeleton` | `Active` |
| `isPill` | `Yes` \| `No` | `No` |
| `iconLeft` | boolean | `true` |
| `inputText` | string | `"Button"` |

---

## Sizes

| Size token | Height | Horizontal padding | Vertical padding |
|------------|--------|--------------------|------------------|
| `XL - 48px` | 48px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) |
| `L - 40px` | 40px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) |
| `M - 32px` | 32px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) |
| `S - 24px` | 24px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) |

Icon size is 20×20px across all sizes.

---

## Types

### Primary
- **Background (Active):** `--button/solid/button-primary` → `#ffd400`
- **Background (Hover):** `--interaction/solid/interaction-brand-hover` → `#ffe884`
- **Background (Pressed):** `--interaction/solid/interaction-brand-pressed` → `#ffba00`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Text / Icon:** `--text/text-on-background` → `#222222`

### Primary - Success
- **Background (Active):** `--button/solid/button-success` → `#12a154`
- **Background (Hover):** `--interaction/solid/interaction-success-hover` → `#26c06e`
- **Background (Pressed):** `--interaction/solid/interaction-success-pressed` → `#108446`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Text / Icon:** `--text/text-blank` → `#ffffff`

### Black - Primary
- **Background (Active):** `--button/solid/button-neutral` → `#222222`
- **Background (Hover):** `--interaction/solid/interaction-neutral-hover` → `#595959`
- **Background (Pressed):** `--interaction/solid/interaction-neutral-pressed` → `#404040`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Text / Icon:** `--text/text-blank` → `#ffffff`

### Secondary
- **Background (Active):** `--button/tonal/button-tonal-neutral` → `#f4f4f4`
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Text / Icon:** `--text/text-primary` → `#222222`

### Tertiary
- **Background (Active):** `--button/solid/button-blank` → `#ffffff`
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Border:** `--border/border-regular` → `#dddddd`, width: `--stroke/stroke-divider` → `1px`
- **Text / Icon:** `--text/text-primary` → `#222222`

### Ghost
- **Background:** Transparent (no background)
- **Border:** None
- **Background (Hover):** `--interaction/light/interaction-primary-hover` → `#f4f4f4`
- **Background (Pressed):** `--interaction/light/interaction-neutral-light-pressed` → `#dddddd`
- **Background (Disabled):** `--button/solid/button-disabled` → `#c0c0c0`
- **Text / Icon:** `--text/text-primary` → `#222222`

---

## States

| State | Description |
|-------|-------------|
| **Active** | Default resting state |
| **Hover** | Cursor over button — slightly lighter/darker background |
| **Pressed** | Mouse/touch down — deeper background shift |
| **Loading** | Shows a loading spinner; label may be hidden |
| **Disabled** | Non-interactive; background → `#c0c0c0`, text/icon → `--text/text-disabled` (`#c0c0c0`) |
| **Skeleton** | Placeholder state during content load; uses `--skeleton/skeleton-background` (`#f4f4f4`) |

---

## Shape

| `isPill` | Border radius token | Resolved value |
|----------|---------------------|----------------|
| `No` | `--radius/radius-card-small` | `8px` |
| `Yes` | `--radius/radius-pill` | `999px` |

---

## Typography (Label)

Token group: `Label/Section`

| Token | Value |
|-------|-------|
| `--label/section/label-section-font-family` | `Reddit Sans` |
| `--label/section/label-section-font-size` | `14px` |
| `--label/section/label-section-font-weight` | `700` (Bold) |
| `--label/section/label-section-line-height` | `20px` |
| `--label/section/label-section-letter-spacing` | `0px` |

---

## Spacing

| Token | Value | Usage |
|-------|-------|-------|
| `--spacing/gap-2x-small-4` | `4px` | Gap between icon and label |
| `--padding/padding-small-12` | `12px` | Horizontal (left/right) padding |
| `--padding/padding-2x-small-4` | `4px` | Vertical (top/bottom) padding |

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

/* Text */
--text/text-on-background:   #222222   /* Primary label (on yellow bg) */
--text/text-primary:         #222222   /* Secondary / Tertiary / Ghost label */
--text/text-blank:           #ffffff   /* Success / Black-Primary label */
--text/text-disabled:        #c0c0c0   /* Disabled label */

/* Border (Tertiary only) */
--border/border-regular:    #dddddd
--stroke/stroke-divider:    1px

/* Shape */
--radius/radius-card-small:  8px   /* isPill=No */
--radius/radius-pill:        999px /* isPill=Yes */

/* Spacing */
--spacing/gap-2x-small-4:      4px
--padding/padding-small-12:    12px
--padding/padding-2x-small-4:  4px

/* Skeleton */
--skeleton/skeleton-background:  #f4f4f4
--skeleton/skeleton-item:        #e8e8e8
```

---

## Multi-brand Support

The design system supports multiple brands. Button color tokens are overridden per brand via theme. The token names stay the same but resolve to different values:

| Token | `gds` (Chợ Tốt) | `pty` (Nhà Tốt) | `job` (Việc Làm Tốt) | `veh` |
|-------|-----------------|-----------------|----------------------|-------|
| `button-primary` | `#ffd400` | `#fa6819` | `#306bd9` | `#ffd400` |
| `button-secondary` (tonal) | `#fff8d6` | `#fff1e3` | `#f2f6fc` | `#fff8d6` |
| `text-on-background` | `#222222` | `#ffffff` | `#ffffff` | `#222222` |

---

## Figma Node Reference

| Component | Node ID |
|-----------|---------|
| Button (frame, full set) | `42:31461` |
| M / Primary / Active / isPill=No | `42:31498` |
| M / Secondary / Active / isPill=No | `42:31516` |
| M / Tertiary / Active / isPill=No | `42:31642` |
| M / Ghost / Active / isPill=No | `42:31714` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
