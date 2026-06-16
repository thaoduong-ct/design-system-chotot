# Input Field — Multi-Select Dropdown Component — CHOTOT Design System v3.0

## Overview

The Multi-Select Dropdown is a dropdown input where **all selected values are always rendered as inline chip tags** inside the field. Unlike the standard Dropdown (which only shows chips in the `Focus On - Multi Chip` status), this component shows chips in every `fillText=true` state. A special `Focus On` state hides the chips and shows a plain placeholder to indicate the user is actively typing a new search term into the field. A Popover suggestion list appears when focused with text.

---

## Visual Preview

| Status | `fillText=false` | `fillText=true` |
|--------|-----------------|-----------------|
| Default / Out Focus | `border-thin` — placeholder + chevron ▾ | `border-thin` — floating label + chips + chevron ▾ |
| Hover | `border-black` — placeholder + chevron ▾ | `border-black` — floating label + chips + chevron ▾ |
| Focus On | `border-black` — placeholder + chevron ▾ | `border-black` — placeholder label + chevron ▾ + **Popover** |
| Focus On - Multi Chip | — | `border-black` — floating label + chips + `×` + chevron ▾ + **Popover** |
| Error | `border-error` — red placeholder + chevron ▾ | `border-error` — red floating label + chips + chevron ▾ |
| Disable | `border-disabled` grey bg — muted placeholder + grey chevron ▾ | `border-disabled` grey bg — muted label + disabled chips + grey chevron ▾ |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Error` \| `Disable` \| `Focus On - Multi Chip` \| `Focus On` | `Default/ Out Focus` |
| `fillText` | `true` \| `false` | `false` |
| `label` | string | `"Label"` |
| `label1` | `true` \| `false` | `true` |
| `requirement` | `true` \| `false` | `true` |
| `helpText` | `true` \| `false` | `true` |
| `iconLeft` | `true` \| `false` | `false` |
| `iconL` | ReactNode \| `null` | `null` |
| `dropdownPopOver` | `true` \| `false` | `true` |
| `inputHelpText` | string | `"This is help/error text."` |

> There is no `content` prop — selected values are always represented as chip tags, not a single text string.

---

## Anatomy

**`fillText=false` — placeholder mode:**

```
┌──────────────────────────────────────────────┐
│  [Icon L]  Label *                         ▾ │
└──────────────────────────────────────────────┘
   This is help/error text.
```

**`fillText=true`, status ≠ `Focus On` — chips mode:**

```
┌──────────────────────────────────────────────┐
│  [Icon L]  Label *                           │
│            [Chip] [Chip]         [×]       ▾ │  ← × only in Focus On - Multi Chip
└──────────────────────────────────────────────┘
   This is help/error text.
   ┌────────────────────────────────────────┐   ← Popover (Focus On - Multi Chip only)
   │ List                                   │
   │ List                                   │
   └────────────────────────────────────────┘
```

**`fillText=true`, status = `Focus On` — active typing mode:**

```
┌──────────────────────────────────────────────┐
│  [Icon L]  Label *                         ▾ │  ← placeholder (chips hidden, typing mode)
└──────────────────────────────────────────────┘
   This is help/error text.
   ┌────────────────────────────────────────┐
   │ List                                   │
   │ List                                   │
   └────────────────────────────────────────┘
```

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Container width | — | `300px` |
| Outer gap (field ↔ help text / popover) | `--spacing/gap-2x-small-4` | `4px` |
| Field height | — | `48px` |
| Field border radius | `--radius/radius-card` | `12px` |
| Field border width | `--stroke/stroke-action` | `2px` |
| Field padding horizontal | `--padding/padding-medium-16` | `16px` |
| Field padding vertical | `--padding/padding-min-2` | `2px` |
| Gap between internal elements | `--spacing/gap-x-small-8` | `8px` |
| Gap between chips | `--spacing/gap-2x-small-4` | `4px` |

---

## Status — Border & Background

| Status | Background | Border Token | Border |
|--------|-----------|-------------|--------|
| Default / Out Focus | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On (`fillText=false`) | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Focus On (`fillText=true`) | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On - Multi Chip (`fillText=true`) | `#ffffff` | `--border/border-black` | `#222222` |
| Error | `#ffffff` | `--border/border-error` | `#f0325e` |
| Disable | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text

