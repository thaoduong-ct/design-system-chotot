# Breadcrumbs Item — CHOTOT Design System v3.0

**Purpose:** Single step in breadcrumb trail. Renders separator `/` followed by text label.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Current Page` \| `Hyper link/ Previous Page` \| `Hover` | `Default` |
| `text` | string | `"Text"` |

## Anatomy
```
[ / ]  [ Text label ]
```

1. **Separator** — `/` character, always `--text/text-tertiary` (#8c8c8c)
2. **Text label** — page name, styled per status

## Layout
| Property | Token | Value |
|----------|-------|-------|
| Direction | — | Horizontal flex row |
| Gap | `--spacing/gap-x-small-8` | 8px |
| Padding right | `--padding/padding-2x-small-4` | 4px |

## States
| Status | Separator | Label color | Underline | Cursor |
|--------|-----------|------------|-----------|--------|
| Default / Current | `--text/text-tertiary` (#8c8c8c) | `--text/text-primary` (#222222) | None | default |
| Hyper link / Previous | `--text/text-tertiary` (#8c8c8c) | `--text/text-tertiary` (#8c8c8c) | None | pointer |
| Hover | `--text/text-tertiary` (#8c8c8c) | `--text/text-primary` (#222222) | underline | pointer |

## Typography
All text: `body-caption` (12px Regular 400, line-height 18px), Reddit Sans.

## Key Behaviors
- Separator always visible and always tertiary (does not change)
- Only Hyper link/Previous and Hover should be wrapped in anchor/link
- Default/Current is non-interactive
- First item typically has no leading separator (separator is prefix)
- On hover, label changes from tertiary to primary and gains underline
