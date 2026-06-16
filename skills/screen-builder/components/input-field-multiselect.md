# Input Field — Multi-Select Dropdown — CHOTOT Design System v3.0

**Purpose:** Dropdown where selected values always render as inline chips (except during typing focus).

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Error` \| `Disable` \| `Focus On - Multi Chip` \| `Focus On` | `Default` |
| `fillText` | bool | `false` |
| `label`, `label1`, `requirement`, `helpText` | bool | `true` |
| `iconLeft`, `dropdownPopOver` | bool | `false`, `true` |
| `inputHelpText` | string | defaults |

## Anatomy
**Normal filled state:** Floating label + chips row.
**Focus On (typing mode):** Placeholder label, chips hidden, popover shown for suggestions.

```
Label *
[Chip] [Chip]              [×]    ▾  ← chips + clear + chevron
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Height | — | 48px |
| Border radius | `--radius/radius-card` | 12px |
| Chip gap | `--spacing/gap-2x-small-4` | 4px |

## Status Borders
Same as Dropdown (no Warning/Success).

| Status | Border | Colour |
|--------|--------|--------|
| Default / Hover | `--border/border-thin` or `--border/border-black` | #e8e8e8 or #222222 |
| Focus On | `--border/border-thin` (empty) or `--border/border-black` (typing) | #e8e8e8 or #222222 |
| Error | `--border/border-error` | #f0325e |
| Disable | `--border/border-disabled`, bg #f4f4f4 | #c0c0c0 |

## Chip Styling
**Active chips** (Default/Hover/Error):
- Background: `--background/light/background-secondary` (#f4f4f4)
- Border radius: 99px
- Padding: 8px H / 2px V
- Text: `body-caption` (12px Regular), `--text/text-primary` (#222222)

**Disabled chips** (Disable + fillText=true):
- Background: `--background/light/background-tertiary` (#e8e8e8)
- Text: `--text/text-disabled` (#c0c0c0)

## Focus On Behaviour
- When `status = Focus On` + `fillText=true`, chips are **hidden**
- Placeholder label is shown instead (typing mode)
- Popover opens for search suggestions
- Clear `×` appears between chips and chevron (multi-chip view only)

## Popover
Same as Dropdown: white bg, thin border, shadow, 4px V padding.

## Key Difference from Regular Dropdown
- Chips always shown when `fillText=true` (except during Focus On typing)
- Disabled chips use darker grey bg (`background-tertiary` #e8e8e8)
- No `content` prop (selected values are arrays, rendered as chips)
- `Focus On` hides chips and shows placeholder for typing