### Placeholder Mode (`fillText=false`, or `Focus On` + `fillText=true`)

Shows centred placeholder label text and chevron.

| Status | Placeholder color | Token |
|--------|-----------------|-------|
| Default / Hover / Error | `#595959` | `--text/text-secondary` |
| Focus On + `fillText=true` | `#595959` | `--text/text-secondary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

Required `*`: `--text/text-error` `#f0325e` (Default/Hover/Error/FocusOn); unstyled/muted on Disable.

Typography: `body-section` — 14px Regular 400, line-height 20px.

### Chips Mode (`fillText=true`, status ≠ `Focus On`)

Shows floating mini-label above, chip tags row below.

#### Floating mini-label

| Status | Label color | Token |
|--------|------------|-------|
| Default / Hover / Focus On - Multi Chip | `#222222` | `--text/text-primary` |
| Error | `#f0325e` | `--text/text-error` |
| Disable | `#595959` | `--text/text-secondary` |

Required `*` inherits label colour (Disable: unstyled/muted).

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

---

## Chip Tags

### Active chips (Default / Hover / Focus On - Multi Chip / Error)

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-secondary` | `#f4f4f4` |
| Border radius | `99px` (pill) | — |
| Padding horizontal | — | `8px` |
| Padding vertical | — | `2px` |
| Gap between chips | `--spacing/gap-2x-small-4` | `4px` |
| Gap within chip | — | `2px` |
| Text color | `--text/text-primary` | `#222222` |

### Disabled chips (Disable + `fillText=true`)

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-tertiary` | `#e8e8e8` |
| Text color | `--text/text-disabled` | `#c0c0c0` |

