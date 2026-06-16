# Input Field — Currency Component — CHOTOT Design System v3.0

## Overview

The Currency Input is a specialised single-line text input designed for monetary values. It shares the same floating label pattern, 48px height, and status colour system as the standard Input Field, but adds a persistent right-aligned **currency unit** label (default `đ`) rendered in `header-caption` (SemiBold). There is no `Success` state and no clear/validation icon — the right side is reserved exclusively for the currency unit.

---

## Visual Preview

| Status | `fillText=false` | `fillText=true` |
|--------|-----------------|-----------------|
| Default / Out Focus | `border-thin` — placeholder left, `đ` right (muted) | `border-thin` — floating label + value + `đ` (dark) |
| Hover | `border-black` — placeholder left, `đ` right (muted) | `border-black` — floating label + value + `đ` (dark) |
| Focus On | `border-thin` (no placeholder) | `border-black` — floating label + value + `đ` (dark) |
| Warning | — | `border-warning` orange — floating label + value + `đ` |
| Error | `border-error` — placeholder left, `đ` right (muted) | `border-error` — red floating label + value + `đ` |
| Disable | `border-disabled` grey bg — muted placeholder + `đ` (disabled) | `border-disabled` grey bg — muted text + `đ` (disabled) |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Warning` | `Default/ Out Focus` |
| `fillText` | `true` \| `false` | `false` |
| `currencyUnit` | string | `"đ"` |
| `label` | `true` \| `false` | `true` |
| `requirement` | `true` \| `false` | `true` |
| `helpText` | `true` \| `false` | `true` |
| `iconLeft` | `true` \| `false` | `false` |
| `iconRight` | `true` \| `false` | `false` |
| `changeIconL` | ReactNode \| `null` | `null` |
| `changeIconR` | ReactNode \| `null` | `null` |
| `inputLabel` | string | `"Label"` |
| `inputText` | string | `"Text"` |
| `inputHelpText` | string | `"This is help/error text."` |

---

## Anatomy

```
┌───────────────────────────────────────────────┐
│  [Icon L]  Label *            [value text]  đ │  ← fillText=false: placeholder + currency unit
└───────────────────────────────────────────────┘
   This is help/error text.
```

**When `fillText=true` (floating label mode):**

```
┌───────────────────────────────────────────────┐
│  [Icon L]  Label *                            │
│            Text                             đ │  ← entered value + currency unit right-aligned
└───────────────────────────────────────────────┘
   This is help/error text.
```

The currency unit is **always visible** on the right edge of the field, in all states.

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Container width | — | `300px` |
| Outer gap (field ↔ help text) | `--spacing/gap-2x-small-4` | `4px` |
| Field height | — | `48px` |
| Field border radius | `--radius/radius-card` | `12px` |
| Field border width | `--stroke/stroke-action` | `2px` |
| Field padding horizontal | `--padding/padding-medium-16` | `16px` |
| Field padding vertical | `--padding/padding-min-2` | `2px` |
| Gap between internal elements | `--spacing/gap-x-small-8` | `8px` |
| Gap between entered value and currency unit | `--spacing/gap-small-12` | `12px` |

---

## Status — Border & Background

| Status | Background Token | Background | Border Token | Border |
|--------|-----------------|-----------|-------------|--------|
| Default / Out Focus | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On (`fillText=false`) | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Focus On (`fillText=true`) | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Warning (`fillText=true`) | `--background/light/background-primary` | `#ffffff` | `--border/border-warning` | `#fb7328` |
| Error | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Disable | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text — Two Modes

### Mode A: Empty / Placeholder (`fillText=false`)

Layout is **right-justified**: placeholder label grows to fill available width on the left; currency unit is fixed to the right.

#### Placeholder label

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Error | `#595959` | `--text/text-secondary` |
| Disable | `#595959` | `--text/text-secondary` |

The required asterisk `*` uses `--text/text-error` `#f0325e` (Default/Hover/Error) or `--text/text-tertiary` `#8c8c8c` (Disable).

Typography: `body-section` — 14px Regular 400, line-height 20px.

#### Currency unit (empty state)

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Error | `#8c8c8c` | `--text/text-tertiary` |
| Disable | `#c0c0c0` | `--text/text-disabled` |

### Mode B: Has Value / Floating Label (`fillText=true`)

Two-line layout: mini floating label on top, then a row containing the entered value (left) and currency unit (right).

#### Floating mini-label

| Status | Label color | Token |
|--------|------------|-------|
| Default / Hover / Focus On / Warning | `#222222` | `--text/text-primary` |
| Error | `#f0325e` | `--text/text-error` |
| Disable | `#595959` | `--text/text-secondary` |

The required asterisk `*` inherits the label colour. For Disable it uses `--text/text-tertiary` `#8c8c8c`.

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Entered value text

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Focus On / Warning / Error | `#222222` | `--text/text-primary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

#### Currency unit (filled state)

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Focus On / Warning / Error | `#222222` | `--text/text-primary` (inherited from group) |
| Disable | `#c0c0c0` | `--text/text-disabled` |

Typography: `header-caption` — 14px SemiBold 600, line-height 20px.

---

## Icons

Left and right icon slots exist but both default to `false`. When enabled:

| Icon | Size | Override prop |
|------|------|--------------|
| Left icon (`iconLeft=true`) | 24×24px | `changeIconL` |
| Right icon (`iconRight=true`) | 20×20px | `changeIconR` |

