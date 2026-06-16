# Navigation — Desktop — CHOTOT Design System v3.0

**Purpose:** 64px top navigation bar. Two layout types: `Uni/ Scroliing` (standard inner-page) and `Homepage` (landing page). Supports 4 brand verticals, skeleton loading state.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `type` | `Uni/ Scroliing` \| `Homepage` | `Uni/ Scroliing` |
| `vertical` | `Chợ Tốt` \| `Chợ Tốt Xe` \| `Việc Làm Tốt` \| `Nhà Tốt` | `Chợ Tốt` |
| `skeleton` | bool | `false` |
| `muaBan` | bool | `true` |

## Dimensions
| Property | Value |
|----------|-------|
| Width | 1440px full-width |
| Height | 64px |
| Background | `--background/light/background-primary` (#ffffff) |
| Bottom border | `--border/border-divider` (#f4f4f4), 1px |
| Padding H | `--padding/padding-medium-16` (16px) |

## Anatomy: Uni/ Scroliing
```
┌────────────────────────────────────────────────────────────────┐  64px
│ [≡] Logo  │  [📍 City ▾] [🔍 Search 🔍]  │  [icons] [buttons] │
└────────────────────────────────────────────────────────────────┘
```

**Zones:**
- Left: Hamburger (40×40px) + logo
- Centre: Location Pill + Search Bar (flex-1)
- Right: Icon buttons (×3 badges) + "Quản lý tin" + CTA + Avatar pill

## Anatomy: Homepage
```
┌────────────────────────────────────────────────────────────────┐  64px
│ Logo Tagline  │  [Sản phẩm · Xe cộ · Bất động sản · Việc làm]  │  [icons] [buttons] │
└────────────────────────────────────────────────────────────────┘
```

**Zones:**
- Left: Logo + "Người bán uy tín" tagline
- Centre: Tabs (absolute, 4 marketplace options)
- Right: Same function group

## Location Pill (Uni/ Scroliing)
| Property | Token | Value |
|----------|-------|-------|
| Background | `--button/tonal/button-secondary` | #f4f4f4 |
| Border | `--border/border-brand` | Brand colour per vertical |
| Border width | `--stroke/stroke-action` | 2px |
| Border radius | 99px | — |
| Padding H | `--padding/padding-small-12` | 12px |
| Height | — | 40px |

Contents: location icon (20×20px) + city name (14px SemiBold) + chevron-down (16×16px).

## Search Bar
| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-secondary` | #f4f4f4 |
| Border radius | 99px | — |
| Height | — | 40px |
| Flex | flex-1 | fills space |
| Padding H | `--padding/padding-small-12` | 12px |

Contents: search icon (20×20px, tertiary) + placeholder + submit button (32×32px, brand colour).

## Function Group (both types)
| Element | Size | Notes |
|---------|------|-------|
| Icon buttons (×3) | 24×24px icon in 40×40px | Notification, Chat, Wishlist, with optional badge |
| "Quản lý tin" | Button Secondary | White bg, `border-thin`, `text-primary` |
| CTA (muaBan=true) | Primary | Brand-coloured button (label per vertical) |
| Avatar pill | 32px avatar + chevron | White bg, `border-thin`, pill shape |

## CTA Button per Vertical
| Vertical | Label | Background | Text |
|----------|-------|-----------|------|
| Chợ Tốt | "Đăng bán" | #ffd400 | #222222 |
| Chợ Tốt Xe | "Bán xe" | #ffd400 | #222222 |
| Nhà Tốt | "Đăng tin" | #fa6819 | #ffffff |
| Việc Làm Tốt | "Đăng tuyển" | #306bd9 | #ffffff |

When `muaBan=false`, CTA button hidden.

## Badge (Notifications)
| Property | Value |
|----------|-------|
| Background | `--background/solid/background-error` (#f0325e) |
| Border | `--border/border-blank` (#ffffff), 1px |
| Text | `--text/text-blank` (#ffffff) |
| Typography | `label-annotation` (10px Bold 700) |
| Shape | Pill 16×8px (active), expands for 2+ digits |
| Position | Top-right of icon button |

## Tab Group (Homepage only)
Absolute centred. 4 tabs: Sản phẩm, Xe cộ, Bất động sản, Việc làm.
- Active: `label-section` (14px Bold 700), `text-primary`
- Inactive: `body-section` (14px Regular), 40% opacity

## Key Behaviors
- **Uni/ Scroliing:** Always shows search feature (inner pages)
- **Homepage:** Shows tab group instead; no search
- Tab group position absolute (truly centred)
- Badge conditional on unread counts
- Brand vertical drives location pill, search button, and CTA colours
- `muaBan=false` hides CTA
- Skeleton replaces logo/search with gradient placeholders