> Disabled chips use a **darker grey background** (`background-tertiary` #e8e8e8) compared to active chips (`background-secondary` #f4f4f4).

Chip label typography: `body-caption` — 12px Regular 400, line-height 18px.

---

## Trailing Icons (right side of field)

| Status | Right icons |
|--------|------------|
| Default / Hover / Error (any fillText) | Chevron ▾ (24×24px, dark) |
| Focus On — `fillText=false` | Chevron ▾ (24×24px, dark) |
| Focus On — `fillText=true` | Chevron ▾ (24×24px, dark) |
| Focus On - Multi Chip + `fillText=true` | Close-fill `×` (20×20px) + Chevron ▾ (24×24px) |
| Disable (any fillText) | Chevron ▾ (24×24px, muted grey) |

---

## Popover (Dropdown List)

Appears when `fillText=true` AND (`status === "Focus On"` OR `status === "Focus On - Multi Chip"`) AND `dropdownPopOver=true`.

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Border | `--border/border-thin` | `#e8e8e8`, `--stroke/stroke-divider` `1px` |
| Border radius | `--radius/radius-card` | `12px` |
| Shadow | `Shadow/Shadow-below` | `0px 4px 8px 0px rgba(89,89,89,0.15)` |
| Padding vertical | `--padding/padding-2x-small-4` | `4px` |
| Height | — | `104px` (2 list items) |

List items: `body-section` (14px Regular), `text-primary` #222, padding H 16px / V 12px, separated by `border-divider` #f4f4f4 1px.

---

## Help Text

Shown below the field when `helpText=true`. Padding H: `--padding/padding-small-12` (12px).

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Disable / Focus On (`fillText=true`) / Focus On - Multi Chip (`fillText=true`) | `#595959` | `--text/text-secondary` |
| Error | `#f0325e` | `--text/text-error` |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder label | `body-section` | 14px | 400 | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Chip tag text | `body-caption` | 12px | 400 | 18px |
| Help text | `body-annotation` | 10px | 400 | 16px |
| Popover list item | `body-section` | 14px | 400 | 20px |

Font family: **Reddit Sans** (all elements).

---

## Comparison with Regular Dropdown (`929:38086`)

| Feature | Dropdown | **Multi-Select Dropdown** |
|---------|----------|--------------------------|
| `fillText=true` content | Single text value | **Always chips** |
| Chips in Default+filled | No | **Yes** |
| Chips in Hover+filled | No | **Yes** |
| Chips in Error+filled | No | **Yes** |
| Disabled chip bg | `background-secondary` #f4f4f4 | **`background-tertiary` #e8e8e8** |
| Disabled chip text | `text-primary` | **`text-disabled` #c0c0c0** |
| `Focus On` + `fillText=true` | Floating label + value | **Placeholder label (typing mode)** |
| Popover trigger | Focus On + fillText OR Focus On - Multi Chip + fillText | **Same** |
| `content` prop | Yes (single value string) | **No** |

---

## Token Reference Summary

```
/* Field container */
--radius/radius-card:        12px
--stroke/stroke-action:      2px
--padding/padding-medium-16: 16px
--padding/padding-min-2:     2px
--spacing/gap-x-small-8:     8px   /* Internal element gap */
--spacing/gap-2x-small-4:    4px   /* Chip gap; field ↔ popover/help gap */

/* Backgrounds */
--background/light/background-primary:    #ffffff
--background/light/background-secondary:  #f4f4f4   /* Disable field; active chip bg */
--background/light/background-tertiary:   #e8e8e8   /* Disable chip bg */

/* Borders */
--border/border-thin:      #e8e8e8
--border/border-black:     #222222   /* Hover, Focus On (filled), Focus On - Multi Chip */
--border/border-error:     #f0325e
--border/border-disabled:  #c0c0c0

/* Text */
--text/text-primary:    #222222   /* Floating label, active chip text */
--text/text-secondary:  #595959   /* Placeholder (active), disable label, help text */
--text/text-tertiary:   #8c8c8c   /* Placeholder (disable) */
--text/text-disabled:   #c0c0c0   /* Disable chip text */
--text/text-error:      #f0325e   /* Error label, *, error help text */

/* Typography — floating mini-label */
--label/annotation/label-annotation-font-size:      10px
--label/annotation/label-annotation-font-weight:    700
--label/annotation/label-annotation-line-height:    16px

/* Typography — placeholder */
--body/section/body-section-font-size:    14px
--body/section/body-section-font-weight:  400
--body/section/body-section-line-height:  20px

/* Typography — chip tags */
--body/caption/body-caption-font-size:    12px
--body/caption/body-caption-font-weight:  400
--body/caption/body-caption-line-height:  18px

/* Typography — help text */
--body/annotation/body-annotation-font-size:    10px
--body/annotation/body-annotation-font-weight:  400
--body/annotation/body-annotation-line-height:  16px

/* Popover */
--border/border-divider:       #f4f4f4
--stroke/stroke-divider:       1px
Shadow/Shadow-below:           0px 4px 8px 0px rgba(89,89,89,0.15)
--padding/padding-2x-small-4:  4px
--padding/padding-small-12:    12px
```

---

## Behavior Notes

- **Chips are the primary content** — this component has no single-text-value mode when `fillText=true`. Any selected values should be modelled as an array and rendered as chips.
- **`Focus On` hides chips and shows placeholder** — when the user clicks into the field to type a new search term, `status` changes from `Focus On - Multi Chip` to `Focus On`. This removes the chips from view, shows the plain placeholder label, and opens the Popover to display search suggestions. Chips are preserved in state but not shown during typing.
- **`Focus On - Multi Chip`** is the resting focused state — chips are visible, the `×` clear-all button appears, and the Popover is open.
- **Disabled chips** use a visually heavier grey background (`background-tertiary` #e8e8e8) vs active chips (`background-secondary` #f4f4f4) to make the disabled state clearly distinct.
- **Chevron-down is always shown** on the right — it does not disappear in any state.
- **`×` close icon** appears only in `Focus On - Multi Chip` + `fillText=true` — between the chips area and the chevron.
- **Popover** requires both `fillText=true` AND a focused status (`Focus On` or `Focus On - Multi Chip`); it does not appear when the field is empty.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Multi-Select Dropdown (full frame) | `8907:6848` |
| Default / Out Focus (empty) | `8907:6849` |
| Hover (empty) | `8907:6859` |
| Error (empty) | `8907:6869` |
| Disable (empty) | `8907:6879` |
| Default / Out Focus (filled — chips) | `8907:6889` |
| Hover (filled — chips) | `8907:6901` |
| Error (filled — chips) | `8907:6913` |
| Disable (filled — chips) | `8907:6925` |
| Focus On - Multi Chip (filled) | `8907:6950` |
| Focus On (filled — typing mode) | `14264:23590` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
