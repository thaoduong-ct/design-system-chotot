# Input Field — Range Component — CHOTOT Design System v3.0

## Overview

The Range Input is a price-range entry control composed of two side-by-side **Currency Input** fields — "Từ" (From) and "Đến" (To) — separated by a bold dash `–`. Both fields share the same state at all times and always display a `đ` currency unit on the right. Unlike the standalone Currency Input, there is no `fillText` prop: the component uses `Focus On` and `Error` states to activate the floating-label (filled) layout, and all other states show the placeholder layout.

---

## Visual Preview

| Style | Layout |
|-------|--------|
| Default | `border-thin` — "Từ" placeholder + `đ` right (muted) — `–` — "Đến" placeholder + `đ` right (muted) |
| Hover | `border-black` — same layout, darker border |
| Focus On | `border-black` — floating mini-labels + "Text" value + `đ` right (dark) |
| Error | `border-error` red — red floating mini-labels + "Text" value + `đ` right |
| Disable | `border-disabled` grey bg — muted labels + disabled `đ` |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `style` | `Default` \| `Hover` \| `Focus On` \| `Error` \| `Disable` | `Default` |
| `helpText` | `true` \| `false` | `true` |

> There is no `fillText`, `requirement`, `iconLeft`, `iconRight`, `currencyUnit`, or per-field content prop. Both fields are controlled entirely by `style`.

---

## Anatomy

```
┌─────────────────────┐       ┌─────────────────────┐
│  Từ              đ  │   –   │  Đến             đ  │   ← Default/Hover/Disable (placeholder mode)
└─────────────────────┘       └─────────────────────┘
   This is help/error text.
```

**When `style = "Focus On"` or `"Error"` (floating label mode):**

```
┌─────────────────────┐       ┌─────────────────────┐
│  Từ                 │   –   │  Đến                │
│  Text            đ  │       │  Text            đ  │   ← mini-label + value + currency unit
└─────────────────────┘       └─────────────────────┘
   This is help/error text.
```

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Container width | — | `300px` |
| Outer gap (field row ↔ help text) | `--spacing/gap-2x-small-4` | `4px` |
| Gap between From field, dash, and To field | `--spacing/gap-small-12` | `12px` |
| Each currency field | `flex: 1` | Equal width, fills available space |
| Field height | — | `48px` |
| Field border radius | `--radius/radius-card` | `12px` |
| Field border width | `--stroke/stroke-action` | `2px` |
| Field padding horizontal | `--padding/padding-medium-16` | `16px` |
| Field padding vertical | `--padding/padding-min-2` | `2px` |
| Gap within each field | `--spacing/gap-x-small-8` | `8px` |

---

## Status — Border & Background (both fields)

| Style | Background Token | Background | Border Token | Border |
|-------|-----------------|-----------|-------------|--------|
| Default | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Error | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Disable | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text — Two Layout Modes

The layout mode is driven by `style`, not a `fillText` prop:

| Style | Layout mode |
|-------|------------|
| Default / Hover / Disable | **Placeholder mode** — label centred, `đ` right-aligned |
| Focus On / Error | **Floating label mode** — mini-label top, value + `đ` row below |

### Placeholder Mode (Default / Hover / Disable)

Both fields show their label text ("Từ" / "Đến") centred vertically on the left, with the `đ` unit right-aligned.

#### Placeholder label ("Từ" / "Đến")

| Style | Color | Token |
|-------|-------|-------|
| Default / Hover | `#595959` | `--text/text-secondary` |
| Disable | `#595959` | `--text/text-secondary` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

#### Currency unit `đ` (placeholder mode)

| Style | Color | Token |
|-------|-------|-------|
| Default / Hover | `#8c8c8c` | `--text/text-tertiary` |
| Disable | `#c0c0c0` | `--text/text-disabled` |

Typography: `header-caption` — 14px SemiBold 600, line-height 20px.

### Floating Label Mode (Focus On / Error)

Both fields show a mini floating label on top and an entered value row below.

#### Floating mini-label ("Từ" / "Đến")

| Style | Color | Token |
|-------|-------|-------|
| Focus On | `#222222` | `--text/text-primary` |
| Error | `#f0325e` | `--text/text-error` |

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Entered value text

Both Focus On and Error: color `#222222` (`--text/text-primary`).

Typography: `body-section` — 14px Regular 400, line-height 20px.

