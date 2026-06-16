# Input Field — Text Area Component — CHOTOT Design System v3.0

## Overview

The Text Area is the multi-line variant of the Input Field. It shares the same floating label pattern, status colour system, and help text behaviour as the single-line Input Field, but with key differences: it has a fixed taller height, no left/right icons, and a clear `×` button that appears inside the field whenever text is present. There is no `Success` state in this variant.

---

## Visual Preview

| Status | `fillText=false` | `fillText=true` |
|--------|-----------------|-----------------|
| Default | `border-thin` placeholder | `border-thin` floating label + value + `×` |
| Hover | `border-black` placeholder | `border-black` floating label + value + `×` |
| Focus On | `border-thin` (no placeholder) | `border-black` floating label + value + `×` |
| Warning | — (no placeholder shown) | `border-warning` orange floating label + value + `×` |
| Error | `border-error` red placeholder | `border-error` red floating label + value + `×` |
| Disable | `border-disabled` grey bg | `border-disabled` grey bg, muted text |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `status` | `Default` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Warning` | `Default` |
| `fillText` | `true` \| `false` | `false` |
| `label` | `true` \| `false` | `true` |
| `requirement` | `true` \| `false` | `true` |
| `helpErrorText` | `true` \| `false` | `true` |
| `clearIcon` | `true` \| `false` | `true` |
| `inputLabel` | string | `"Label"` |
| `inputText` | string | `"Text"` |
| `inputHelpText` | string | `"This is help text."` |

> **Note:** There is no `iconLeft`, `iconRight`, `validationIcon`, or `Success` state — these exist only in the single-line Input Field variant.

---

## Anatomy

```
┌─────────────────────────────────────────────┐
│  Label *                               [×]  │  ← fillText=true: floating label + clear icon
│  Text                                       │  ← entered value (multi-line)
│                                             │
└─────────────────────────────────────────────┘
   This is help text.                          ← help text (optional)
```

**When `fillText=false`:**

```
┌─────────────────────────────────────────────┐
│  Label *                                    │  ← placeholder centred at top-left
│                                             │
│                                             │
└─────────────────────────────────────────────┘
   This is help text.
```

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Total container height | — | `108px` (flex column) |
| Container width | — | `300px` |
| Outer gap (field ↔ help text) | `--spacing/gap-2x-small-4` | `4px` |
| Field border radius | `--radius/radius-card` | `12px` |
| Field border width | `--stroke/stroke-action` | `2px` |
| Field padding horizontal | `--padding/padding-medium-16` | `16px` |
| Field padding vertical | `--padding/padding-2x-small-4` | `4px` |
| Text-input inner padding V | `--padding/padding-min-2` | `2px` |
| Gap between label and value (fillText=true) | `--spacing/gap-min-2` | `2px` |
| Internal gap (fillText=true, has clear icon) | `--spacing/gap-x-small-8` | `8px` |

---

## Status — Border & Background

| Status | `fillText` | Background Token | Background | Border Token | Border |
|--------|-----------|-----------------|-----------|-------------|--------|
| Default | false | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Default | true | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | false | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Hover | true | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On | false | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Focus On | true | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Warning | true | `--background/light/background-primary` | `#ffffff` | `--border/border-warning` | `#fb7328` |
| Error | false | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Error | true | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Disable | false / true | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text

### Mode A: Empty / Placeholder (`fillText=false`)

Placeholder label shown at top-left of field. Visible only in **Default**, **Hover**, and **Error** states (not Warning, Focus On empty, or Disable).

| Status | Placeholder color |
|--------|-----------------|
| Default / Hover / Error | `--text/text-secondary` `#595959` |
| Disable | `--text/text-secondary` `#595959` |

The required asterisk `*` is shown in `--text/text-error` `#f0325e` (except Disable, where it is unstyled/muted).

Typography: `body-section` — 14px Regular 400, line-height 20px.

### Mode B: Has Value / Floating Label (`fillText=true`)

Two-line layout inside the field: mini floating label on top, entered value below.

#### Floating mini-label

| Status | Label color |
|--------|------------|
| Default / Hover / Focus On / Warning | `--text/text-primary` `#222222` |
| Error | `--text/text-error` `#f0325e` |
| Disable | `--text/text-secondary` `#595959` |

The required asterisk `*` inherits the label colour per status.

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Entered value text

| Status | Text color |
|--------|-----------|
| Default / Hover / Focus On / Warning / Error | `--text/text-primary` `#222222` |
| Disable | `--text/text-tertiary` `#8c8c8c` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Clear Icon (`×`)

