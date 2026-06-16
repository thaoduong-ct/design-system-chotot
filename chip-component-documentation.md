# Chip Component — CHOTOT Design System v3.0

## Overview

The Chip is a compact, pill-shaped interactive element used for filtering, selection, or categorisation. It supports an optional left icon, a text label, and a right icon that changes role based on selection state (dropdown arrow when unselected, dismiss/close when selected).

---

## Visual Preview

| Style | Unselected | Selected |
|-------|------------|----------|
| Fill | Light grey pill, dark text | Black pill, white text |
| Outline | White pill with border, dark text | Light grey pill with black border, dark text |

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `size` | `Large 40px` \| `Medium 32px` \| `Small 24px` | `Small 24px` |
| `style` | `Fill` \| `Outline` | `Fill` |
| `select` | `true` \| `false` | `false` |
| `state` | `Default` \| `Hover` \| `Disable` | `Default` |
| `leftIcon` | boolean | `true` |
| `rightIcon` | boolean | `true` |
| `text` | boolean | `true` |
| `changeLIcon` | ReactNode \| null | `null` |

---

## Anatomy

```
[ Left Icon ]  [ Text label ]  [ Right Icon ]
```

- **Left Icon** — optional leading icon, scales with size
- **Text label** — chip label text
- **Right Icon** — context-sensitive:
  - `select=false` → **chevron-down** (indicates dropdown/filter action)
  - `select=true` → **dismiss ×** (indicates removable/deselectable)

---

## Sizes

All chips are pill-shaped (`border-radius: --radius/radius-pill` = `999px`).

| Size | Height | Icon size | H padding (L/R) | V padding | Gap |
|------|--------|-----------|-----------------|-----------|-----|
| `Large 40px` | 40px | 24 × 24px | `--padding/padding-medium-16` (16px) | `--padding/padding-x-small-8` (8px) | `--spacing/gap-2x-small-4` (4px) |
| `Medium 32px` | 32px | 20 × 20px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) | `--spacing/gap-2x-small-4` (4px) |
| `Small 24px` | 24px | 16 × 16px | `--padding/padding-x-small-8` (8px) | 3px | `--spacing/gap-min-2` (2px) |

---

## Typography

Text style scales with size:

| Size | Typography style | Font size | Weight | Line height | Letter spacing |
|------|-----------------|-----------|--------|-------------|----------------|
| `Large 40px` | `tagline-section` | `--tagline/section/tagline-section-font-size` (16px) | `--tagline/section/tagline-section-font-weight` (500 Medium) | 20px | 0px |
| `Medium 32px` | `tagline-caption` | `--tagline/caption/tagline-caption-font-size` (14px) | `--tagline/caption/tagline-caption-font-weight` (500 Medium) | 20px | 0px |
| `Small 24px` | `tagline-annotation` | `--tagline/annotation/tagline-annotation-font-size` (12px) | `--tagline/annotation/tagline-annotation-font-weight` (500 Medium) | 18px | 0px |

Font family: **Reddit Sans** (all sizes)

---

## Styles & States

### Fill Style

#### Unselected (`select=false`)

| State | Background | Text | Icon |
|-------|-----------|------|------|
| Default | `--background/light/background-secondary` `#f4f4f4` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Hover | `--interaction/light/interaction-neutral-light-hover` `#e8e8e8` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Disable | `--background/light/background-secondary` `#f4f4f4` | `--text/text-disabled` `#c0c0c0` | `--icon/icon-disabled` `#c0c0c0` |

#### Selected (`select=true`)

| State | Background | Text | Icon |
|-------|-----------|------|------|
| Default | `--background/solid/background-inverted` `#222222` | `--text/text-blank` `#ffffff` | `--icon/icon-blank` `#ffffff` |
| Hover | `--interaction/solid/interaction-neutral-hover` `#595959` | `--text/text-blank` `#ffffff` | `--icon/icon-blank` `#ffffff` |
| Disable | `--button/solid/button-disabled` `#c0c0c0` | `--text/text-blank` `#ffffff` | `--icon/icon-blank` `#ffffff` |

---

### Outline Style

#### Unselected (`select=false`)

| State | Background | Border | Text | Icon |
|-------|-----------|--------|------|------|
| Default | `--background/light/background-primary` `#ffffff` | `--border/border-regular` `#dddddd` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Hover | `--interaction/light/interaction-neutral-light-hover` `#e8e8e8` | `--border/border-regular` `#dddddd` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Disable | `--background/light/background-secondary` `#f4f4f4` | `--border/border-regular` `#dddddd` | `--text/text-disabled` `#c0c0c0` | `--icon/icon-disabled` `#c0c0c0` |

