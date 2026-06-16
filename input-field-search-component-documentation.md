# Input Field — Search Component — CHOTOT Design System v3.0

## Overview

The Search Input is a specialised text field for keyword/query entry. It has a fixed search `🔍` icon on the left, a clear `×` button that appears when text is present, and an optional suggestions **Popover** that opens on `Focus On` regardless of whether text has been entered. It has only 4 states (no Error, Warning, or Success), no required-field asterisk, and uses `style` (not `status`) as the state prop name.

---

## Visual Preview

| Style | `fillText=false` | `fillText=true` |
|-------|-----------------|-----------------|
| Default / Out Focus | `border-thin` — search icon + placeholder | `border-thin` — search icon + floating label + value + `×` |
| Hover | `border-black` — search icon + placeholder | `border-black` — search icon + floating label + value + `×` |
| Focus On | `border-black` — search icon + placeholder + **Popover** | `border-black` — search icon + floating label + value + `×` + **Popover** |
| Disable | `border-disabled` grey bg — muted search icon + muted placeholder | `border-disabled` grey bg — muted search icon + muted label + value |

---

## Props

| Prop | Type / Values | Default |
|------|--------------|---------|
| `style` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Disable` | `Default/ Out Focus` |
| `fillText` | `true` \| `false` | `false` |
| `label` | `true` \| `false` | `true` |
| `helpText` | `true` \| `false` | `true` |
| `iconSearch` | `true` \| `false` | `true` |
| `dropdown` | `true` \| `false` | `true` |
| `inputLabel` | string | `"Search"` |
| `inputText` | string | `"Text"` |
| `inputHelpText` | string | `"This is help text."` |

> **Note:** There is no `requirement`, `status`, `iconRight`, `changeIconL`, `changeIconR`, or validation-related props. The state prop is named `style`, not `status`.

---

## Anatomy

```
┌────────────────────────────────────────────────┐
│  🔍  Search                                    │  ← fillText=false: search icon + placeholder
└────────────────────────────────────────────────┘
   This is help text.
```

**When `fillText=true`:**

```
┌────────────────────────────────────────────────┐
│  🔍  Search                               [×]  │  ← floating label + clear icon
│      Text                                      │  ← entered value
└────────────────────────────────────────────────┘
   This is help text.
```

**When `style = "Focus On"` + `dropdown=true`:**

```
┌────────────────────────────────────────────────┐
│  🔍  Search                                    │
└────────────────────────────────────────────────┘
   This is help text.
┌────────────────────────────────────────────────┐  ← Popover (absolute, below field)
│  List                                          │
│  List                                          │
└────────────────────────────────────────────────┘
```

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

---

## Status — Border & Background

| Style | Background Token | Background | Border Token | Border |
|-------|-----------------|-----------|-------------|--------|
| Default / Out Focus | `--background/light/background-primary` | `#ffffff` | `--border/border-thin` | `#e8e8e8` |
| Hover | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Focus On | `--background/light/background-primary` | `#ffffff` | `--border/border-black` | `#222222` |
| Disable | `--background/light/background-secondary` | `#f4f4f4` | `--border/border-disabled` | `#c0c0c0` |

> Unlike other Input Field variants, **Hover always uses `border-black`** regardless of `fillText`. There is no distinction between empty and filled border for Hover/Focus On.

---

## Search Icon (Left)

Always rendered on the left when `iconSearch=true` (24×24px).

| Style | Icon colour |
|-------|------------|
| Default / Hover / Focus On | Dark (active) |
| Disable | Muted grey |

---

## Internal Text

### Mode A: Empty / Placeholder (`fillText=false`)

| Style | Placeholder color | Token |
|-------|-----------------|-------|
| Default / Hover / Focus On | `#595959` | `--text/text-secondary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

No required `*` asterisk — search inputs do not use field requirement indicators.

Typography: `body-section` — 14px Regular 400, line-height 20px.

### Mode B: Has Value / Floating Label (`fillText=true`)

#### Floating mini-label (when `label=true`)

| Style | Label color | Token |
|-------|------------|-------|
| Default / Hover / Focus On | `#222222` | `--text/text-primary` |
| Disable | `#595959` | `--text/text-secondary` |

Typography: `label-annotation` — 10px Bold 700, line-height 16px.

#### Entered value text

| Style | Color | Token |
|-------|-------|-------|
| Default / Hover / Focus On | `#222222` | `--text/text-primary` |
| Disable | `#8c8c8c` | `--text/text-tertiary` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Clear Icon (`×`)

A 20×20px `Close-fill` icon renders on the right when `fillText=true`. Shown for Default, Hover, and Focus On only — **not** shown on Disable.

| Condition | Clear icon |
|-----------|-----------|
| `fillText=true` + Default / Hover / Focus On | Visible |
| `fillText=true` + Disable | Hidden |
| `fillText=false` (any style) | Hidden |

---

## Popover (Suggestions List)

The Popover renders when `style === "Focus On"` AND `dropdown=true` — **regardless of `fillText`**. It is positioned absolutely below the field (`bottom: -108px`).

