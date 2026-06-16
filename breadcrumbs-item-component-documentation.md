# Breadcrumbs Item Component — CHOTOT Design System v3.0

## Overview

The Breadcrumbs Item is a single step within a breadcrumb navigation trail. Each item renders a separator `/` followed by a text label. The visual treatment of the label changes based on whether the item represents the current page, a navigable previous page, or is being hovered.

---

## Visual Preview

| Status | Appearance |
|--------|------------|
| Default / Current Page | `/` + dark label — non-interactive, indicates the active page |
| Hyper link / Previous Page | `/` + muted label — navigable link to a previous page |
| Hover | `/` + dark underlined label — hover state of a previous-page link |

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `status` | `Default/ Current Page` \| `Hyper link/ Previous Page` \| `Hover` | `Default/ Current Page` |
| `text` | string | `"Text"` |

---

## Anatomy

Each item is a horizontal flex row containing two elements:

```
[ / ]  [ Text label ]
```

1. **Separator** — a `/` character, always rendered in `text-tertiary`
2. **Text label** — the page name, styled per `status`

---

## Layout & Spacing

| Property | Token | Value |
|----------|-------|-------|
| Direction | — | Horizontal flex row |
| Gap (between separator and label) | `--spacing/gap-x-small-8` | `8px` |
| Padding right | `--padding/padding-2x-small-4` | `4px` |

---

## States

### Default / Current Page

Indicates the page the user is currently on. Non-interactive.

| Element | Token | Value |
|---------|-------|-------|
| Separator color | `--text/text-tertiary` | `#8c8c8c` |
| Label color | `--text/text-primary` | `#222222` |
| Text decoration | — | None |
| Cursor | — | Default (not a link) |

### Hyper link / Previous Page

A navigable link to a previous level in the hierarchy.

| Element | Token | Value |
|---------|-------|-------|
| Separator color | `--text/text-tertiary` | `#8c8c8c` |
| Label color | `--text/text-tertiary` | `#8c8c8c` |
| Text decoration | — | None |
| Cursor | — | Pointer |

### Hover

Applied when the user hovers over a previous-page link.

| Element | Token | Value |
|---------|-------|-------|
| Separator color | `--text/text-tertiary` | `#8c8c8c` |
| Label color | `--text/text-primary` | `#222222` |
| Text decoration | — | `underline` |
| Cursor | — | Pointer |

---

## Typography

All text in the Breadcrumbs Item uses the `body-caption` style.

| Token | Value |
|-------|-------|
| `--body/caption/body-caption-font-family` | `Reddit Sans` |
| `--body/caption/body-caption-font-size` | `12px` |
| `--body/caption/body-caption-font-weight` | `400` (Regular) |
| `--body/caption/body-caption-line-height` | `18px` |
| `--body/page/body-page-letter-spacing` | `0px` |

---

## Token Reference Summary

```
/* Text colors */
--text/text-primary:     #222222   /* Current page label & hover label */
--text/text-tertiary:    #8c8c8c   /* Separator (all states), previous page label */

/* Spacing */
--spacing/gap-x-small-8:      8px   /* Gap between separator and label */
--padding/padding-2x-small-4: 4px   /* Right padding on container */

/* Typography */
--body/caption/body-caption-font-size:    12px
--body/caption/body-caption-font-weight:  400
--body/caption/body-caption-line-height:  18px
```

---

## Behavior Notes

- The separator `/` is always visible and always uses `text-tertiary`. It is not interactive.
- The first item in a breadcrumb trail typically has no leading separator — the separator is a prefix of each subsequent item.
- Only `Hyper link / Previous Page` and `Hover` items should be wrapped in an anchor/link element. `Default / Current Page` is non-interactive.
- On hover, the label switches from `text-tertiary` to `text-primary` and gains an underline, giving clear affordance that the item is clickable.

---

## Figma Node Reference

| Component | Node ID |
|-----------|---------|
| Breadcrumbs Item (frame) | `995:18527` |
| Default / Current Page | `995:18525` |
| Hyper link / Previous Page | `995:18526` |
| Hover | `995:18532` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
