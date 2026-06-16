# Checkbox — CHOTOT Design System v3.0

**Purpose:** 24×24px selection control with three modes: standard unchecked, bulk selected (checkmark), and bulk indeterminate (minus).

## Props
| Prop | Values | Default |
|------|--------|---------|
| `state` | `Default` \| `Hover` \| `Pressed` \| `Disabled` | `Default` |
| `bulkSelection` | bool | `false` |
| `unselectSelect` | bool | `false` |

## Mode Matrix
| bulkSelection | unselectSelect | Mode |
|---------------|----|------|
| false | false | Standard unchecked |
| false | true | Standard checked |
| true | true | Bulk all selected (✓) |
| true | false | Bulk indeterminate (−) |

## Anatomy
```
┌──24px──┐
│ ┌─20px─┐│  ← 20×20px inner box (2px inset)
││[icon] ││
│ └──────┘│
└────────┘
```

## Dimensions
| Property | Value |
|----------|-------|
| Outer container | 24×24px, overflow hidden |
| Inner box | 20×20px, inset 2px |
| Border radius | `--radius/radius-ad-small` (4px) |
| Border width (when present) | `--stroke/stroke-action` (2px) |
| Check icon | 16×16px centered |

## Mode 1: Standard Unchecked
| State | Box bg | Border | Icon |
|-------|--------|--------|------|
| Default | `--background/light/background-primary` (#ffffff) | `--border/border-regular` (#dddddd), 2px | — |
| Hover | `--background/light/background-tertiary` (#e8e8e8) | `--border/border-black` (#222222), 2px | — |
| Pressed | `--interaction/light/interaction-brand-light-pressed` (#ffd400) | `--border/border-brand` (#ffd400), 2px | — |
| Disabled | `--icon/icon-disabled` (#c0c0c0) solid | — | — |

## Mode 2: Bulk Selected (✓)
| State | Box bg | Icon color |
|-------|--------|-----------|
| Default | `--background/solid/background-brand` (#ffd400) | `--icon/icon-on-background` (#222222) |
| Hover | `--interaction/solid/interaction-brand-hover` (#ffe884) | #222222 |
| Pressed | `--interaction/solid/interaction-brand-pressed` (#ffba00) | #222222 |
| Disabled | `--icon/icon-disabled` (#c0c0c0) | `--icon/icon-blank` (#ffffff) |

## Mode 3: Bulk Indeterminate (−)
SVG asset minus icon rendered per state. Default/Hover/Pressed/Disabled variants.

## Token Summary
```
--radius/radius-ad-small: 4px
--stroke/stroke-action: 2px
--background/light/background-primary: #ffffff
--background/light/background-tertiary: #e8e8e8
--interaction/light/interaction-brand-light-pressed: #ffd400
--background/solid/background-brand: #ffd400
--border/border-regular: #dddddd
--border/border-black: #222222
--border/border-brand: #ffd400
--icon/icon-disabled: #c0c0c0
--icon/icon-on-background: #222222
--icon/icon-blank: #ffffff
```

## Key Behaviors
- Pressed (unchecked) previews selection with yellow fill
- Bulk Indeterminate shows partial selection state
- Disabled removes interactivity with flat grey fill
- 2px inset provides visual padding within 24px touch target
