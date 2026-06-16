# Input Field — CHOTOT Design System v3.0

**Purpose:** Single-line text input with floating label pattern. 300px width, 48px height.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Out Focus` \| `Hover` \| `Focus On` \| `Error` \| `Warning` \| `Success` \| `Disable` | `Default` |
| `fillText` | bool | `false` |
| `label`, `requirement`, `helpText` | bool | `true` |
| `iconLeft`, `iconRight`, `clearText`, `validationIcon` | bool | L:false, R:true, Clear:true, Val:true |
| `inputLabel`, `inputText`, `inputHelpText` | string | "Label", "Text", "This is help/error text." |

## Anatomy
```
[Icon L]  Label *           [Icon R / ×]  ← 48px height
This is help/error text.                  ← help text below
```
When `fillText=true`: Label shrinks to 10px Bold, floats to top; text appears below.

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Height | — | 48px |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |
| H padding | `--padding/padding-medium-16` | 16px |
| V padding | `--padding/padding-min-2` | 2px |
| Gap (field ↔ help) | `--spacing/gap-2x-small-4` | 4px |

## Status Borders
| Status | Border | Icon | Help text |
|--------|--------|------|-----------|
| Default / Out Focus | `--border/border-thin` (#e8e8e8) | Info ⓘ (20×20px) | Secondary #595959 |
| Hover | `--border/border-black` (#222222) | Info ⓘ | Secondary |
| Focus (empty) | `--border/border-thin` | Info ⓘ | Secondary |
| Focus (filled) | `--border/border-black` | Clear × or Check ✓ | Secondary |
| Warning | `--border/border-warning` (#fb7328) | Info ⓘ | Warning #fb7328 |
| Error | `--border/border-error` (#f0325e) | Clear × | Error #f0325e |
| Success | `--border/border-thin` | Check ✓ | Secondary |
| Disable | `--border/border-disabled` (#c0c0c0), bg #f4f4f4 | Info ⓘ | Secondary |

## Text Tokens
| State | Placeholder | Value | Float label | Value |
|-------|------------|-------|-------------|-------|
| Default/Hover | `--text/text-secondary` | #595959 | `--text/text-primary` | #222222 |
| Error | `--text/text-error` | #f0325e | `--text/text-error` | #f0325e |
| Disable | `--text/text-tertiary` | #8c8c8c | `--text/text-secondary` | #595959 |

Entered value: `--text/text-primary` (#222222), `--text/text-tertiary` (#8c8c8c) on Disable.
Required `*`: `--text/text-error` (#f0325e).

## Typography
- Placeholder/value: `body-section` (14px Regular 400)
- Float label: `label-annotation` (10px Bold 700)
- Help text: `body-annotation` (10px Regular 400)
