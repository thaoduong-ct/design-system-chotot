# Design System Tokens — CHOTOT Design System v3.0

**Purpose:** Semantic colour, measurement, and typography tokens. (Color primitives and scales omitted; use semantic theme tokens only.)

## Semantic Colour Tokens

### Background
```
--background/light/background-primary: #ffffff       (default light bg)
--background/light/background-secondary: #f4f4f4    (disabled, secondary bg)
--background/light/background-tertiary: #e8e8e8    (hover light state)
--background/light/background-info-light: #f2f6fc   (info banner)
--background/light/background-warning-light: #fff4ec (warning banner)
--background/light/background-success-light: #ecf9f1 (success banner)
--background/light/background-error-light: #feebef  (error banner)
--background/solid/background-brand: #ffd400        (brand primary: Chợ Tốt)
--background/solid/background-inverted: #222222     (inverted/dark bg)
```

### Text
```
--text/text-primary: #222222      (default label text)
--text/text-secondary: #595959    (secondary, muted text)
--text/text-tertiary: #8c8c8c     (placeholder, hint text)
--text/text-disabled: #c0c0c0     (disabled text)
--text/text-blank: #ffffff        (text on dark/brand bg)
--text/text-error: #f0325e        (error message)
--text/text-warning: #fb7328      (warning message)
--text/text-success: #12a154      (success message)
--text/text-link: #306bd9         (link colour)
--text/text-on-background: #222222 (on brand-yellow bg)
```

### Border
```
--border/border-thin: #e8e8e8     (default light border)
--border/border-regular: #dddddd  (regular border)
--border/border-black: #222222    (dark border)
--border/border-brand: brand colour per vertical (location pill, CTA)
--border/border-warning: #fb7328
--border/border-error: #f0325e
--border/border-disabled: #c0c0c0
--border/border-divider: #f4f4f4 (list item dividers)
```

### Icon
```
--icon/icon-primary: #222222      (default dark icon)
--icon/icon-secondary: #595959    (secondary icon)
--icon/icon-tertiary: #8c8c8c     (placeholder icon)
--icon/icon-disabled: #c0c0c0     (disabled icon)
--icon/icon-blank: #ffffff        (on dark/brand bg)
--icon/icon-error: #f0325e        (error icon)
--icon/icon-on-background: #222222 (on brand-yellow bg)
--icon/icon-brand: brand colour per vertical
```

### Button
```
--button/solid/button-primary: #ffd400        (primary active bg)
--button/solid/button-success: #12a154        (success bg)
--button/solid/button-neutral: #222222        (black/dark bg)
--button/solid/button-blank: #ffffff          (tertiary active bg)
--button/solid/button-disabled: #c0c0c0       (disabled all types)
--button/tonal/button-tonal-neutral: #f4f4f4 (secondary light bg)
--button/tonal/button-secondary: #f4f4f4     (location pill)
```

### Interaction
```
--interaction/solid/interaction-brand-hover: #ffe884
--interaction/solid/interaction-brand-pressed: #ffba00
--interaction/solid/interaction-success-hover: #26c06e
--interaction/solid/interaction-success-pressed: #108446
--interaction/solid/interaction-neutral-hover: #595959
--interaction/solid/interaction-neutral-pressed: #404040
--interaction/light/interaction-primary-hover: #f4f4f4
--interaction/light/interaction-neutral-light-hover: #e8e8e8
--interaction/light/interaction-neutral-light-pressed: #dddddd
--interaction/light/interaction-brand-light-pressed: #ffd400
```

### Skeleton
```
--skeleton/skeleton-background: #f4f4f4 (skeleton main bg)
--skeleton/skeleton-item: #e8e8e8      (skeleton placeholder bars)
```

## Measurement Tokens

### Spacing (Gap)
```
--spacing/gap-min-2: 2px
--spacing/gap-2x-small-4: 4px
--spacing/gap-x-small-8: 8px
--spacing/gap-small-12: 12px
--spacing/spacing-0: 0px
```

### Padding
```
--padding/padding-min-2: 2px
--padding/padding-2x-small-4: 4px
--padding/padding-x-small-8: 8px
--padding/padding-small-12: 12px
--padding/padding-medium-16: 16px
--padding/usage/pad-section-desktop: 20px
--padding/usage/v-pad-section-desktop: 16px
```

### Border Radius
```
--radius/radius-ad-small: 4px
--radius/radius-card-small: 8px
--radius/radius-card: 12px
--radius/radius-modal: 20px
--radius/radius-pill: 999px
```

### Stroke
```
--stroke/stroke-divider: 1px
--stroke/stroke-action: 2px
```

## Typography Tokens

### Display
```
--display/annotation/display-annotation-font-size: 18px
--display/annotation/display-annotation-font-weight: 700 Bold
--display/annotation/display-annotation-line-height: 26px
--display/annotation/display-annotation-letter-spacing: 0px
```

### Header
```
--header/section/header-section-font-size: 16px
--header/section/header-section-font-weight: 600 SemiBold
--header/section/header-section-line-height: 24px

--header/caption/header-caption-font-size: 14px
--header/caption/header-caption-font-weight: 600 SemiBold
--header/caption/header-caption-line-height: 20px
```

### Label
```
--label/section/label-section-font-size: 14px
--label/section/label-section-font-weight: 700 Bold
--label/section/label-section-line-height: 20px

--label/page/label-page-font-size: 16px
--label/page/label-page-font-weight: 700 Bold
--label/page/label-page-line-height: 24px

--label/annotation/label-annotation-font-size: 10px
--label/annotation/label-annotation-font-weight: 700 Bold
--label/annotation/label-annotation-line-height: 16px
```

### Body
```
--body/section/body-section-font-size: 14px
--body/section/body-section-font-weight: 400 Regular
--body/section/body-section-line-height: 20px

--body/caption/body-caption-font-size: 12px
--body/caption/body-caption-font-weight: 400 Regular
--body/caption/body-caption-line-height: 18px

--body/annotation/body-annotation-font-size: 10px
--body/annotation/body-annotation-font-weight: 400 Regular
--body/annotation/body-annotation-line-height: 16px
```

### Tagline
```
--tagline/section/tagline-section-font-size: 16px
--tagline/section/tagline-section-font-weight: 500 Medium
--tagline/section/tagline-section-line-height: 20px

--tagline/caption/tagline-caption-font-size: 14px
--tagline/caption/tagline-caption-font-weight: 500 Medium
--tagline/caption/tagline-caption-line-height: 20px

--tagline/annotation/tagline-annotation-font-size: 12px
--tagline/annotation/tagline-annotation-font-weight: 500 Medium
--tagline/annotation/tagline-annotation-line-height: 18px
```

## Font Family
All typography uses **Reddit Sans**.

## Shadow
```
Shadow/Shadow-below: 0px 4px 8px 0px rgba(89,89,89,0.15)
shadow-floating: 0px 4px 16px 0px rgba(34,34,34,0.12)
```

## Multi-Brand Support
Brand tokens like `--button/solid/button-primary`, `--border/border-brand`, and `--icon/icon-brand` resolve to different values per vertical:
- **gds** (Chợ Tốt): #ffd400 / #fa6819
- **pty** (Nhà Tốt): #fa6819 / #ffffff
- **job** (Việc Làm Tốt): #306bd9 / #ffffff
- **veh** (Chợ Tốt Xe): #ffd400 / #222222
