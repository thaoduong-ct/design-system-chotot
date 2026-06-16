# CHOTOT Design System v3.0 — Quick Reference

## Semantic Token Names (Critical!)

**Design system uses semantic token names, NOT raw color values.**

### Button Component — Correct Token Names

| Button Type | Background Token | Text Token | Border Token |
|---|---|---|---|
| **Primary** | `background-brand` (#ffd400) | `text-on-background` (#222222) | — |
| **Secondary** | `background-secondary` (#f4f4f4) | `text-primary` (#222222) | `border-thin` (#e8e8e8) |
| **Ghost** | transparent | `text-primary` (#222222) | none |
| **Error** | `background-error` (#f0325e) | `text-blank` (#ffffff) | — |
| **Link** | transparent | `text-link` (#306bd9) | — (underlined) |
| **Disabled** | `background-secondary` (#f4f4f4) | `text-disabled` (#c0c0c0) | — |

---

## Component Name Mapping

| Design System | Short Name | Full Name |
|---|---|---|
| Button | Button | **Button Component** |
| Checkbox | Checkbox | **Checkbox Component** |
| Chip | Chip | **Chip Component** |
| Drawer | Drawer | **Drawer Component** |
| Empty State | EmptyState | **Empty State Component** |
| Icon Button | IconButton | **Icon Button Component** |
| Input | Input | **Input Field Component** |
| Input Currency | InputCurrency | **Input Field — Currency Component** |
| Input Dropdown | InputDropdown | **Input Field — Dropdown Component** |
| Input MultiSelect | InputMultiSelect | **Input Field — Multi-Select Dropdown Component** |
| Input Range | InputRange | **Input Field — Range Component** |
| Input Search | InputSearch | **Input Field — Search Component** |
| Input TextArea | InputTextArea | **Input Field — Text Area Component** |
| NavBar | NavBar | **Navigation — Desktop Component** |
| Radio | Radio | **Radio Component** |
| Avatar | Avatar | **Avatar Component** |
| Breadcrumbs | Breadcrumbs | **Breadcrumbs Item Component** |

---

## Color Semantic Tokens

### Background Tokens
- `background-primary` = #ffffff (main surface)
- `background-app` = #f7f7f7 (page bg)
- `background-secondary` = #f4f4f4 (secondary surface)
- `background-tertiary` = #e8e8e8 (tertiary surface)
- `background-brand` = #ffd400 (primary brand fill)
- `background-error` = #f0325e (error fill)
- `background-success` = #12a154 (success fill)
- `background-warning` = #fb7328 (warning fill)
- `background-info` = #306bd9 (info fill)
- `background-disable` = #c0c0c0 (disabled surface)
- `background-inverted` = #222222 (dark inverted)
- `background-overlay` = rgba(34,34,34,0.50) (modal scrim)

### Text Tokens
- `text-primary` = #222222 (main text)
- `text-secondary` = #595959 (supporting text)
- `text-tertiary` = #8c8c8c (placeholder/hint)
- `text-link` = #306bd9 (hyperlinks)
- `text-brand` = #cc8f00 (brand-colored text)
- `text-error` = #f0325e (error message)
- `text-success` = #12a154 (success message)
- `text-warning` = #fb7328 (warning message)
- `text-info` = #306bd9 (informational)
- `text-disabled` = #c0c0c0 (disabled text)
- `text-blank` = #ffffff (white text on dark)
- `text-on-background` = #222222 (text on brand bg, varies by theme)

### Icon Tokens
- `icon-primary` = #222222 (default icon)
- `icon-secondary` = #595959 (supporting icon)
- `icon-tertiary` = #8c8c8c (subtle icon)
- `icon-brand` = #ffba00 (brand-colored icon, varies by theme)
- `icon-chotot` = #ffba00 (always Chợ Tốt yellow)
- `icon-error` = #f0325e (error icon)
- `icon-success` = #12a154 (success icon)
- `icon-warning` = #fb7328 (warning icon)
- `icon-info` = #306bd9 (info icon)
- `icon-disabled` = #c0c0c0 (disabled icon)
- `icon-blank` = #ffffff (white icon on dark)
- `icon-on-background` = #222222 (icon on brand bg, varies by theme)

### Border Tokens
- `border-divider` = #f4f4f4 (subtle section dividers)
- `border-thin` = #e8e8e8 (thin lines)
- `border-regular` = #dddddd (default borders)
- `border-bold` = #8c8c8c (emphasized borders)
- `border-active` = #ffd400 (focus / selected state, varies by theme)
- `border-brand` = #ffd400 (brand accent, varies by theme)
- `border-error` = #f0325e (error state)
- `border-success` = #12a154 (success state)
- `border-warning` = #fb7328 (warning state)
- `border-info` = #306bd9 (informational)
- `border-disabled` = #c0c0c0 (disabled state)
- `border-black` = #222222 (high-contrast)
- `border-blank` = #ffffff (white / invisible)

### Interaction Tokens (Hover & Pressed States)
- `interaction-brand-hover` = #ffe884 (primary button hover)
- `interaction-brand-pressed` = #ffba00 (primary button pressed)
- `interaction-error-hover` = #f35b7e (error hover)
- `interaction-error-pressed` = #cb294e (error pressed)
- `interaction-success-hover` = #26c06e (success hover)
- `interaction-success-pressed` = #108446 (success pressed)
- `interaction-warning-hover` = #ffa97b (warning hover)
- `interaction-warning-pressed` = #e16725 (warning pressed)
- `interaction-info-hover` = #548af0 (info hover)
- `interaction-info-pressed` = #1952ba (info pressed)
- `interaction-primary-hover` = #f4f4f4 (secondary/ghost hover)
- `interaction-neutral-hover` = #595959 (neutral hover)
- `interaction-neutral-pressed` = #404040 (neutral pressed)

---

## Spacing System

- `spacing-4` = 4px (micro)
- `spacing-8` = 8px (xs)
- `spacing-12` = 12px (sm)
- `spacing-16` = 16px (md, standard)
- `spacing-20` = 20px (lg)
- `spacing-24` = 24px (xl)
- `spacing-32` = 32px (2xl)

---

## Padding System

- `padding-4` = 4px
- `padding-8` = 8px
- `padding-12` = 12px
- `padding-16` = 16px
- `padding-20` = 20px
- `padding-24` = 24px
- `padding-32` = 32px

---

## Border Radius (Stroke)

- `radius-0` = 0px (none)
- `radius-4` = 4px (small, buttons, inputs, badges)
- `radius-8` = 8px (medium, cards, modals, standard components)
- `radius-12` = 12px (large, large containers, drawers)
- `radius-20` = 20px (extra large)
- `radius-999` = 999px (pill, full round — chips, pills)

---

## Typography

### Font
- **Family**: Reddit Sans (Google Fonts)
- **Weights**: 200–900 (use 400, 500, 600, 700 primarily)

### Type Scale
- **Display**: 48px, weight 700
- **Heading 1**: 36px, weight 700
- **Heading 2**: 28px, weight 600
- **Heading 3**: 24px, weight 600
- **Title**: 20px, weight 600
- **Subtitle**: 16px, weight 500
- **Body regular**: 16px, weight 400
- **Body small**: 14px, weight 400
- **Caption**: 12px, weight 400
- **Label**: 12px, weight 500

### Font Weights
- Regular = 400
- Medium = 500
- SemiBold = 600
- Bold = 700

---

## Components Specifications (Condensed)

| Component | Key Specs |
|-----------|-----------|
| **Button** | 24/32/40/48px heights, radius-8, padding 16-24px, font 16px/600, primary/secondary/ghost/error/link/disabled variants, use `interaction-*` for states |
| **Input** | 48px height, 40px compact, floating label, borders: thin→regular→active→error, font 16px/400, icon support (20px, icon-secondary) |
| **Checkbox** | 24x24px, radius-4, border 2px border-regular, checked=icon-primary bg, 40x40px hit area |
| **Chip** | 32px height, 8px padding, radius-999 (pill), font 14px/500, filled/outline styles, optional left/right icons |
| **Drawer** | Mobile: 375px bottom sheet (radius-12), Desktop: 480px centered modal, header 56px, content scrollable (padding-16), actions 48px |
| **Empty State** | Centered vertical layout: illustration (100-200px) + title (24px/600) + description (16px/400) + CTA button (48px) |
| **Search Input** | 48px height, search icon left (24px, icon-secondary), close icon right (24px when text entered) |
| **Dropdown** | 48px height, chevron-down right (24px, icon-secondary), menu items 40px, selected=checkmark (20px, icon-primary) |
| **Multi-Select** | 48px expands, selected items as chips inside, chevron-down right, multiple selection allowed |
| **TextArea** | Min 120px height, max scrollable, padding-12, vertical resize handle, same borders as input |
| **Icon Button** | 40x40px hit area, icon 24px centered, radius-4/8, transparent or background-secondary, states use interaction-primary-hover |
| **Radio** | 20x20px, border-2 border-thin, checked dot 8x8px (icon-primary), label 16px/400, 8px gap |
| **NavBar** | 64px height, full width, background-primary, border-1 border-divider, logo 40px, flex centered |
| **Avatar** | 24/32/40/56px (radius-999), profile photo or user icon fallback, optional status badge 8x8px |

---

## Icon System (Google Material Symbols)

Weight 400 | Grade 0 | Style Rounded | Sizes: 24px (standard), 20px (compact), 16px (dense)

**Token colors:** Use `icon-*` tokens (icon-primary, icon-brand, icon-error, icon-success, icon-disabled, etc.)

Common icons: search, menu, close, notification, chat, heart, share, filter, settings, edit, delete, camera, location, calendar, check, star, user, chevron_right, chevron_down, add, upload, download, arrow_left, etc. (1000+ available by name)

---

## CSS Token Mapping (In HTML)

**Use these token names in your CSS:**

```css
:root {
  /* Background tokens */
  --background-primary: #ffffff;
  --background-app: #f7f7f7;
  --background-secondary: #f4f4f4;
  --background-tertiary: #e8e8e8;
  --background-brand: #ffd400;
  --background-error: #f0325e;
  --background-success: #12a154;
  --background-warning: #fb7328;
  --background-info: #306bd9;
  --background-disable: #c0c0c0;
  --background-inverted: #222222;
  --background-overlay: rgba(34, 34, 34, 0.5);

  /* Text tokens */
  --text-primary: #222222;
  --text-secondary: #595959;
  --text-tertiary: #8c8c8c;
  --text-link: #306bd9;
  --text-brand: #cc8f00;
  --text-error: #f0325e;
  --text-success: #12a154;
  --text-warning: #fb7328;
  --text-info: #306bd9;
  --text-disabled: #c0c0c0;
  --text-blank: #ffffff;
  --text-on-background: #222222;

  /* Icon tokens */
  --icon-primary: #222222;
  --icon-secondary: #595959;
  --icon-tertiary: #8c8c8c;
  --icon-brand: #ffba00;
  --icon-error: #f0325e;
  --icon-success: #12a154;
  --icon-warning: #fb7328;
  --icon-info: #306bd9;
  --icon-disabled: #c0c0c0;
  --icon-blank: #ffffff;

  /* Border tokens */
  --border-divider: #f4f4f4;
  --border-thin: #e8e8e8;
  --border-regular: #dddddd;
  --border-bold: #8c8c8c;
  --border-active: #ffd400;
  --border-brand: #ffd400;
  --border-error: #f0325e;
  --border-success: #12a154;
  --border-warning: #fb7328;
  --border-info: #306bd9;
  --border-disabled: #c0c0c0;
  --border-black: #222222;
  --border-blank: #ffffff;

  /* Interaction tokens */
  --interaction-brand-hover: #ffe884;
  --interaction-brand-pressed: #ffba00;
  --interaction-primary-hover: #f4f4f4;
  --interaction-error-hover: #f35b7e;
  --interaction-error-pressed: #cb294e;

  /* Spacing tokens */
  --spacing-4: 4px;
  --spacing-8: 8px;
  --spacing-12: 12px;
  --spacing-16: 16px;
  --spacing-20: 20px;
  --spacing-24: 24px;
  --spacing-32: 32px;

  /* Radius tokens */
  --radius-4: 4px;
  --radius-8: 8px;
  --radius-12: 12px;
  --radius-999: 999px;

  /* Font */
  --font-family: 'Reddit Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
}

* {
  font-family: var(--font-family);
}
```

---

## Quick Tips

1. Use semantic token names, NOT raw values
2. Mobile = 375px centered, Desktop = 1440px + 64px navbar
3. Always reference live site (chotot.com) for accuracy
4. Google Fonts: Reddit Sans (weights 400, 500, 600, 700)
5. States: Use `interaction-*` tokens for hover/pressed
6. Sizes & padding: Match specs exactly from this ref
7. Logo: Always PNG from `logo/` folder, NEVER generated SVG
8. Icons: Google Material Symbols only (Weight 400, Grade 0, Rounded)
