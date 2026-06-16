# Announcer — CHOTOT Design System v3.0

**Purpose:** Inline notification banner for contextual feedback. 6 types, optional title/description/button/close, Desktop/Mobile layouts.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `type` | `Info` \| `Success` \| `Warning` \| `Error` \| `Neutral` \| `Skeleton` | `Info` |
| `device` | `Desktop` \| `Mobile` | `Desktop` |
| `title`, `description`, `button`, `closeButton` | bool | `true` |
| `inputTitle`, `content`, `inputHelpText` | string | defaults |
| `changeIcon` | ReactNode \| null | null (Neutral only) |

## Anatomy
```
┌─────────────────────────────────────────┐
│ [Icon]  Title                       [×] │
│         Content                         │
│                          Text button    │
└─────────────────────────────────────────┘
```

## Dimensions
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 343px |
| Border radius | `--radius/radius-card` | 12px |
| Gap (content ↔ button) | `--spacing/gap-min-2` | 2px |
| Gap (icon ↔ content) | `--spacing/gap-x-small-8` | 8px |
| Gap (title ↔ description) | `--spacing/gap-2x-small-4` | 4px |

Padding: Desktop 20px H / 16px V; Mobile 16px H / 12px V.

## Background Colours
| Type | Background Token | Colour |
|------|-----------------|--------|
| Info | `--background/light/background-info-light` | #f2f6fc |
| Success | `--background/light/background-success-light` | #ecf9f1 |
| Warning | `--background/light/background-warning-light` | #fff4ec |
| Error | `--background/light/background-error-light` | #feebef |
| Neutral | `--background/light/background-secondary` | #f4f4f4 |
| Skeleton | `--background/light/background-secondary` | #f4f4f4 |

## Icons (20×20px SVG)
| Type | Icon | Colour |
|------|------|--------|
| Info | Info-outline | Blue |
| Success | Check-fill | Green |
| Warning | Warning-fill | Orange |
| Error | Warning-fill | Red |
| Neutral | Info-outline or `changeIcon` | Grey |
| Skeleton | Grey circle | — |

## Title & Description
| Element | Typography | Colour |
|---------|-----------|--------|
| Title | `label-section` (14px Bold 700) | `--text/text-primary` (#222222) |
| Description | `body-section` (14px Regular 400) | `--text/text-primary` (#222222) |

## Button (Bottom)
| Type | Colour | Typography |
|------|--------|-----------|
| Info | `--text/text-link` (#306bd9) | `label-section` (14px Bold 700) |
| Success | `--text/text-success` (#12a154) | — |
| Warning | `--text/text-warning` (#fb7328) | — |
| Error | `--text/text-error` (#f0325e) | — |
| Neutral | `--text/text-primary` (#222222) | — |
| Skeleton | `--skeleton/skeleton-item` (#e8e8e8) | — |

## Close Button
20×20px `Close-outline`, positioned absolute top-right. Only when `closeButton=true`.

## Skeleton
Icon placeholder (20×20px circle), title bar (183×20px), description bar (70×20px), button bar (83×32px). Desktop only.

## Key Behaviors
- Inline placement (within page content, not floating)
- `closeButton=false` removes × and title-row spacer
- `button=false` hides text-link action
- `title=false` + `description=false` → icon-only + optional button
- `changeIcon` (Neutral only) → custom 20×20px ReactNode
- Semantic types: Error for blocking, Warning for cautionary, Success for confirmations, Info for neutral