#### Currency unit `đ` (floating mode)

Both Focus On and Error: inherits group color `#222222` (`--text/text-primary`).

Typography: `header-caption` — 14px SemiBold 600, line-height 20px.

---

## Dash Separator

A bold `–` character rendered between the two fields.

| Property | Token | Value |
|----------|-------|-------|
| Typography style | `label-section` | — |
| Font size | `--label/section/label-section-font-size` | `14px` |
| Font weight | `--label/section/label-section-font-weight` | `700` (Bold) |
| Line height | `--label/section/label-section-line-height` | `20px` |
| Color | `--text/text-primary` | `#222222` |

The dash is `shrink-0` and does not change colour across states.

---

## Help Text

Displayed below the field row when `helpText=true`. Horizontal padding: `--padding/padding-small-12` (12px).

| Style | Color | Token | Default text |
|-------|-------|-------|-------------|
| Default / Hover / Focus On / Disable | `#595959` | `--text/text-secondary` | "This is help/error text." |
| Error | `#f0325e` | `--text/text-error` | "Vui lòng nhập số" _(Please enter a number)_ |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder label ("Từ" / "Đến") | `body-section` | 14px | 400 | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Entered value text | `body-section` | 14px | 400 | 20px |
| Currency unit `đ` | `header-caption` | 14px | **600** | 20px |
| Dash separator `–` | `label-section` | 14px | **700** | 20px |
| Help text | `body-annotation` | 10px | 400 | 16px |

Font family: **Reddit Sans** (all elements).

---

## Token Reference Summary

```
/* Container */
--spacing/gap-small-12:      12px   /* Between From, dash, and To fields */
--spacing/gap-2x-small-4:    4px    /* Field row ↔ help text */

/* Each field */
--radius/radius-card:        12px
--stroke/stroke-action:      2px
--padding/padding-medium-16: 16px   /* Field H padding */
--padding/padding-min-2:     2px    /* Field V padding */
--spacing/gap-x-small-8:     8px    /* Field internal gap */
--spacing/gap-min-2:         2px    /* Label row gap */
--spacing/gap-small-12:      12px   /* Value ↔ currency unit gap (floating mode) */

/* Backgrounds */
--background/light/background-primary:    #ffffff
--background/light/background-secondary:  #f4f4f4   /* Disable */

/* Borders */
--border/border-thin:      #e8e8e8   /* Default */
--border/border-black:     #222222   /* Hover, Focus On */
--border/border-error:     #f0325e   /* Error */
--border/border-disabled:  #c0c0c0   /* Disable */

/* Text */
--text/text-primary:    #222222   /* Floating label (Focus On), value, currency unit (floating), dash */
--text/text-secondary:  #595959   /* Placeholder label, help text */
--text/text-tertiary:   #8c8c8c   /* Currency unit (placeholder, Default/Hover) */
--text/text-disabled:   #c0c0c0   /* Currency unit (Disable) */
--text/text-error:      #f0325e   /* Floating label (Error), error help text */

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

/* Typography — currency unit */
--header/caption/header-caption-font-size:      14px
--header/caption/header-caption-font-weight:    600
--header/caption/header-caption-line-height:    20px
--header/caption/header-caption-letter-spacing: 0px

/* Typography — dash separator */
--label/section/label-section-font-size:      14px
--label/section/label-section-font-weight:    700
--label/section/label-section-line-height:    20px
--label/section/label-section-letter-spacing: 0px

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

- **Both fields always share the same `style`** — there is no way to put the From field in one state and the To field in another through props.
- **No `fillText` prop** — the floating-label layout is triggered automatically by `style="Focus On"` or `style="Error"`. In all other states the placeholder layout is used.
- **Currency unit is hardcoded as `đ`** in the Figma component — there is no `currencyUnit` prop override at the Range level (unlike the standalone Currency Input).
- **Error help text is in Vietnamese** — the default error message is "Vui lòng nhập số" (Please enter a number), reflecting the numeric-only constraint of price range inputs.
- **No `requirement` asterisk** — neither field shows a `*` indicator.
- **Dash separator is always `text-primary`** — it does not change colour or become muted on Disable.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Range (full frame) | `1310:19228` |
| Default | `1310:19135` |
| Hover | `1310:19131` |
| Focus On | `12340:24746` |
| Error | `1310:19130` |
| Disable | `1310:19134` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
