# Empty State Component — CHOTOT Design System v3.0

## Overview

The Empty State component consists of two parts:

1. **Empty Illustration (`EmptyIllus`)** — a 200×200px illustration asset that communicates a specific empty/error scenario (404, maintenance, no results, etc.)
2. **Empty State Template (`EmptyStateTemplate`)** — the full empty state layout combining an illustration, a title, a description, and an optional CTA button.

Both parts are used together on screens where no content is available to display.

---

## Visual Preview

### Empty Illustrations

| State | Description |
|-------|-------------|
| `404` | Astronaut mascot on dark space background with "404" text |
| `Maintainance` | Mascot in construction hat with barrier |
| `Disconnection` | Mascot on island with no WiFi signal |
| `Keyword - No result` | Mascot detective searching with magnifying glass |
| `Filter - No result` | Mascot in UFO with floating question-mark file |
| `Not available` | Mascot floating with "404" on white/light background |
| `404 (White)` | Astronaut mascot on white/light background |
| `Grant Access` | Mascot at laptop — access request scenario |
| `Working` | Mascot at desk — active working scenario |
| `Waiting CV` | Mascot with CV document — job awaiting scenario |
| `No reward` | Mascot at desk with error screen — no reward scenario |

### Empty State Template

```
┌─────────────────────────────┐
│     [Illustration 200px]    │  ← EmptyIllus (200×200px)
│                             │
│          Title              │  ← display-annotation, bold
│        Description          │  ← body-section, regular
│                             │
│    [  Primary Button  ]     │  ← Full-width Primary L (40px)
└─────────────────────────────┘
```

---

## Part 1 — Empty Illustration (`EmptyIllus`)

### Props

| Prop | Values | Default |
|------|--------|---------|
| `state` | `404` \| `Maintainance` \| `Disconnection` \| `Keyword - No result` \| `Filter - No result` \| `Not available` \| `404 (White)` \| `Grant Access` \| `Working` \| `Waiting CV` \| `No reward` | `404` |

### Dimensions

| Property | Value |
|----------|-------|
| Width | 200px |
| Height | 200px |
| Display | Square container (`size: 200×200px`) |
| Image fit | `object-cover`, fills full container |

### Figma Node Reference

| State | Node ID |
|-------|---------|
| EmptyIllus (full frame) | `14424:12210` |
| 404 | `14424:12211` |
| Maintainance | `14424:12213` |
| Disconnection | `14424:12215` |
| Keyword - No result | `14424:12217` |
| Filter - No result | `14424:12219` |
| Not available | `14424:12221` |
| 404 (White) | `14424:12223` |
| Grant Access | `14568:6248` |
| Working | `15774:7526` |
| Waiting CV | `16210:13413` |
| No reward | `17086:7009` |

---

## Part 2 — Empty State Template (`EmptyStateTemplate`)

### Props

| Prop | Values | Default |
|------|--------|---------|
| `showTittle` | `true` \| `false` | `true` |
| `showDescription` | `true` \| `false` | `true` |
| `showButton` | `true` \| `false` | `true` |

> Note: `showTittle` follows the Figma prop name spelling (double-t).

---

## Layout & Dimensions

| Property | Token | Value |
|----------|-------|-------|
| Width | — | 293px |
| Background | `--background/light/background-primary` | `#ffffff` |
| Padding top | `--padding/padding-x-small-8` | `8px` |
| Padding bottom | — | `40px` |
| Padding horizontal | `--padding/padding-medium-16` | `16px` |
| Direction | — | Flex column, `align-items: center`, `justify-content: center` |
| Gap (illustration → text container) | — | Implicit (illustration is `shrink-0`, container fills width) |

---

## Anatomy

### Illustration

- Uses `EmptyIllus` component, 200×200px, `shrink-0`

### Text Container

| Property | Token | Value |
|----------|-------|-------|
| Width | — | 100% |
| `max-width` | — | 700px |
| `text-align` | — | `center` |
| Gap (title ↔ description) | — | `4px` |
| Outer gap (text container ↔ button) | `--spacing/gap-x-small-8` | `16px` |
| Padding | `--spacing/spacing-0` | `0px` |

#### Title

| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showTittle` | hidden when `false` |
| Typography style | `display-annotation` | — |
| Font family | `--display/annotation/display-annotation-font-family` | `Reddit Sans` |
| Font size | `--display/annotation/display-annotation-font-size` | `18px` |
| Font weight | `--display/annotation/display-annotation-font-weight` | `700` (Bold) |
| Line height | `--display/annotation/display-annotation-line-height` | `26px` |
| Letter spacing | `--display/annotation/display-annotation-letter-spacing` | `0px` |
| Color | `--text/text-primary` | `#222222` |

#### Description

| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showDescription` | hidden when `false` |
| Typography style | `body-section` | — |
| Font family | `--body/section/body-section-font-family` | `Reddit Sans` |
| Font size | `--body/section/body-section-font-size` | `14px` |
| Font weight | `--body/section/body-section-font-weight` | `400` (Regular) |
| Line height | `--body/section/body-section-line-height` | `20px` |
| Letter spacing | `--body/section/body-section-letter-spacing` | `0px` |
| Color | `--text/text-secondary` | `#595959` |

### Bottom Button

| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showButton` | hidden when `false` |
| Type | Primary (Large) | — |
| Height | — | `40px` |
| Width | — | `max-width: 600px`, fills container |
| Background | `--button/solid/button-primary` | `#ffd400` |
| Border radius | `--radius/radius-card-small` | `8px` |
| Padding horizontal | `--padding/padding-medium-16` | `16px` |
| Padding vertical | `--padding/padding-x-small-8` | `8px` |
| Gap (icon + label) | `--spacing/gap-x-small-8` | `8px` |

#### Button Label Typography

| Token | Value |
|-------|-------|
| Style | `label-page` |
| `--label/page/label-page-font-family` | `Reddit Sans` |
| `--label/page/label-page-font-size` | `16px` |
| `--label/page/label-page-font-weight` | `700` (Bold) |
| `--label/page/label-page-line-height` | `24px` |
| `--label/page/label-page-letter-spacing` | `0px` |
| Color | `--text/text-on-background` | `#222222` |

---

## Token Reference Summary

```
/* Layout */
--background/light/background-primary:  #ffffff   /* Template background */
--padding/padding-x-small-8:            8px       /* Top padding */
--padding/padding-medium-16:            16px      /* Horizontal padding */

/* Text Container spacing */
--spacing/spacing-0:      0px   /* Text container padding */

/* Title — display-annotation */
--display/annotation/display-annotation-font-size:    18px
--display/annotation/display-annotation-font-weight:  700
--display/annotation/display-annotation-line-height:  26px
--display/annotation/display-annotation-letter-spacing: 0px
--text/text-primary:                                   #222222

/* Description — body-section */
--body/section/body-section-font-size:    14px
--body/section/body-section-font-weight:  400
--body/section/body-section-line-height:  20px
--body/section/body-section-letter-spacing: 0px
--text/text-secondary:                      #595959

/* Bottom Button */
--button/solid/button-primary:   #ffd400
--radius/radius-card-small:      8px
--spacing/gap-x-small-8:         8px   /* Button gap */

/* Button label — label-page */
--label/page/label-page-font-size:    16px
--label/page/label-page-font-weight:  700
--label/page/label-page-line-height:  24px
--text/text-on-background:            #222222
```

---

## Behavior Notes

- **Illustration is always shown** — the `EmptyIllus` component renders regardless of `showTittle`, `showDescription`, and `showButton` values. Combine illustration state selection with layout visibility flags to compose context-appropriate empty states.
- **All three text/button sections are independently toggleable** — this allows minimal variants (illustration only), partial variants (illustration + title), or full variants (illustration + title + description + button).
- **Button label and action are consumer-supplied** — the template provides the button shell; the calling component should set the label text and `onClick` handler.
- **Max-width constraints** — the text container caps at `700px` and the button container at `600px`, preventing the layout from stretching too wide when used outside of the default 293px container.
- **`state` on `EmptyIllus`** should be chosen semantically:
  - Use `404` / `404 (White)` for page-not-found and generic error screens
  - Use `Maintainance` for scheduled downtime
  - Use `Disconnection` for network/connectivity errors
  - Use `Keyword - No result` for search with no matches
  - Use `Filter - No result` for filtered lists with no matches
  - Use `Not available` for content that is unavailable or restricted
  - Use `Grant Access`, `Working`, `Waiting CV`, `No reward` for job/career-specific empty states

---

## Figma Node Reference

| Component | Node ID |
|-----------|---------|
| Empty Illustrations (full frame) | `14424:12210` |
| Empty State Template | `14424:12197` |

File key: `DfQM6G9p8PSNEoOzNGRjWD`