> When `iconRight=true`, the right icon renders **in addition to** the currency unit — the unit is part of the text-input area, not the icon slot.

---

## Help Text

Displayed below the field when `helpText=true`. Horizontal padding: `--padding/padding-small-12` (12px).

| Status | Visibility | Color | Token |
|--------|-----------|-------|-------|
| Default / Out Focus | Always | `#595959` | `--text/text-secondary` |
| Hover | Always | `#595959` | `--text/text-secondary` |
| Disable | Always | `#595959` | `--text/text-secondary` |
| Focus On | `fillText=true` only | `#595959` | `--text/text-secondary` |
| Warning | `fillText=true` only | `#fb7328` | `--text/text-warning` |
| Error | Always | `#f0325e` | `--text/text-error` |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder label / entered value | `body-section` | 14px | 400 | 20px |
| Currency unit | `header-caption` | 14px | **600** | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Help / error / warning text | `body-annotation` | 10px | 400 | 16px |

Font family: **Reddit Sans** (all elements).

> The currency unit uses **SemiBold (600)** while the entered value uses Regular (400) — both at 14px — visually distinguishing the unit from the amount.

---

## Comparison with Standard Input Field

| Feature | Input Field | Currency Input |
|---------|------------|---------------|
| `Success` state | Yes | **No** |
| Right trailing element | Info / Clear / Check icon | **Currency unit (always)** |
| Clear icon | On Error + fillText | **No** |
| Validation icon | `validationIcon` prop | **No** |
| `iconLeft` default | `false` | `false` |
| `iconRight` default | `true` | **`false`** |
| Currency unit prop | — | `currencyUnit` (default `"đ"`) |
| Value ↔ unit gap | — | `gap-small-12` (12px) |

---

## Token Reference Summary

```
/* Field container */
--radius/radius-card:        12px
--stroke/stroke-action:      2px
--padding/padding-medium-16: 16px   /* H padding */
--padding/padding-min-2:     2px    /* V padding */
--spacing/gap-x-small-8:     8px    /* Internal element gap */
--spacing/gap-small-12:      12px   /* Value ↔ currency unit gap */
--spacing/gap-2x-small-4:    4px    /* Field ↔ help text gap */

/* Backgrounds */
--background/light/background-primary:    #ffffff
--background/light/background-secondary:  #f4f4f4   /* Disable */

/* Borders */
--border/border-thin:      #e8e8e8
--border/border-black:     #222222   /* Hover, Focus On (filled) */
--border/border-warning:   #fb7328
--border/border-error:     #f0325e
--border/border-disabled:  #c0c0c0

/* Text */
--text/text-primary:    #222222   /* Entered value, floating label (default), currency unit (filled) */
--text/text-secondary:  #595959   /* Placeholder, disable floating label, help text */
--text/text-tertiary:   #8c8c8c   /* Currency unit (empty), disable * */
--text/text-disabled:   #c0c0c0   /* Currency unit (disable), disable * */
--text/text-error:      #f0325e   /* Error label, * asterisk, error help text */
--text/text-warning:    #fb7328   /* Warning help text */

/* Typography — currency unit */
--header/caption/header-caption-font-size:      14px
--header/caption/header-caption-font-weight:    600
--header/caption/header-caption-line-height:    20px
--header/caption/header-caption-letter-spacing: 0px

/* Typography — floating mini-label */
--label/annotation/label-annotation-font-size:      10px
--label/annotation/label-annotation-font-weight:    700
--label/annotation/label-annotation-line-height:    16px
--label/annotation/label-annotation-letter-spacing: 0px

/* Typography — placeholder / entered value */
--body/section/body-section-font-size:      14px
--body/section/body-section-font-weight:    400
--body/section/body-section-line-height:    20px
--body/section/body-section-letter-spacing: 0px

/* Typography — help text */
--body/annotation/body-annotation-font-size:      10px
--body/annotation/body-annotation-font-weight:    400
--body/annotation/body-annotation-line-height:    16px
--body/annotation/body-annotation-letter-spacing: 0px

/* Help text padding */
--padding/padding-small-12: 12px
```

---

## Behavior Notes

- **Currency unit is always visible** — it appears in the right-aligned position regardless of `fillText`, `status`, or icon visibility. Its colour shifts from muted (`text-tertiary`) when empty to dark (`text-primary`) when the field is filled.
- **`currencyUnit` prop** accepts any string — use `"đ"` for Vietnamese dong, or substitute any other currency symbol/abbreviation as needed.
- **No clear or validation icon** — the right side is reserved for the currency unit. Unlike the standard Input Field, there is no `×` on Error or `✓` on Success.
- **No `Success` state** — validation success is not visually indicated in this component.
- **Warning help text** is only shown when `fillText=true`, matching the Text Area behaviour.
- **Focus On empty** uses `border-thin`, matching the default. The `border-black` only activates when `fillText=true` and the user is actively focused.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Currency (full frame) | `1310:18064` |
| Default / Out Focus (empty) | `1310:18065` |
| Hover (empty) | `1310:18075` |
| Error (empty) | `1310:18085` |
| Disable (empty) | `1310:18095` |
| Focus On (filled) | `1310:18105` |
| Default / Out Focus (filled) | `1310:18116` |
| Hover (filled) | `1310:18127` |
| Error (filled) | `1310:18138` |
| Disable (filled) | `1310:18162` |
| Warning (filled) | `3495:10943` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
