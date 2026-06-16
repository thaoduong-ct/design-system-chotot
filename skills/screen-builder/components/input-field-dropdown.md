# Input Field — Dropdown — CHOTOT Design System v3.0

**Purpose:** Select/picker with floating label, chevron-down, popover list, and optional multi-chip mode.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Focus On - Multi Chip` | `Default` |
| `fillText` | bool | `false` |
| `label`, `label1` (visibility), `requirement`, `helpText` | bool | `true` |
| `iconLeft`, `dropdownPopOver` | bool | `false`, `true` |
| `content` | string | "Text" |
| `inputHelpText` | string | defaults |

## Anatomy
```
[Icon L]  Label *                        ▾  ← chevron always present
          Selected value or chips
```
Popover appears below when `fillText=true` AND `status = Focus On` or `Focus On - Multi Chip` AND `dropdownPopOver=true`.

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Height | — | 48px |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |

## Status Borders
| Status | Border Token | Colour |
|--------|-------------|--------|
| Default / Out Focus | `--border/border-thin` | #e8e8e8 |
| Hover | `--border/border-black` | #222222 |
| Focus On (empty) | `--border/border-thin` | #e8e8e8 |
| Focus On (filled) | `--border/border-black` | #222222 |
| Focus On - Multi Chip | `--border/border-black` | #222222 |
| Error | `--border/border-error` | #f0325e |
| Disable | `--border/border-disabled` | #c0c0c0, bg #f4f4f4 |

## Text & Icons
- Placeholder: `body-section` (14px), `--text/text-secondary` (#595959)
- Float label: `label-annotation` (10px Bold), `--text/text-primary` (#222222) or error
- Chevron: 24×24px, always visible, dark or muted
- Help text: `body-annotation` (10px Regular)

## Multi-Chip Mode
When `status = Focus On - Multi Chip` + `fillText=true`:
- Chips bg: `--background/light/background-secondary` (#f4f4f4)
- Chips padding: 8px H / 2px V, border-radius 99px
- Chips text: `body-caption` (12px Regular 400)
- Clear icon `×` appears between chips and chevron

## Popover
- Background: `--background/light/background-primary` (#ffffff)
- Border: `--border/border-thin` (#e8e8e8), 1px
- Border radius: `--radius/radius-card` (12px)
- Items: 16px H padding, 12px V padding, separated by `--border/border-divider` (#f4f4f4) 1px
- Item text: `body-section` (14px Regular), `--text/text-primary` (#222222)

## Key Behaviors
- Chevron always shown (unlike standard Input Field)
- Popover only appears when focused WITH selection
- No Warning or Success states
- `label1=false` hides label/placeholder entirely
