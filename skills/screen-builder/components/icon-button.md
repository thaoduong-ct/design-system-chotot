# Icon Button — CHOTOT Design System v3.0

**Purpose:** Square icon-only interactive element. Same types/states as Button, but no text label.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `size` | `XL 48px` \| `L 40px` \| `M 32px` \| `S 24px` | `M 32px` |
| `type` | `Primary` \| `Primary - success` \| `Black - Primary` \| `Secondary` \| `Tertiary` \| `Ghost` | `Primary` |
| `state` | `Active` \| `Hover` \| `Pressed` \| `Loading` \| `Disabled` \| `Skeleton` | `Active` |
| `isPill` | `Yes` \| `No` | `No` |
| `icon` | ReactNode | default icon |

## Dimensions
All containers are **square**.

| Size | Container | Padding (all sides) | Icon |
|------|-----------|---------------------|------|
| XL | 48×48px | `--padding/padding-2x-small-4` (4px) | 20×20px |
| L | 40×40px | 4px | 20×20px |
| M | 32×32px | 4px | 20×20px |
| S | 24×24px | 4px | 20×20px |

## State Tokens
Identical to Button component.

## Icon Colors
| Type | Default/Active | Hover | Pressed | Disabled |
|------|--------|-------|---------|----------|
| Primary | `--icon/icon-on-background` (#222222) | #222222 | #222222 | `--icon/icon-disabled` (#c0c0c0) |
| Primary - success | `--icon/icon-blank` (#ffffff) | #ffffff | #ffffff | #c0c0c0 |
| Black - Primary | #ffffff | #ffffff | #ffffff | #c0c0c0 |
| Secondary | `--icon/icon-primary` (#222222) | #222222 | #222222 | #c0c0c0 |
| Tertiary | #222222 | #222222 | #222222 | #c0c0c0 |
| Ghost | #222222 | #222222 | #222222 | #c0c0c0 |

## Shape
| isPill | Result |
|--------|--------|
| No | Rounded square (`--radius/radius-card-small` 8px) |
| Yes | Circle (`--radius/radius-pill` 999px) |

## Key Tokens
- Padding: `--padding/padding-2x-small-4` (4px) uniform
- Border radius (no pill): `--radius/radius-card-small` (8px)
- Border radius (pill): `--radius/radius-pill` (999px)
