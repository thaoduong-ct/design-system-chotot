# Input Field — Search — CHOTOT Design System v3.0

**Purpose:** Text field for keyword entry with fixed search icon left, clear × when filled, and popover suggestions. Only 4 states (no Error/Warning/Success).

## Props
| Prop | Values | Default |
|------|--------|---------|
| `style` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Disable` | `Default` |
| `fillText` | bool | `false` |
| `label`, `helpText` | bool | `true` |
| `iconSearch`, `dropdown` | bool | `true` |
| `inputLabel`, `inputText`, `inputHelpText` | string | "Search", "Text", "This is help text." |

Note: No `requirement`, `status` (uses `style`), `iconRight`, validation props.

## Anatomy
```
🔍  Search placeholder              ← fillText=false
🔍  Search              [×]         ← fillText=true: floating label + value + clear icon
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Height | — | 48px |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |

## Style Borders
| Style | Border Token | Colour |
|-------|-------------|--------|
| Default / Out Focus | `--border/border-thin` | #e8e8e8 |
| Hover | `--border/border-black` | #222222 |
| Focus On | `--border/border-black` | #222222 |
| Disable | `--border/border-disabled`, bg #f4f4f4 | #c0c0c0 |

**Key difference:** Hover always uses `border-black` (regardless of `fillText`).

## Search Icon
24×24px left icon, always present (unless `iconSearch=false`).
- Color: `--icon/icon-primary` (#222222) or muted on Disable

## Clear Icon
20×20px `Close-fill` right icon. Visible only when `fillText=true` AND style ≠ Disable.

## Text Styling
**Placeholder** (fillText=false):
- Color: `--text/text-secondary` (#595959) or `--text/text-tertiary` (#8c8c8c) on Disable
- Typography: `body-section` (14px Regular 400)

**Floating label** (fillText=true, label=true):
- Color: `--text/text-primary` (#222222) or secondary on Disable
- Typography: `label-annotation` (10px Bold 700)

**Value text** (fillText=true):
- Color: `--text/text-primary` (#222222) or tertiary on Disable
- Typography: `body-section` (14px Regular 400)

## Popover
Opens when `style = Focus On` AND `dropdown=true` (regardless of `fillText`).
- Position: Absolute below field
- Background: `--background/light/background-primary` (#ffffff)
- Border: `--border/border-thin` (#e8e8e8), 1px
- Items: `body-section` (14px Regular), `--text/text-primary` (#222222)
- Border-divider: `--border/border-divider` (#f4f4f4)

## Help Text
Always `--text/text-secondary` (#595959). No error/warning variants.

## Key Differences
- No Error/Warning/Success states (4 states only)
- Hover always dark border (unlike other inputs)
- Search icon always left (default on, not optional)
- Clear × auto-appears when filled (no separate prop)
- Popover opens on Focus regardless of text
- No required asterisk
