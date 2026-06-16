# Input Field — Currency — CHOTOT Design System v3.0

**Purpose:** Text input for monetary values. Always shows `đ` currency unit on right. Same floating label as Input Field, but no Success state.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Warning` | `Default` |
| `fillText` | bool | `false` |
| `currencyUnit` | string | `"đ"` |
| `label`, `requirement`, `helpText` | bool | `true` |
| `iconLeft`, `iconRight` | bool | `false` |
| `inputLabel`, `inputText`, `inputHelpText` | string | defaults |

## Anatomy
```
[Icon L]  Label *                  value   đ  ← currency unit always visible
This is help/error text.
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Height | — | 48px |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |
| H padding | `--padding/padding-medium-16` | 16px |
| Value-to-unit gap | `--spacing/gap-small-12` | 12px |

## Status Borders
Same as Input Field, but **no Success state**.

| Status | Border Token | Colour |
|--------|-------------|--------|
| Default | `--border/border-thin` | #e8e8e8 |
| Hover | `--border/border-black` | #222222 |
| Focus (filled) | `--border/border-black` | #222222 |
| Warning | `--border/border-warning` | #fb7328 |
| Error | `--border/border-error` | #f0325e |
| Disable | `--border/border-disabled` | #c0c0c0, bg #f4f4f4 |

## Currency Unit Styling
| State | fillText=false | fillText=true |
|-------|--------|----------|
| Default/Hover | `--text/text-tertiary` (#8c8c8c) | `--text/text-primary` (#222222) |
| Error | `--text/text-tertiary` | `--text/text-primary` |
| Disable | `--text/text-disabled` (#c0c0c0) | #c0c0c0 |

Typography: `header-caption` (14px SemiBold 600)

## Text Colors
- Entered value: `body-section` (14px Regular)
- Float label: `label-annotation` (10px Bold 700)
- Help text: `body-annotation` (10px Regular)

## Key Difference from Input Field
- No Success state
- Currency unit always visible (right side reserved)
- No clear or validation icons
- `iconRight` default is `false` (not `true`)
