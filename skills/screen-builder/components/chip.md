# Chip — CHOTOT Design System v3.0

**Purpose:** Compact pill-shaped interactive element for filtering, selection, or categorization.

## Props
| Prop | Values | Default |
|------|--------|---------|
| `size` | `Large 40px` \| `Medium 32px` \| `Small 24px` | `Small 24px` |
| `style` | `Fill` \| `Outline` | `Fill` |
| `select` | bool | `false` |
| `state` | `Default` \| `Hover` \| `Disable` | `Default` |
| `leftIcon`, `rightIcon`, `text` | bool | `true` |

## Anatomy
```
[Icon L]  Text label  [Icon R/▾ or ×]
```
Right icon context-sensitive: chevron-down (unselected) or × (selected/dismiss).

## Sizes & Spacing
| Size | Height | Icon | H padding | V padding | Gap |
|------|--------|------|-----------|-----------|-----|
| Large | 40px | 24×24px | `--padding/padding-medium-16` (16px) | `--padding/padding-x-small-8` (8px) | 4px |
| Medium | 32px | 20×20px | `--padding/padding-small-12` (12px) | `--padding/padding-2x-small-4` (4px) | 4px |
| Small | 24px | 16×16px | `--padding/padding-x-small-8` (8px) | 3px | 2px |

All chips: border-radius `--radius/radius-pill` (999px).

## Typography per Size
| Size | Style | Font size | Weight | Line height |
|------|-------|-----------|--------|-------------|
| Large | `tagline-section` | 16px | 500 Medium | 20px |
| Medium | `tagline-caption` | 14px | 500 Medium | 20px |
| Small | `tagline-annotation` | 12px | 500 Medium | 18px |

Font family: Reddit Sans.

## Fill Style

### Unselected
| State | Background | Text | Icon |
|-------|-----------|------|------|
| Default | `--background/light/background-secondary` (#f4f4f4) | `--text/text-primary` (#222222) | `--icon/icon-primary` (#222222) |
| Hover | `--interaction/light/interaction-neutral-light-hover` (#e8e8e8) | #222222 | #222222 |
| Disable | #f4f4f4 | `--text/text-disabled` (#c0c0c0) | `--icon/icon-disabled` (#c0c0c0) |

### Selected
| State | Background | Text | Icon |
|-------|-----------|------|------|
| Default | `--background/solid/background-inverted` (#222222) | `--text/text-blank` (#ffffff) | `--icon/icon-blank` (#ffffff) |
| Hover | `--interaction/solid/interaction-neutral-hover` (#595959) | #ffffff | #ffffff |
| Disable | `--button/solid/button-disabled` (#c0c0c0) | #ffffff | #ffffff |

## Outline Style

### Unselected
| State | Background | Border | Text | Icon |
|-------|-----------|--------|------|------|
| Default | `--background/light/background-primary` (#ffffff) | `--border/border-regular` (#dddddd), 1px | `--text/text-primary` (#222222) | #222222 |
| Hover | `--interaction/light/interaction-neutral-light-hover` (#e8e8e8) | #dddddd, 1px | #222222 | #222222 |
| Disable | `--background/light/background-secondary` (#f4f4f4) | #dddddd, 1px | `--text/text-disabled` (#c0c0c0) | #c0c0c0 |

### Selected
| State | Background | Border | Text | Icon |
|-------|-----------|--------|------|------|
| Default | `--background/light/background-secondary` (#f4f4f4) | `--border/border-black` (#222222), 1px | `--text/text-primary` (#222222) | #222222 |
| Hover | `--interaction/light/interaction-neutral-light-hover` (#e8e8e8) | #222222, 1px | #222222 | #222222 |
| Disable | #f4f4f4 | `--border/border-disabled` (#c0c0c0), 1px | #c0c0c0 | #c0c0c0 |

## Key Behaviors
- Right icon changes role: chevron when unselected (filter action), × when selected (dismiss)
- Disable state is visually non-interactive
- `leftIcon`, `rightIcon`, `text` can be independently hidden
- Fill selected uses inverted (dark) background