A 20×20px `Close-fill` icon is shown in the right area of the field, vertically centred, when `fillText=true` and `clearIcon=true`.

| Status + fillText | Clear icon visible |
|-------------------|--------------------|
| Default + true | Yes |
| Hover + true | Yes |
| Focus On + true | Yes |
| Warning + true | Yes |
| Error + true | Yes |
| Disable + true | **No** |

> There are no left/right icon props on the Text Area — the clear icon is the only trailing element.

---

## Help Text

Displayed below the field when `helpErrorText=true`. Horizontal padding: `--padding/padding-small-12` (12px).

| Status | Visibility condition | Help text color | Token |
|--------|---------------------|----------------|-------|
| Default | Always | `#595959` | `--text/text-secondary` |
| Hover | Always | `#595959` | `--text/text-secondary` |
| Disable | Always | `#595959` | `--text/text-secondary` |
| Focus On | `fillText=true` only | `#595959` | `--text/text-secondary` |
| Warning | `fillText=true` only | `#fb7328` | `--text/text-warning` |
| Error | Always | `#f0325e` | `--text/text-error` |

> Warning help text is **only visible when `fillText=true`**. It does not show on an empty Warning-state textarea.

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

## Comparison with Single-line Input Field

| Feature | Input Field (single-line) | Text Area |
|---------|--------------------------|-----------|
| Height | 48px | ~100px (108px total with help text) |
| `Success` state | Yes | **No** |
| Left icon | Optional (`iconLeft`) | **No** |
| Right icon | Optional (`iconRight`) | **No** |
| Clear icon | Conditional (Error + fillText) | Any status with fillText |
| Validation icon | `validationIcon` prop | **No** |
| Help text prop name | `helpText` | `helpErrorText` |
| Warning empty state | Shows placeholder | **No placeholder shown** |
| Focus On empty border | `border-thin` | `border-thin` |

---

## Token Reference Summary

```
/* Field container */
--radius/radius-card:           12px
--stroke/stroke-action:         2px
--padding/padding-medium-16:    16px   /* H padding */
--padding/padding-2x-small-4:   4px    /* V padding */
--padding/padding-min-2:        2px    /* Inner text area V padding */
--spacing/gap-x-small-8:        8px    /* Internal gap (with clear icon) */
--spacing/gap-min-2:            2px    /* Label ↔ value gap */
--spacing/gap-2x-small-4:       4px    /* Field ↔ help text gap */

/* Backgrounds */
--background/light/background-primary:    #ffffff   /* All states except Disable */
--background/light/background-secondary:  #f4f4f4   /* Disable */

/* Borders */
--border/border-thin:      #e8e8e8   /* Default, Focus On (empty) */
--border/border-black:     #222222   /* Hover, Focus On (filled) */
--border/border-warning:   #fb7328   /* Warning */
--border/border-error:     #f0325e   /* Error */
--border/border-disabled:  #c0c0c0   /* Disable */

/* Text */
--text/text-primary:    #222222   /* Entered value, floating label (default/hover/focus/warning) */
--text/text-secondary:  #595959   /* Placeholder label, disable floating label, help text */
--text/text-tertiary:   #8c8c8c   /* Entered value (disable) */
--text/text-error:      #f0325e   /* Error label, required *, error help text */
--text/text-warning:    #fb7328   /* Warning help text */

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

- **Floating label** — same as single-line: centred 14px placeholder when empty, shrinks to 10px Bold and rises to the top once text is entered.
- **Clear icon always visible when filled** (except Disable) — unlike the single-line variant where it only appears on Error, the Text Area shows `×` for Default, Hover, Focus On, Warning, and Error when `fillText=true`.
- **Warning state empty** — no placeholder label is rendered. The Warning state is only meaningful when `fillText=true`.
- **No `Success` state** — this component has 6 statuses vs 7 in the single-line Input Field.
- **Multi-line growth** — the Figma frame is fixed at 108px total, but in implementation the textarea should be allowed to grow vertically with content.
- **Disable** state removes all interaction: grey background, muted border, tertiary entered text, no clear icon.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Text Area (full frame) | `902:30203` |
| Default (empty) | `902:30194` |
| Hover (empty) | `903:30316` |
| Error (empty) | `903:31294` |
| Disable (empty) | `903:31281` |
| Default (filled) | `903:31287` |
| Hover (filled) | `903:31360` |
| Focus On (filled) | `903:30217` |
| Warning (filled) | `3499:14095` |
| Error (filled) | `903:30224` |
| Disable (filled) | `903:31567` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