> This differs from the Dropdown Input where the popover only appears when `fillText=true`.

### Popover container

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Border | `--border/border-thin` | `#e8e8e8`, `--stroke/stroke-divider` `1px` |
| Border radius | `--radius/radius-card` | `12px` |
| Shadow | `Shadow/Shadow-below` | `0px 4px 8px 0px rgba(89,89,89,0.15)` |
| Padding vertical | `--padding/padding-2x-small-4` | `4px` |
| Position | Absolute | `bottom: -108px`, `left: 0`, `right: 0` |
| Height | — | `108px` (fixed, 2 list items) |

### Popover list items

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Bottom border | `--border/border-divider` | `#f4f4f4`, `--stroke/stroke-divider` `1px` |
| Padding horizontal | `--padding/padding-medium-16` | `16px` |
| Padding vertical | `--padding/padding-small-12` | `12px` |
| Gap | `--spacing/gap-x-small-8` | `8px` |
| Text color | `--text/text-primary` | `#222222` |
| Row height | — | `24px` |

Typography: `body-section` — 14px Regular 400, line-height 20px.

---

## Help Text

Always shown when `helpText=true`. Color is **always `text-secondary`** — there are no error or warning colour variants for the search input's help text.

| Property | Token | Value |
|----------|-------|-------|
| Color | `--text/text-secondary` | `#595959` |
| Padding horizontal | `--padding/padding-small-12` | `12px` |

Typography: `body-annotation` — 10px Regular 400, line-height 16px.

---

## Typography Summary

| Element | Style | Size | Weight | Line-height |
|---------|-------|------|--------|-------------|
| Placeholder / entered value | `body-section` | 14px | 400 | 20px |
| Floating mini-label | `label-annotation` | 10px | 700 | 16px |
| Help text | `body-annotation` | 10px | 400 | 16px |
| Popover list item | `body-section` | 14px | 400 | 20px |

Font family: **Reddit Sans** (all elements).

---

## Comparison with Other Input Field Variants

| Feature | Standard Input | Dropdown | **Search** |
|---------|---------------|----------|-----------|
| States | 7 (inc. Warning/Success) | 6 (inc. Multi Chip) | **4 only** |
| State prop name | `status` | `status` | **`style`** |
| Error state | Yes | Yes | **No** |
| Warning state | Yes | No | **No** |
| Success state | Yes | No | **No** |
| Required `*` | Yes | Yes | **No** |
| Left icon | Optional | Optional | **Search icon (default on)** |
| Right icon | Info/Clear/Check | Chevron | **Clear `×` (when filled)** |
| Hover border | fillText-dependent | fillText-dependent | **Always `border-black`** |
| Popover trigger | — | Focus On + fillText | **Focus On only (any fillText)** |
| Help text colours | Secondary/Error/Warning | Secondary/Error | **Secondary only** |

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
--background/light/background-primary:    #ffffff
--background/light/background-secondary:  #f4f4f4   /* Disable */

/* Borders */
--border/border-thin:      #e8e8e8   /* Default / Out Focus */
--border/border-black:     #222222   /* Hover, Focus On */
--border/border-disabled:  #c0c0c0   /* Disable */

/* Text */
--text/text-primary:    #222222   /* Entered value, floating label (active states) */
--text/text-secondary:  #595959   /* Placeholder (active), disable label, help text */
--text/text-tertiary:   #8c8c8c   /* Placeholder + entered value (Disable) */

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

/* Popover */
--border/border-divider:       #f4f4f4   /* List item dividers */
--stroke/stroke-divider:       1px
Shadow/Shadow-below:           0px 4px 8px 0px rgba(89,89,89,0.15)
--padding/padding-2x-small-4:  4px    /* Popover V padding */
--padding/padding-small-12:    12px   /* List item V padding & help text H padding */
```

---

## Behavior Notes

- **Search icon** (`iconSearch=true`) is always on the left — unlike other variants where `iconLeft` defaults to `false`. It can be hidden by setting `iconSearch=false`.
- **Clear `×` appears automatically** when `fillText=true` (except Disable) — there is no separate `clearText` prop.
- **Popover opens on Focus regardless of text** — `dropdown=true` shows the suggestions list as soon as `style="Focus On"`, making it suitable for showing recent searches or suggestions before the user types.
- **No Error/Warning/Success states** — search inputs handle invalid states through the suggestions list rather than inline field validation.
- **Hover always activates `border-black`** — both empty and filled hover states use the same dark border, unlike other variants where the filled/empty distinction affects the hover border.
- **No required asterisk** — the `requirement` prop does not exist on this component.
- **`label=false`** hides the floating mini-label when `fillText=true`, showing only the entered value.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Input Field — Search (full frame) | `956:39902` |
| Default / Out Focus (empty) | `956:39901` |
| Hover (empty) | `956:39903` |
| Focus On (empty) | `956:40204` |
| Disable (empty) | `956:39923` |
| Default / Out Focus (filled) | `956:40133` |
| Hover (filled) | `956:40154` |
| Focus On (filled) | `6561:19783` |
| Disable (filled) | `956:40180` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
