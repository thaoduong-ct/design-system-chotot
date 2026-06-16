# Drawer — CHOTOT Design System v3.0

**Purpose:** Modal panel sliding up from bottom (Mobile) or centered (Desktop). Header, scrollable body, carousel dots, bottom CTA button.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `platform` | `Desktop` \| `Mobile` | `Desktop` |
| `carousel`, `closeButton`, `rightIconLink` | bool | `true` |
| `children` | ReactNode | — |

## Dimensions
| Platform | Width | Height | Border radius | Shadow |
|----------|-------|--------|---------------|--------|
| Desktop | 480px | 497px | `--radius/radius-modal` (20px) all | `0px 4px 16px 0px rgba(34,34,34,0.12)` |
| Mobile | 375px | 497px | 20px top corners only | same |

## Anatomy
```
┌──Header (48px)──────────┐
│ [×] Title         [🔗] │  ← close icon + title + optional action icon
├─────────────────────────┤
│                         │
│    Body (flex-1)        │  ← scrollable content area
│                         │
├─ Carousel dots (Slick)─┤  ← optional pagination (carousel=true)
├─────────────────────────┤
│ [ Primary L Button ]    │  ← full-width CTA (40px height)
└─────────────────────────┘
```

## Header
| Property | Token | Value |
|----------|-------|-------|
| Height | — | 48px |
| Background | `--background/light/background-primary` | #ffffff |
| Bottom border | `--border/border-thin`, 1px | #e8e8e8 |
| Padding H | — | 20px |
| Padding V | — | 12px |

Title typography: `header-section` (16px SemiBold 600), `--text/text-primary` (#222222).
Icons: 24×24px, `--icon/icon-primary` (#222222).

## Body
| Property | Token | Value |
|----------|-------|-------|
| Flex | — | flex: 1 (fills space) |
| Background | `--background/light/background-primary` | #ffffff |
| Padding H | — | 20px |
| Padding V | — | 16px |

## Carousel Dots (Slick)
Visible when `carousel=true`.

| State | Shape | Size | Colour | Opacity |
|-------|-------|------|--------|---------|
| Active | Pill | 16×8px | `--icon/icon-brand` (#ffba00) | 100% |
| Inactive | Circle | 8×8px | #ffba00 | 70% |

Border radius (active): `--radius/radius-pill` (999px).

## Bottom Button
| Property | Token | Value |
|----------|-------|-------|
| Type | — | Primary L |
| Height | — | 40px |
| Width | — | 100% |
| Background | `--button/solid/button-primary` | #ffd400 |
| Border radius | `--radius/radius-card-small` | 8px |
| Top border | `--border/border-thin`, 1px | #e8e8e8 |

Typography: `label-page` (16px Bold 700), `--text/text-primary` (#222222).

## Key Tokens
```
--radius/radius-modal: 20px
--background/light/background-primary: #ffffff
--border/border-thin: #e8e8e8
--text/text-primary: #222222
--icon/icon-primary: #222222
--icon/icon-brand: #ffba00
--button/solid/button-primary: #ffd400
--radius/radius-card-small: 8px
```

## Behaviors
- Desktop: all corners rounded (20px)
- Mobile: top corners only rounded
- Close button (`closeButton=true`) on left; optional right icon
- Body scrolls vertically if content overflows
- Carousel optional; button always present