#### Selected (`select=true`)

| State | Background | Border | Text | Icon |
|-------|-----------|--------|------|------|
| Default | `--background/light/background-secondary` `#f4f4f4` | `--border/border-black` `#222222` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Hover | `--interaction/light/interaction-neutral-light-hover` `#e8e8e8` | `--border/border-black` `#222222` | `--text/text-primary` `#222222` | `--icon/icon-primary` `#222222` |
| Disable | `--background/light/background-secondary` `#f4f4f4` | `--border/border-disabled` `#c0c0c0` | `--text/text-disabled` `#c0c0c0` | `--icon/icon-disabled` `#c0c0c0` |

Border width (Outline style, all states): `--stroke/stroke-divider` = `1px`

---

## State Summary Matrix

| Style | Select | Default bg | Hover bg | Disable bg | Text (Default/Hover) | Text (Disable) |
|-------|--------|-----------|---------|-----------|----------------------|----------------|
| Fill | No | `#f4f4f4` | `#e8e8e8` | `#f4f4f4` | `#222222` | `#c0c0c0` |
| Fill | Yes | `#222222` | `#595959` | `#c0c0c0` | `#ffffff` | `#ffffff` |
| Outline | No | `#ffffff` | `#e8e8e8` | `#f4f4f4` | `#222222` | `#c0c0c0` |
| Outline | Yes | `#f4f4f4` | `#e8e8e8` | `#f4f4f4` | `#222222` | `#c0c0c0` |

---

## Token Reference Summary

```
/* Backgrounds */
--background/light/background-primary:     #ffffff   /* Outline unselected default */
--background/light/background-secondary:   #f4f4f4   /* Fill unselected default/disable; Outline disable */
--background/solid/background-inverted:    #222222   /* Fill selected default */
--button/solid/button-disabled:            #c0c0c0   /* Fill selected disable */

/* Interactions */
--interaction/light/interaction-neutral-light-hover:  #e8e8e8  /* All hover (unselected) */
--interaction/solid/interaction-neutral-hover:        #595959  /* Fill selected hover */

/* Borders (Outline only) */
--border/border-regular:    #dddddd   /* Outline unselected */
--border/border-black:      #222222   /* Outline selected */
--border/border-disabled:   #c0c0c0   /* Outline selected disabled */
--stroke/stroke-divider:    1px

/* Text */
--text/text-primary:    #222222   /* Default/Hover unselected & Outline selected */
--text/text-blank:      #ffffff   /* Fill selected */
--text/text-disabled:   #c0c0c0   /* All disabled */

/* Icons */
--icon/icon-primary:    #222222
--icon/icon-blank:      #ffffff
--icon/icon-disabled:   #c0c0c0

/* Shape */
--radius/radius-pill:   999px   /* All chips */

/* Spacing — Large */
--padding/padding-medium-16:   16px   /* H padding */
--padding/padding-x-small-8:   8px    /* V padding */
--spacing/gap-2x-small-4:      4px    /* Item gap */

/* Spacing — Medium */
--padding/padding-small-12:    12px   /* H padding */
--padding/padding-2x-small-4:  4px    /* V padding */
--spacing/gap-2x-small-4:      4px    /* Item gap */

/* Spacing — Small */
--padding/padding-x-small-8:   8px    /* Left padding */
--spacing/gap-x-small-8:       8px    /* Right padding */
--spacing/gap-min-2:            2px    /* Item gap */
```

---

## Behavior Notes

- The right icon **changes meaning** based on `select`:
  - `select=false` → chevron-down: suggests the chip opens a filter/dropdown
  - `select=true` → dismiss ×: allows the user to deselect/remove the chip
- The `Disable` state is **visually non-interactive** but does not necessarily apply `pointer-events: none` — implement cursor and interaction handling in code.
- `leftIcon`, `rightIcon`, and `text` can each be independently hidden (set to `false`) for icon-only or text-only variants.
- The Fill selected state uses an **inverted (dark) background** — same token as `button-neutral` / `background-inverted`.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Chip (full frame) | `44:8364` |
| S / Fill / No / Default | `12236:831` |
| S / Fill / Yes / Default | `12236:839` |
| S / Outline / No / Default | `12236:847` |
| S / Outline / Yes / Default | `12236:851` |
| M / Fill / No / Default | `44:8405` |
| M / Fill / Yes / Default | `44:8425` |
| M / Outline / No / Default | `44:8415` |
| M / Outline / Yes / Default | `44:8435` |
| L / Fill / No / Default | `44:8445` |
| L / Fill / Yes / Default | `44:8465` |
| L / Outline / No / Default | `44:8455` |
| L / Outline / Yes / Default | `44:8475` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
