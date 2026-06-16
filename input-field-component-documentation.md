# Input Field Component — CHOTOT Design System v3.0

## Overview

The Input Field is a single-line text input with a floating label pattern. When empty (`fillText=false`) it shows a centred placeholder label; once text is entered (`fillText=true`) the label shrinks and floats to the top of the field while the entered value appears below it. It supports left/right icons, a required-field asterisk, an optional help/error/warning text below the field, and seven distinct status states.

---

## Visual Preview

| Status | Border | Background | Notes |
|--------|--------|-----------|-------|
| Default / Out Focus | `border-thin` `#e8e8e8` | `#ffffff` | Placeholder label visible |
| Hover | `border-black` `#222222` | `#ffffff` | Darker border on mouse-over |
| Focus On | `border-black` `#222222` | `#ffffff` | Active typing state (border-black when fillText=true) |
| Warning | `border-warning` `#fb7328` | `#ffffff` | Orange border, orange help text |
| Error | `border-error` `#f0325e` | `#ffffff` | Red border, red label (fillText) & help text |
| Success | `border-thin` `#e8e8e8` | `#ffffff` | Green check icon replaces right icon |
| Disable | `border-disabled` `#c0c0c0` | `#f4f4f4` | Grey bg, no interaction |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Success` \| `Disable` \| `Warning` | `Default/ Out Focus` |
| `fillText` | `true` \| `false` | `false` |
| `label` | `true` \| `false` | `true` |
| `requirement` | `true` \| `false` | `true` |
| `helpText` | `true` \| `false` | `true` |
| `iconLeft` | `true` \| `false` | `false` |
| `iconRight` | `true` \| `false` | `true` |
| `clearText` | `true` \| `false` | `true` |
| `validationIcon` | `true` \| `false` | `true` |
| `changeIconL` | ReactNode \| `null` | `null` |
| `changeIconR` | ReactNode \| `null` | `null` |
| `inputLabel` | string | `"Label"` |
| `inputText` | string | `"Text"` |
| `inputHelpText` | string | `"This is help/error text."` |

---

## Anatomy

```
┌──────────────────────────────────────────────────┐
│  [Icon L]  Label *                  [Icon R / ×] │  ← input-field (48px)
└──────────────────────────────────────────────────┘
   This is help/error text.                          ← help text (optional)
```

**When `fillText=true` (floating label mode):**

```
┌──────────────────────────────────────────────────┐
│  [Icon L]  Label *                  [Icon R / ✓] │
│            Text                                   │
└──────────────────────────────────────────────────┘
   This is help/error text.
```

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Outer container width | — | `300px` |
| Outer gap (field ↔ help text) | `--spacing/gap-2x-small-4` | `4px` |
| Field height | — | `48px` |
| Field border radius | `--radius/radius-card` | `12px` |
| Field border width | `--stroke/stroke-action` | `2px` |
| Field padding horizontal | `--padding/padding-medium-16` | `16px` |
| Field padding vertical | `--padding/padding-min-2` | `2px` |
| Gap between internal elements | `--spacing/gap-x-small-8` | `8px` |

---

## Status — Border & Background

| Status | Background Token | Background | Border Token | Border |
|--------|-----------------|-----------|-------------|--------|
| Default / Out Focus | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On (`fillText=false`) | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Focus On (`fillText=true`) | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Warning | `--background/light/background-primary` | `#ffffff` | `--border/border-warning` | `#fb7328` |
| Error | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Success | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Disable | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text — Two Modes

### Mode A: Empty / Placeholder (`fillText=false`)

The label floats in the vertical centre of the field as a placeholder.

| Status | Label text color | `*` color |
|--------|-----------------|----------|
| Default / Hover / Warning / Error | `--text/text-secondary` `#595959` | `--text/text-error` `#f0325e` |
| Disable | `--text/text-tertiary` `#8c8c8c` | `--text/text-tertiary` `#8c8c8c` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

### Mode B: Has Value / Floating Label (`fillText=true`)

The field shows two lines: a mini floating label above, and the entered value below.

#### Floating mini-label

| Status | Label color | `*` color |
|--------|------------|----------|
| Default / Hover / Focus On / Warning / Success | `--text/text-primary` `#222222` | `--text/text-error` `#f0325e` |
| Error | `--text/text-error` `#f0325e` | `--text/text-error` `#f0325e` |
| Disable | `--text/text-secondary` `#595959` | `--text/text-secondary` `#595959` |

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Entered value text

| Status | Text color |
|--------|-----------|
| Default / Hover / Focus On / Warning / Error / Success | `--text/text-primary` `#222222` |
| Disable | `--text/text-tertiary` `#8c8c8c` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Icons

### Left Icon (`iconLeft=true`)

| Property | Value |
|----------|-------|
| Size | 24×24px |
| Override | `changeIconL` prop accepts a custom ReactNode |

