# Drawer Component — CHOTOT Design System v3.0

## Overview

The Drawer is a modal panel that slides up from the bottom of the screen (Mobile) or appears as a centered/anchored overlay (Desktop). It consists of a fixed header with a title and optional action icons, a scrollable body area for content, an optional bottom action button, and an optional carousel indicator (Slick dots). The corner radius differs per platform: fully rounded on Desktop, top-only rounded on Mobile.

---

## Visual Preview

| Platform | Shape | Width | Height |
|----------|-------|-------|--------|
| Desktop | Fully rounded (all 4 corners) | 480px | 497px |
| Mobile | Top-only rounded (top-left + top-right) | 375px | 497px |

---

## Props

| Prop | Values | Default |
|------|--------|---------|
| `platform` | `🖥️ Desktop` \| `📱 Mobile` | `🖥️ Desktop` |
| `carousel` | `true` \| `false` | `true` |
| `closeButton` | `true` \| `false` | `true` |
| `rightIconLink` | `true` \| `false` | `true` |
| `children` | ReactNode | — |

---

## Anatomy

```
┌──────────────────────────────────────────┐  ← Drawer container (shadow + rounded corners)
│  [×]  Title text               [🔗 link] │  ← Header (48px fixed height)
│──────────────────────────────────────────│  ← 1px divider
│                                          │
│              Body / Children             │  ← Flex-1 scrollable area
│                                          │
│  ●  ○  ○  ○                             │  ← Carousel dots (if carousel=true)
│──────────────────────────────────────────│  ← 1px divider
│  [        Primary Action Button        ] │  ← Full-width CTA button
└──────────────────────────────────────────┘
```

**Zones:**
1. **Header** — fixed 48px, close icon (left) + title (centre-left) + optional right icon link
2. **Body** — flex-1, receives `children`, scrollable
3. **Carousel dots** — Slick pagination indicator (optional)
4. **Bottom button** — full-width Primary L button (optional but present in all documented variants)

---

## Layout & Dimensions

| Property | Desktop | Mobile |
|----------|---------|--------|
| Container width | 480px | 375px |
| Container height | 497px | 497px |
| Border radius | `--radius/radius-modal` `20px` (all corners) | `--radius/radius-modal` `20px` (top corners only) |
| Box shadow | `0px 4px 16px 0px rgba(34,34,34,0.12)` | `0px 4px 16px 0px rgba(34,34,34,0.12)` |

---

## Header

| Property | Token | Value |
|----------|-------|-------|
| Height | — | 48px |
| Background | `--background/light/background-primary` | `#ffffff` |
| Bottom border | `--border/border-thin` | `#e8e8e8`, `1px` |
| Horizontal padding | — | 20px |
| Vertical padding | — | 12px |
| Close icon (left) | `--icon/icon-primary` | `#222222`, 24×24px |
| Action icon (right, when `rightIconLink=true`) | `--icon/icon-primary` | `#222222`, 24×24px |

### Header Title Typography

| Token | Value |
|-------|-------|
| Style | `header-section` |
| `--header/section/header-section-font-family` | `Reddit Sans` |
| `--header/section/header-section-font-size` | `16px` |
| `--header/section/header-section-font-weight` | `600` (SemiBold) |
| `--header/section/header-section-line-height` | `24px` |
| Color | `--text/text-primary` `#222222` |

> **Platform note:** On Mobile (app), the header title has an underline beneath it. On Web/Desktop it does not. ("Hiện tại App có gạch ngang dưới title. Web thì không.")

---

## Body

| Property | Token | Value |
|----------|-------|-------|
| Background | `--background/light/background-primary` | `#ffffff` |
| Flex behaviour | — | `flex: 1` (fills remaining height between header and bottom button) |
| Horizontal padding | — | 20px |
| Vertical padding | — | 16px |

Body receives `children` — any content (lists, forms, text, etc.) can be placed here.

---

## Carousel Dots (Slick)

Visible when `carousel=true`. Displayed between the body area and the bottom divider.

| State | Shape | Size | Color | Opacity |
|-------|-------|------|-------|---------|
| Active | Pill | 16×8px | `--icon/icon-brand` `#ffba00` | 100% |
| Inactive | Circle | 8×8px | `--icon/icon-brand` `#ffba00` | 70% |

**Border radius for active pill:** `--radius/radius-pill` = `999px`

### Carousel Container Padding

| Platform | Horizontal padding | Vertical padding |
|----------|--------------------|-----------------|
| Desktop | 20px | — |
| Mobile | 16px | 12px |

---

## Bottom Button

Full-width Primary button (Large size) anchored to the bottom of the drawer.

| Property | Token | Value |
|----------|-------|-------|
| Height | — | 40px (Large button) |
| Width | — | 100% |
| Background | `--button/solid/button-primary` | `#ffd400` |
| Border radius | `--radius/radius-card-small` | `8px` |
| Top border | `--border/border-thin` | `#e8e8e8`, `1px` |
| Text color | `--text/text-primary` | `#222222` |

### Bottom Button Typography

| Token | Value |
|-------|-------|
| Style | `label-page` |
| `--label/page/label-page-font-size` | `16px` |
| `--label/page/label-page-font-weight` | `700` (Bold) |
| `--label/page/label-page-line-height` | `24px` |

---

## Token Reference Summary

```
/* Container */
--radius/radius-modal:   20px   /* Border radius — all corners (Desktop) / top only (Mobile) */
shadow-floating:         0px 4px 16px 0px rgba(34,34,34,0.12)

/* Header */
--background/light/background-primary:  #ffffff   /* Header & body background */
--border/border-thin:                   #e8e8e8   /* Header bottom divider & button top border */
--text/text-primary:                    #222222   /* Title text color */
--icon/icon-primary:                    #222222   /* Close & action icons */

/* Header typography */
--header/section/header-section-font-size:    16px
--header/section/header-section-font-weight:  600
--header/section/header-section-line-height:  24px

/* Carousel dots */
--icon/icon-brand:       #ffba00   /* Active + inactive dot color */
--radius/radius-pill:    999px     /* Active dot pill shape */

/* Bottom button */
--button/solid/button-primary:           #ffd400
--radius/radius-card-small:              8px

/* Bottom button typography */
--label/page/label-page-font-size:    16px
--label/page/label-page-font-weight:  700
--label/page/label-page-line-height:  24px
```

---

## Behavior Notes

- **Platform shape:** Desktop uses `radius-modal` (20px) on all 4 corners. Mobile applies the same radius to the top-left and top-right only, leaving the bottom edge flush with the screen edge.
- **Close button (`closeButton=true`):** Renders a close/dismiss icon on the left side of the header. When `closeButton=false`, the icon is hidden.
- **Right icon link (`rightIconLink=true`):** Renders an action icon (e.g. share, info) on the right side of the header. When `false`, the icon is hidden.
- **Carousel (`carousel=true`):** Shows Slick pagination dots between body content and the bottom button. The active dot is elongated (pill) in brand yellow; inactive dots are smaller circles at 70% opacity.
- **Body scrolling:** The body section (`flex: 1`) should scroll vertically when its content overflows the available height.
- **Mobile title underline:** In the native mobile app context, a decorative underline appears beneath the header title. This is not applied on Web/Desktop.

---

## Figma Node Reference

| Variant | Node ID |
|---------|---------|
| Drawer (full frame) | `1323:22590` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
