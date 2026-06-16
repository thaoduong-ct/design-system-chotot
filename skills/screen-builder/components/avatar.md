# Avatar — CHOTOT Design System v3.0

**Purpose:** Circular image component representing user or Chợ Tốt brand. 7 sizes, 2 types (Person/Chotot).

## Props
| Prop | Values | Default |
|------|--------|---------|
| `size` | `20px` \| `32px` \| `40px` \| `48px` \| `64px` \| `72px` \| `80px` | `20px` |
| `type` | `Person` \| `Chotot` | `Person` |

## Sizes & Typical Use
| Size | Container | Use case |
|------|-----------|----------|
| 20px | 20×20px | Inline mentions, dense lists |
| 32px | 32×32px | Comment threads, compact items |
| 40px | 40×40px | Chat messages, notifications |
| 48px | 48×48px | Profile rows, card headers |
| 64px | 64×64px | Profile summaries |
| 72px | 72×72px | Profile headers, seller panels |
| 80px | 80×80px | Full profile pages, large cards |

## Types
| Type | Description |
|------|-------------|
| `Person` | Circular user photo (placeholder duck mascot in Figma; use real photo in production) |
| `Chotot` | Branded yellow circle with "chợTỐT" wordmark (system/platform messages) |

## Anatomy
```
┌──────┐
│╭────╮│
││img ││  ← image clipped to circle via SVG mask
│╰────╯│
└──────┘
```

Square container (size×size), circular display via per-size SVG mask.

## Implementation
- Container: Square, position relative
- Mask: Per-size SVG mask via CSS `mask-image`
- Image: 100% fill, `object-cover`, `pointer-events: none`
- No border, shadow, or state styles

## Key Notes
- Each size has dedicated SVG mask for pixel-perfect clipping
- Person avatar should display real user photo at runtime
- Chotot avatar is static branded asset
- No loading skeleton defined (implement at consuming component level)
- No design tokens used (image-driven appearance)
