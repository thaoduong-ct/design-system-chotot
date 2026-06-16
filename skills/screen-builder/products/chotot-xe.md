# CHOTOT Design System v3.0 — Chợ Tốt Xe Quick Reference

**Product:** Chợ Tốt Xe (xe.chotot.com) | Brand: #ffd400 (yellow) | NavBar CTA: "Bán xe"

---

## Semantic Tokens (Critical)

✅ `var(--background-brand)` ❌ `#ffd400`

---

## Color Tokens

| Token | Value | Usage |
|---|---|---|
| `background-primary` | #ffffff | Main surface |
| `background-app` | #f7f7f7 | Page background |
| `background-secondary` | #f4f4f4 | Secondary surfaces |
| `background-tertiary` | #e8e8e8 | Tertiary surfaces |
| `background-brand` | #ffd400 | **Xe Brand** |
| `background-error` | #f0325e | Error states |
| `background-success` | #12a154 | Success states |
| `background-warning` | #fb7328 | Warning states |
| `background-info` | #306bd9 | Info states |
| `background-overlay` | rgba(34,34,34,0.5) | Modal scrim |
| `text-primary` | #222222 | Main text |
| `text-secondary` | #595959 | Supporting text |
| `text-tertiary` | #8c8c8c | Placeholder/hint |
| `text-link` | #306bd9 | Hyperlinks |
| `text-brand` | #cc8f00 | Brand-colored text |
| `text-error` | #f0325e | Error messages |
| `text-success` | #12a154 | Success messages |
| `text-disabled` | #c0c0c0 | Disabled text |
| `text-blank` | #ffffff | White text on dark |
| `text-on-background` | #222222 | Text on brand bg |
| `border-divider` | #f4f4f4 | Subtle dividers |
| `border-thin` | #e8e8e8 | Thin lines |
| `border-regular` | #dddddd | Default borders |
| `border-active` | #ffd400 | Focus/selected |
| `border-brand` | #ffd400 | Brand accent |
| `border-error` | #f0325e | Error state |
| `icon-primary` | #222222 | Default icon |
| `icon-secondary` | #595959 | Supporting icon |
| `icon-brand` | #ffba00 | **Xe brand icon** |
| `icon-error` | #f0325e | Error icon |
| `interaction-brand-hover` | #ffe884 | Button hover |
| `interaction-brand-pressed` | #ffba00 | Button pressed |
| `interaction-primary-hover` | #f4f4f4 | Secondary hover |
| `interaction-error-hover` | #f35b7e | Error hover |
| `interaction-error-pressed` | #cb294e | Error pressed |

---

## Component Specs

| Component | Key Specs |
|---|---|
| **Button** | 24/32/40/48px heights, radius-8, font 16px/600 |
| **Input** | 48px height, floating label, border-thin→active→error |
| **Chip** | 32px, radius-999 (pill), font 14px/500 |
| **Card** | radius-8, padding-16, subtle shadow |
| **NavBar** | 64px, background-primary, "Bán xe" CTA (#ffd400) |
| **Empty State** | Illustration 100–200px + title 24px/600 + CTA 48px |
| **Search Input** | 48px, search icon left 24px, close icon right 24px |
| **Dropdown** | 48px, chevron-down right 24px, items 40px |

---

## Spacing & Radius

| Token | Value | | Token | Value |
|---|---|---|---|---|
| `spacing-8` | 8px | | `radius-4` | 4px |
| `spacing-12` | 12px | | `radius-8` | 8px |
| `spacing-16` | 16px | | `radius-12` | 12px |
| `spacing-24` | 24px | | `radius-999` | 999px |
| `spacing-32` | 32px | | | |

---

## Typography

| Style | Size | Weight |
|---|---|---|
| Heading 2 | 28px | 600 |
| Heading 3 | 24px | 600 |
| Body | 16px | 400 |
| Small | 14px | 400 |
| Caption | 12px | 400 |
| Label | 12px | 500 |

Font: Reddit Sans (Google Fonts)

---

## Layout

- **Mobile (375px):** Centered container, box-shadow phone frame
- **Desktop (1440px):** Full width + 64px navbar, logo left, "Bán xe" CTA right

---

## Logo
File: `cho-tot-xe-logo.png` | Size: 40px in navbar | Format: PNG only

---

## CSS Root (Xe)

```css
:root {
  --background-primary: #ffffff;
  --background-app: #f7f7f7;
  --background-secondary: #f4f4f4;
  --background-tertiary: #e8e8e8;
  --background-brand: #ffd400;
  --background-error: #f0325e;
  --background-success: #12a154;
  --background-overlay: rgba(34,34,34,0.5);
  --text-primary: #222222;
  --text-secondary: #595959;
  --text-tertiary: #8c8c8c;
  --text-link: #306bd9;
  --text-brand: #cc8f00;
  --text-error: #f0325e;
  --text-success: #12a154;
  --text-disabled: #c0c0c0;
  --text-blank: #ffffff;
  --text-on-background: #222222;
  --border-divider: #f4f4f4;
  --border-thin: #e8e8e8;
  --border-regular: #dddddd;
  --border-active: #ffd400;
  --border-brand: #ffd400;
  --border-error: #f0325e;
  --icon-primary: #222222;
  --icon-secondary: #595959;
  --icon-brand: #ffba00;
  --icon-error: #f0325e;
  --interaction-brand-hover: #ffe884;
  --interaction-brand-pressed: #ffba00;
  --interaction-primary-hover: #f4f4f4;
  --spacing-8: 8px;
  --spacing-12: 12px;
  --spacing-16: 16px;
  --spacing-24: 24px;
  --spacing-32: 32px;
  --radius-4: 4px;
  --radius-8: 8px;
  --radius-12: 12px;
  --radius-999: 999px;
  --font-family: 'Reddit Sans', -apple-system, BlinkMacSystemFont, sans-serif;
}
```