### Right Icon (`iconRight=true`)

The right icon changes based on `status` and `fillText`:

| Condition | Icon | Size |
|-----------|------|------|
| Default / Hover / Warning / Error(`fillText=false`) / Disable / Focus On(`fillText=true`) | Info icon `ⓘ` | 20×20px |
| Error + `fillText=true` + `clearText=true` | Close-fill `×` | 20×20px |
| Success + `fillText=true` + `validationIcon=true` | CircleCheck-fill `✓` | 20×20px |

Override right icon with `changeIconR` prop.

---

## Help Text

Displayed below the input field when `helpText=true`. Horizontal padding: `--padding/padding-small-12` (12px).

| Status | Help text color | Token |
|--------|----------------|-------|
| Default / Hover / Disable / Focus On(`fillText=true`) / Success | `#595959` | `--text/text-secondary` |
| Warning | `#fb7328` | `--text/text-warning` |
| Error | `#f0325e` | `--text/text-error` |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder label / entered value | `body-section` | 14px | 400 | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Help / error / warning text | `body-annotation` | 10px | 400 | 16px |

Font family: **Reddit Sans** (all elements).

---

## Token Reference Summary

```
/* Field container */
--radius/radius-card:        12px
--stroke/stroke-action:      2px
--padding/padding-medium-16: 16px   /* H padding */
--padding/padding-min-2:     2px    /* V padding */
--spacing/gap-x-small-8:     8px    /* Internal gap */
--spacing/gap-2x-small-4:    4px    /* Field ↔ help text gap */

/* Backgrounds */
--background/light/background-primary:    #ffffff   /* All states except Disable */
--background/light/background-secondary:  #f4f4f4   /* Disable */

/* Borders */
--border/border-thin:      #e8e8e8   /* Default / Out Focus, Focus On (empty), Success */
--border/border-black:     #222222   /* Hover, Focus On (filled) */
--border/border-warning:   #fb7328   /* Warning */
--border/border-error:     #f0325e   /* Error */
--border/border-disabled:  #c0c0c0   /* Disable */

/* Text */
--text/text-primary:    #222222   /* Entered value, floating label (default) */
--text/text-secondary:  #595959   /* Placeholder label, disable floating label, help text */
--text/text-tertiary:   #8c8c8c   /* Placeholder (disable), entered value (disable) */
--text/text-error:      #f0325e   /* Required *, error label & help text */
--text/text-warning:    #fb7328   /* Warning help text */

/* Typography — floating mini-label */
--label/annotation/label-annotation-font-size:    10px
--label/annotation/label-annotation-font-weight:  700
--label/annotation/label-annotation-line-height:  16px
--label/annotation/label-annotation-letter-spacing: 0px

/* Typography — placeholder / entered value */
--body/section/body-section-font-size:    14px
--body/section/body-section-font-weight:  400
--body/section/body-section-line-height:  20px
--body/section/body-section-letter-spacing: 0px

/* Typography — help text */
--body/annotation/body-annotation-font-size:    10px
--body/annotation/body-annotation-font-weight:  400
--body/annotation/body-annotation-line-height:  16px
--body/annotation/body-annotation-letter-spacing: 0px

/* Help text padding */
--padding/padding-small-12: 12px
```

---

## Behavior Notes

- **Floating label pattern:** When `fillText=false` the `inputLabel` is displayed as a 14px placeholder centred vertically in the field. When `fillText=true` it shrinks to 10px Bold and rises to the top of the field, making room for the 14px entered value below it.
- **`requirement=true`** appends a red `*` after the label in all states except Disable (where it inherits the muted colour).
- **`label=false`** hides the floating mini-label entirely when `fillText=true` — only the entered value is shown.
- **Right icon is context-sensitive:** the default info icon `ⓘ` is replaced by a clear `×` when there is an error with entered text, and by a check `✓` on success.
- **Focus On without fillText** uses `border-thin` (same as Default), not `border-black`. The black border on Focus On only activates once the field has entered text (`fillText=true`).
- **Help text visibility** is per-status: only visible in Default, Hover, Disable, Focus On (`fillText=true`), Success, Warning, and Error states.
- **Disable** state removes interaction: grey background, muted border, tertiary text colour.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Input (full frame) | `899:29336` |
| Default / Out Focus (empty) | `899:29108` |
| Hover (empty) | `903:30322` |
| Hover (filled) | `903:31300` |
| Focus On (filled) | `899:29337` |
| Default / Out Focus (filled) | `903:30546` |
| Warning (empty) | `5070:14348` |
| Warning (filled) | `3495:10932` |
| Error (empty) | `903:30669` |
| Error (filled) | `899:29377` |
| Success (filled) | `899:29397` |
| Disable (empty) | `903:30723` |
| Disable (filled) | `903:30526` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
