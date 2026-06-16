# Avatar Component — CHOTOT Design System v3.0

## Overview

The Avatar is a circular image component used to represent a user or the Chợ Tốt brand identity. It comes in 7 sizes and 2 types: `Person` (user photo placeholder) and `Chotot` (the branded yellow Chợ Tốt circle). All variants are perfectly circular, achieved via per-size SVG mask clipping.

---

## Visual Preview

| Type | Description |
|------|-------------|
| `Person` | Circular user photo — orange duck mascot as Figma placeholder; replace with real user photo in production |
| `Chotot` | Circular yellow branded avatar showing the "chợTỐT" wordmark — used for official system/brand messages |

Both types are available in all 7 sizes, resulting in 14 total variants.

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `size` | `"20px"` \| `"32px"` \| `"40px"` \| `"48px"` \| `"64px"` \| `"72px"` \| `"80px"` | `"20px"` |
| `type` | `"Person"` \| `"Chotot"` | `"Person"` |

---

## Sizes

All avatars are square containers clipped to a circle via CSS `mask-image`.

| Size | Container | Typical use |
|------|-----------|-------------|
| `20px` | 20×20px | Inline mentions, dense lists, small metadata |
| `32px` | 32×32px | Comment threads, compact list items |
| `40px` | 40×40px | Chat messages, notification items |
| `48px` | 48×48px | Standard profile rows, card headers |
| `64px` | 64×64px | Profile summary sections |
| `72px` | 72×72px | Profile headers, seller info panels |
| `80px` | 80×80px | Full profile pages, large seller cards |

---

## Types

### `Person`

A circular user photo avatar. In Figma the placeholder is the CHOTOT orange duck mascot; in production this should be replaced with the user's actual photo.

- Image fills the full circular container (`object-cover`)
- When no photo is available, a fallback placeholder should be provided at the application level

### `Chotot`

A circular branded avatar featuring the yellow Chợ Tốt wordmark ("chợTỐT"). Used to represent the Chợ Tốt platform itself in contexts such as:
- System-generated messages
- Official chat bots or support accounts
- Brand-owned listings or posts

---

## Anatomy

```
┌──────────┐
│  ╭────╮  │
│ │ img │  │  ← image clipped to circle via SVG mask
│  ╰────╯  │
└──────────┘
  size×size px (square container, circular display)
```

- **Container:** Square `size × size` px, `position: relative`
- **Mask:** Per-size SVG mask applied via CSS `mask-image` to produce a pixel-perfect circle
- **Image:** Fills 100% of container with `object-cover` and `pointer-events: none`

---

## Implementation Notes

- Each size uses a **dedicated SVG mask asset** to ensure pixel-perfect circular clipping at every resolution (no border-radius rounding).
- The mask and image layer are absolutely positioned and fill the container (`inset-0`).
- There are no border, shadow, or state (hover/active) styles on the Avatar itself — interactive states (e.g. clickable profile) are handled by the parent element.
- No design tokens are used — avatar appearance is entirely image-driven.

---

## Token Reference

The Avatar component does not use design tokens. All visual properties (size, shape, colour) are determined by the image asset and the size prop.

---

## Behavior Notes

- The `Person` avatar should display the user's uploaded photo at runtime; the duck mascot is a Figma design placeholder only.
- The `Chotot` avatar is a static branded asset and should not be used for real user accounts.
- At `20px` the avatar is very small — reserve it for contexts where space is extremely constrained (inline chips, breadcrumb-level metadata).
- No loading skeleton is defined within this component — implement a skeleton/placeholder at the consuming component level.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Avatar (full frame) | `2589:2651` |
| Person — 20px | `2589:2655` |
| Person — 32px | `2589:2658` |
| Person — 40px | `3203:16492` |
| Person — 48px | `2589:2661` |
| Person — 64px | `2589:2664` |
| Person — 72px | `2589:2667` |
| Person — 80px | `3203:16495` |
| Chotot — 20px | `3258:14015` |
| Chotot — 32px | `3258:14012` |
| Chotot — 40px | `3258:14009` |
| Chotot — 48px | `3258:14006` |
| Chotot — 64px | `3258:14003` |
| Chotot — 72px | `3258:14000` |
| Chotot — 80px | `3258:13997` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
