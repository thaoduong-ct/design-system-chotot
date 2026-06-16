# Input Field — Dropdown Component — CHOTOT Design System v3.0

## Overview

The Dropdown Input is a select/picker variant of the Input Field. It uses the same 48px floating-label field with a persistent **chevron-down** arrow on the right to indicate it opens a list. When focused with a selection, a **Popover** list appears directly below. A special `Focus On - Multi Chip` status supports displaying multiple selected values as inline chip tags inside the field, with a clear `×` button alongside the chevron.

---

## Visual Preview

| Status | `fillText=false` | `fillText=true` |
|--------|-----------------|-----------------|
| Default / Out Focus | `border-thin` — placeholder + chevron ▾ | `border-thin` — floating label + value + chevron ▾ |
| Hover | `border-black` — placeholder + chevron ▾ | `border-black` — floating label + value + chevron ▾ |
| Focus On | `border-thin` | `border-black` — floating label + value + chevron ▾ + **Popover** |
| Focus On - Multi Chip | — | `border-black` — floating label + chips + `×` + chevron ▾ + **Popover** |
| Error | `border-error` — red placeholder + chevron ▾ | `border-error` — red label + value + chevron ▾ |
| Disable | `border-disabled` grey bg — muted placeholder + grey chevron ▾ | `border-disabled` grey bg — muted label + value + grey chevron ▾ |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Focus On - Multi Chip` | `Default/ Out Focus` |
| `fillText` | `true` \| `false` | `false` |
| `label` | string | `"Label"` |
| `label1` | `true` \| `false` | `true` |
| `requirement` | `true` \| `false` | `true` |
| `helpText` | `true` \| `false` | `true` |
| `iconLeft` | `true` \| `false` | `false` |
| `iconL` | ReactNode \| `null` | `null` |
| `content` | string | `"Text"` |
| `dropdownPopOver` | `true` \| `false` | `true` |
| `inputHelpText` | string | `"This is help/error text."` |

> **Prop note:** `label` is the label text string; `label1` is the boolean that toggles its visibility. `content` is the selected value string (equivalent to `inputText` in other variants).

---

## Anatomy

```
┌────────────────────────────────────────────────┐
│  [Icon L]  Label *               [value]     ▾ │  ← fillText=false: placeholder + chevron
└────────────────────────────────────────────────┘
   This is help/error text.
```

**When `fillText=true` (floating label + single selection):**

```
┌────────────────────────────────────────────────┐
│  [Icon L]  Label *                           ▾ │
│            Text                                │
└────────────────────────────────────────────────┘
   ┌──────────────────────────────────────────┐   ← Popover (Focus On only)
   │ List                                     │
   │ List                                     │
   └──────────────────────────────────────────┘
```

**When `status = Focus On - Multi Chip` + `fillText=true`:**

```
┌────────────────────────────────────────────────┐
│  Label *                                       │
│  [Chip] [Chip]                       [×]     ▾ │  ← chips + clear icon + chevron
└────────────────────────────────────────────────┘
   ┌──────────────────────────────────────────┐
   │ List                                     │
   │ List                                     │
   └──────────────────────────────────────────┘
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

---

## Status — Border & Background

| Status | Background Token | Background | Border Token | Border |
|--------|-----------------|-----------|-------------|--------|
| Default / Out Focus | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On (`fillText=false`) | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Focus On (`fillText=true`) | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On - Multi Chip (`fillText=true`) | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Error | `--background/light/background-primary` | `#ffffff` | `--border/border-error` | `#f0325e` |
| Disable | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

---

## Internal Text — Two Modes

### Mode A: Empty / Placeholder (`fillText=false`)

| Status | Placeholder color | Token |
|--------|-----------------|-------|
| Default / Hover / Error | `#595959` | `--text/text-secondary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

Required `*`: `--text/text-error` `#f0325e` (Default/Hover/Error); muted/unstyled on Disable.

Typography: `body-section` — 14px Regular 400, line-height 20px.

### Mode B: Has Selection / Floating Label (`fillText=true`)

#### Floating mini-label

| Status | Label color | Token |
|--------|------------|-------|
| Default / Hover / Focus On / Focus On - Multi Chip | `#222222` | `--text/text-primary` |
| Error | `#f0325e` | `--text/text-error` |
| Disable | `#595959` | `--text/text-secondary` |

Required `*` inherits label colour.

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Selected value text (single selection)

Shown for Default, Hover, Focus On statuses.

| Status | Color | Token |
|--------|-------|-------|
| Default / Hover / Focus On | `#222222` | `--text/text-primary` |
| Error | `#222222` | `--text/text-primary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Chevron-Down Icon

Always present on the right of the field (24×24px).

| Status | Icon colour |
|--------|------------|
| Default / Hover / Focus On / Error | Dark (active) |
| Disable | Muted grey |
| Focus On - Multi Chip | Dark (active) — rendered alongside `×` close icon |

---

## Focus On - Multi Chip Mode

When `status = "Focus On - Multi Chip"` and `fillText=true`, the selected value area renders **inline chip tags** instead of plain text, plus a `×` clear button.

### Chip tags

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-secondary` | `#f4f4f4` |
| Border radius | `99px` (pill) | — |
| Padding horizontal | — | `8px` |
| Padding vertical | — | `2px` |
| Gap between chips | `--spacing/gap-2x-small-4` | `4px` |
| Gap within chip (icon + label) | — | `2px` |

#### Chip label typography

