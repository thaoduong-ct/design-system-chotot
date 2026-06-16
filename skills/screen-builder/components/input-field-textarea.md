# Input Field — Text Area — CHOTOT Design System v3.0

**Purpose:** Multi-line text input with floating label pattern. No icons. Always shows clear × when filled (except Disable). No Success state.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default` \| `Hover` \| `Focus On` \| `Error` \| `Disable` \| `Warning` | `Default` |
| `fillText` | bool | `false` |
| `label`, `requirement`, `helpErrorText`, `clearIcon` | bool | `true` |
| `inputLabel`, `inputText`, `inputHelpText` | string | defaults |

## Anatomy
```
Label *                               [×]  ← fillText=true: floating label + clear icon
Text                                       ← entered value (multi-line)
                                           ← grows vertically with content
This is help text.
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 300px |
| Total height | — | 108px (flex column) |
| Border radius | `--radius/radius-card` | 12px |
| Border width | `--stroke/stroke-action` | 2px |
| H padding | `--padding/padding-medium-16` | 16px |
| V padding | `--padding/padding-2x-small-4` | 4px |

## Status Borders
| Status | Border Token | Colour | Background |
|--------|-------------|--------|-----------|
| Default | `--border/border-thin` | #e8e8e8 | #ffffff |
| Hover | `--border/border-black` | #222222 | #ffffff |
| Focus On | `--border/border-black` (filled) or thin (empty) | #222222 or #e8e8e8 | #ffffff |
| Warning | `--border/border-warning` | #fb7328 | #ffffff |
| Error | `--border/border-error` | #f0325e | #ffffff |
| Disable | `--border/border-disabled` | #c0c0c0 | #f4f4f4 |

## Text Colours
**Placeholder** (fillText=false):
- Status: Default/Hover/Error show it; Warning/Focus empty/Disable do not
- Color: `--text/text-secondary` (#595959)

**Floating label** (fillText=true):
- Color: `--text/text-primary` (#222222) for Default/Hover/Focus/Warning, `--text/text-error` (#f0325e) for Error, secondary for Disable
- Typography: `label-annotation` (10px Bold 700)

**Value text**:
- Color: `--text/text-primary` (#222222) or tertiary on Disable
- Typography: `body-section` (14px Regular 400)

## Clear Icon
20×20px `Close-fill` icon, right-aligned. Shown when `fillText=true` AND `clearIcon=true` AND status ≠ Disable.

## Help Text
- Visibility per status:
  - Default/Hover/Disable/Error: Always shown
  - Focus On/Warning: Shown only when `fillText=true`
- Colors: Secondary (#595959) default, Warning (#fb7328), Error (#f0325e)
- Typography: `body-annotation` (10px Regular 400)

## Key Differences from Single-Line Input
- No icons (left or right)
- No Success state (6 states vs 7)
- Clear × always visible when filled (except Disable)
- Multi-line content grows vertically
- Warning placeholder not shown
- Help text partially conditional
