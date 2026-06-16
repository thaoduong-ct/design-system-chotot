# Button — CHOTOT Design System v3.0

**Purpose:** Core interactive element with 4 sizes, 6 types, pill/rounded shape variants, and 6 states.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `size` | `XL 48px` \| `L 40px` \| `M 32px` \| `S 24px` | `M 32px` |
| `type` | `Primary` \| `Primary - success` \| `Black - Primary` \| `Secondary` \| `Tertiary` \| `Ghost` | `Primary` |
| `state` | `Active` \| `Hover` \| `Pressed` \| `Loading` \| `Disabled` \| `Skeleton` | `Active` |
| `isPill` | `Yes` \| `No` | `No` |
| `iconLeft` | bool | `true` |
| `inputText` | string | `"Button"` |

## Dimensions
| Size | Height | H padding | V padding | Icon |
|------|--------|-----------|-----------|------|
| XL | 48px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) | 20×20px |
| L | 40px | 12px | 4px | 20×20px |
| M | 32px | 12px | 4px | 20×20px |
| S | 24px | 12px | 4px | 20×20px |

## State Tokens
| Type | Active | Hover | Pressed | Disabled |
|------|--------|-------|---------|----------|
| **Primary** | `--button/solid/button-primary` (#ffd400) | `--interaction/solid/interaction-brand-hover` (#ffe884) | `--interaction/solid/interaction-brand-pressed` (#ffba00) | `--button/solid/button-disabled` (#c0c0c0) |
| **Primary - success** | `--button/solid/button-success` (#12a154) | `--interaction/solid/interaction-success-hover` (#26c06e) | `--interaction/solid/interaction-success-pressed` (#108446) | #c0c0c0 |
| **Black - Primary** | `--button/solid/button-neutral` (#222222) | `--interaction/solid/interaction-neutral-hover` (#595959) | `--interaction/solid/interaction-neutral-pressed` (#404040) | #c0c0c0 |
| **Secondary** | `--button/tonal/button-tonal-neutral` (#f4f4f4) | `--interaction/light/interaction-primary-hover` (#f4f4f4) | `--interaction/light/interaction-neutral-light-pressed` (#dddddd) | #c0c0c0 |
| **Tertiary** | `--button/solid/button-blank` (#ffffff), border `#dddddd` 1px | `#f4f4f4` | #dddddd | #c0c0c0 |
| **Ghost** | Transparent, no border | `#f4f4f4` | #dddddd | #c0c0c0 |

## Text Colors
| Type | Text | Disabled |
|------|------|----------|
| Primary, Secondary, Tertiary, Ghost | `--text/text-primary` (#222222) | `--text/text-disabled` (#c0c0c0) |
| Primary - success, Black - Primary | `--text/text-blank` (#ffffff) | #c0c0c0 |

## Shape
| isPill | Border radius | Result |
|--------|---------------|--------|
| No | `--radius/radius-card-small` (8px) | Rounded square |
| Yes | `--radius/radius-pill` (999px) | Pill |

## Typography
Label/Section: 14px Bold 700, line-height 20px, Reddit Sans

## Key Spacing
- Gap icon-label: `--spacing/gap-2x-small-4` (4px)
- H padding: `--padding/padding-small-12` (12px)
- V padding: `--padding/padding-2x-small-4` (4px)
- Skeleton: `--skeleton/skeleton-background` (#f4f4f4)
