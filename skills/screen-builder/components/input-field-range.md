# Input Field — Range — CHOTOT Design System v3.0

**Purpose:** Price-range entry with two side-by-side currency fields. "Từ" (From) and "Đến" (To) separated by bold dash.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `style` | `Default` \| `Hover` \| `Focus On` \| `Error` \| `Disable` | `Default` |
| `helpText` | bool | `true` |

Note: No `fillText`, `requirement`, `iconLeft`, `iconRight`, or `currencyUnit` props.

## Anatomy
```
┌──────────┐       ┌──────────┐
│  Từ   đ  │   –   │  Đến  đ  │  ← From/To fields with currency units
└──────────┘       └──────────┘
This is help/error text.
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Total width | — | 300px |
| Each field width | — | flex: 1 (equal) |
| Field height | — | 48px |
| Gap (From-dash-To) | `--spacing/gap-small-12` | 12px |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |

## Style/Status Borders
| Style | Border Token | Colour |
|-------|-------------|--------|
| Default | `--border/border-thin` | #e8e8e8 |
| Hover | `--border/border-black` | #222222 |
| Focus On | `--border/border-black` | #222222 |
| Error | `--border/border-error` | #f0325e |
| Disable | `--border/border-disabled`, bg #f4f4f4 | #c0c0c0 |

## Layout Mode
**Placeholder mode** (Default/Hover/Disable): Label "Từ"/"Đến" centred, `đ` right-aligned (muted).
**Floating label mode** (Focus On/Error): Mini-label top, value + `đ` row below.

## Placeholder Labels
| Style | Colour | Token |
|-------|--------|-------|
| Default / Hover | `--text/text-secondary` | #595959 |
| Disable | `--text/text-secondary` | #595959 |

Currency unit: `--text/text-tertiary` (#8c8c8c) on empty, `--text/text-primary` (#222222) on filled.

## Floating Mode (Focus On / Error)
- Mini-label: `label-annotation` (10px Bold 700), `--text/text-primary` (#222222) or error #f0325e
- Value: `body-section` (14px Regular), `--text/text-primary` (#222222)
- Currency unit: `header-caption` (14px SemiBold 600), `--text/text-primary` (#222222)
- Dash separator: `label-section` (14px Bold 700), always `--text/text-primary` (#222222)

## Help Text
- Default/Hover/Focus On/Disable: `--text/text-secondary` (#595959)
- Error: `--text/text-error` (#f0325e), default "Vui lòng nhập số"

## Key Constraints
- Both fields always share the same `style`
- Currency unit is hardcoded as `đ`
- No asterisk/requirement indicator
- No clear or validation icons
- Dash never changes colour (always dark)