| Token | Value |
|-------|-------|
| Style | `body-caption` |
| `--body/caption/body-caption-font-size` | `12px` |
| `--body/caption/body-caption-font-weight` | `400` |
| `--body/caption/body-caption-line-height` | `18px` |
| Color | `--text/text-primary` `#222222` |

### Clear icon (`×`)

A 20×20px `Close-fill` icon appears between the chips area and the chevron when in Multi Chip mode.

### Right trailing icons in Multi Chip mode

```
[chips area]  [×  20px]  [▾  24px]
```

---

## Popover (Dropdown List)

The popover appears **below the field** when `fillText=true` AND `status` is `Focus On` or `Focus On - Multi Chip` AND `dropdownPopOver=true`.

### Popover container

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Border | `--border/border-thin` | `#e8e8e8`, `--stroke/stroke-divider` `1px` |
| Border radius | `--radius/radius-card` | `12px` |
| Shadow | `Shadow/Shadow-below` | `0px 4px 8px 0px rgba(89,89,89,0.15)` |
| Padding vertical | `--padding/padding-2x-small-4` | `4px` |
| Width | — | `100%` (matches field) |

### Popover list items

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Bottom border | `--border/border-divider` | `#f4f4f4`, `--stroke/stroke-divider` `1px` |
| Padding horizontal | `--padding/padding-medium-16` | `16px` |
| Padding vertical | `--padding/padding-small-12` | `12px` |
| Gap | `--spacing/gap-x-small-8` | `8px` |
| Text color | `--text/text-primary` | `#222222` |
| Text height | — | `24px` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Help Text

Displayed below the field (or below the popover when open) when `helpText=true`. Horizontal padding: `--padding/padding-small-12` (12px).

| Status | Visibility | Color | Token |
|--------|-----------|-------|-------|
| Default / Out Focus | Always | `#595959` | `--text/text-secondary` |
| Hover | Always | `#595959` | `--text/text-secondary` |
| Disable | Always | `#595959` | `--text/text-secondary` |
| Focus On (`fillText=true`) | Yes | `#595959` | `--text/text-secondary` |
| Focus On - Multi Chip (`fillText=true`) | Yes | `#595959` | `--text/text-secondary` |
| Error | Always | `#f0325e` | `--text/text-error` |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder / selected value | `body-section` | 14px | 400 | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Multi Chip tag text | `body-caption` | 12px | 400 | 18px |
| Help / error text | `body-annotation` | 10px | 400 | 16px |
| Popover list item | `body-section` | 14px | 400 | 20px |

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
--spacing/gap-2x-small-4:    4px    /* Field ↔ popover/help gap; chip gap */

/* Backgrounds */
--background/light/background-primary:    #ffffff
--background/light/background-secondary:  #f4f4f4   /* Disable bg; chip bg */

/* Borders */
--border/border-thin:      #e8e8e8   /* Default, Focus On (empty) */
--border/border-black:     #222222   /* Hover, Focus On (filled), Multi Chip */
--border/border-error:     #f0325e   /* Error */
--border/border-disabled:  #c0c0c0   /* Disable */

/* Text */
--text/text-primary:    #222222   /* Selected value, floating label (default/hover/focus) */
--text/text-secondary:  #595959   /* Placeholder (default/hover/error), disable label, help text */
--text/text-tertiary:   #8c8c8c   /* Placeholder (disable), selected value (disable) */
--text/text-error:      #f0325e   /* Error label, * asterisk, error help text */

/* Typography — floating mini-label */
--label/annotation/label-annotation-font-size:      10px
--label/annotation/label-annotation-font-weight:    700
--label/annotation/label-annotation-line-height:    16px

/* Typography — placeholder / selected value / popover items */
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
--border/border-divider:    #f4f4f4   /* Popover border & list item dividers */
--stroke/stroke-divider:    1px
Shadow/Shadow-below:        0px 4px 8px 0px rgba(89,89,89,0.15)
--padding/padding-2x-small-4: 4px   /* Popover V padding */
--padding/padding-small-12:   12px  /* List item V padding & help text H padding */
```

---

## Behavior Notes

- **Chevron is always shown** — unlike the standard Input Field where the right icon is context-sensitive, the chevron-down is always present to signal dropdown affordance.
- **Popover appears only when focused with a selection** — `dropdownPopOver=true` AND `fillText=true` AND status is `Focus On` or `Focus On - Multi Chip`. It does not appear when the field is empty.
- **`Focus On - Multi Chip`** is for multi-select dropdowns where the selected items appear as dismissible chips inside the field. A `×` clear-all button appears between the chips and the chevron.
- **No `Warning` or `Success` states** — this component only has 6 statuses (Default/Out Focus, Hover, Focus On, Error, Disable, Focus On - Multi Chip).
- **`label1=false`** hides the label/placeholder text entirely — the field shows only the value or nothing.
- **Focus On empty** uses `border-thin` (not `border-black`); the dark border activates only once a selection has been made (`fillText=true`).
- **Disable empty** uses `text-tertiary` for the placeholder (not `text-secondary` like other states).

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Dropdown (full frame) | `929:38086` |
| Default / Out Focus (empty) | `912:38054` |
| Hover (empty) | `936:38648` |
| Error (empty) | `936:38660` |
| Disable (empty) | `944:38729` |
| Default / Out Focus (filled) | `929:38087` |
| Hover (filled) | `936:38684` |
| Focus On (filled) | `951:39175` |
| Focus On - Multi Chip (filled) | `1769:26515` |
| Error (filled) | `936:38699` |
| Disable (filled) | `936:38714` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
