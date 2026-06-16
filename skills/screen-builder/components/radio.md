# Radio — CHOTOT Design System v3.0

**Purpose:** 24×24px circular selection control. Two modes: unselected and selected. Mirrors Checkbox but circular.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `state` | `Default` \| `Hover` \| `Pressed` \| `Disabled` | `Default` |
| `unselectSelect` | bool | `false` |

## Anatomy
```
┌──24px──┐
│ 2px → ○│  ← 20×20px inner circle (2px padding)
│   [✓]  │
└────────┘
```

## Dimensions
| Property | Value |
|----------|-------|
| Outer container | 24×24px, padding 2px |
| Inner circle | 20×20px SVG asset |
| Checkmark | Centered within 24px |

## Mode 1: Unselected
| State | Fill | Border | Interactivity |
|-------|------|--------|---------------|
| Default | `--background/light/background-primary` (#ffffff) | `--border/border-regular` (#dddddd) | `<div>` static |
| Hover | `--background/light/background-tertiary` (#e8e8e8) | `--border/border-black` (#222222) | `<button>` |
| Pressed | `--interaction/light/interaction-brand-light-pressed` (#ffd400) | `--border/border-brand` (#ffd400) | `<button>` |
| Disabled | `--icon/icon-disabled` (#c0c0c0) solid | — | `<div>` not interactive |

## Mode 2: Selected (✓)
| State | Fill | Checkmark color | Interactivity |
|-------|------|-----------------|---------------|
| Default | `--background/solid/background-brand` (#ffd400) | `--icon/icon-on-background` (#222222) | `<div>` static |
| Hover | `--interaction/solid/interaction-brand-hover` (#ffe884) | #222222 | `<button>` |
| Pressed | `--interaction/solid/interaction-brand-pressed` (#ffba00) | #222222 | `<button>` |
| Disabled | `--icon/icon-disabled` (#c0c0c0) | `--icon/icon-blank` (#ffffff) | `<div>` not interactive |

## Token Summary
```
--padding/padding-min-2: 2px
--background/light/background-primary: #ffffff
--background/light/background-tertiary: #e8e8e8
--interaction/light/interaction-brand-light-pressed: #ffd400
--background/solid/background-brand: #ffd400
--interaction/solid/interaction-brand-hover: #ffe884
--interaction/solid/interaction-brand-pressed: #ffba00
--border/border-regular: #dddddd
--border/border-black: #222222
--border/border-brand: #ffd400
--icon/icon-disabled: #c0c0c0
--icon/icon-on-background: #222222
--icon/icon-blank: #ffffff
```

## Key Behaviors
- Default/Disabled render as `<div>` (non-interactive)
- Hover/Pressed render as `<button>` with cursor-pointer
- Pressed (unselected) previews selection with yellow fill
- Must be used in groups (mutual exclusion at group level)
- No indeterminate state (unlike Checkbox)
