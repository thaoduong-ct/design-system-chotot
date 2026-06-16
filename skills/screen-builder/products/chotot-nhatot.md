# CHOTOT Design System v3.0 — Nhà Tốt Quick Reference

**Product:** Nhà Tốt (nhatot.com) | Brand: #fa6819 (orange) | NavBar CTA: "Đăng tin"

---

## Semantic Tokens (Critical)

✅ `var(--background-brand)` ❌ `#fa6819`

---

## Color Tokens (Nhà Tốt — Orange Theme)

| Token | Value | Usage |
|---|---|---|
| `background-primary` | #ffffff | Main surface |
| `background-app` | #f7f7f7 | Page background |
| `background-secondary` | #f4f4f4 | Secondary surfaces |
| `background-tertiary` | #e8e8e8 | Tertiary surfaces |
| `background-brand` | #fa6819 | **Nhà Tốt Brand** |
| `background-error` | #f0325e | Error states |
| `background-success` | #12a154 | Success states |
| `background-warning` | #fb7328 | Warning states |
| `background-info` | #306bd9 | Info states |
| `background-overlay` | rgba(34,34,34,0.5) | Modal scrim |
| `text-primary` | #222222 | Main text |
| `text-secondary` | #595959 | Supporting text |
| `text-tertiary` | #8c8c8c | Placeholder/hint |
| `text-link` | #306bd9 | Hyperlinks |
| `text-brand` | #c74e0e | Brand-colored text |
| `text-error` | #f0325e | Error messages |
| `text-success` | #12a154 | Success messages |
| `text-disabled` | #c0c0c0 | Disabled text |
| `text-blank` | #ffffff | White text on dark |
| `text-on-background` | #ffffff | Text on orange bg |
| `border-divider` | #f4f4f4 | Subtle dividers |
| `border-thin` | #e8e8e8 | Thin lines |
| `border-regular` | #dddddd | Default borders |
| `border-active` | #fa6819 | Focus/selected |
| `border-brand` | #fa6819 | Brand accent |
| `border-error` | #f0325e | Error state |
| `icon-primary` | #222222 | Default icon |
| `icon-secondary` | #595959 | Supporting icon |
| `icon-brand` | #fa6819 | **Nhà Tốt brand icon** |
| `icon-error` | #f0325e | Error icon |
| `interaction-brand-hover` | #fb8f4a | Button hover |
| `interaction-brand-pressed` | #e05a10 | Button pressed |
| `interaction-primary-hover` | #f4f4f4 | Secondary hover |
| `interaction-error-hover` | #f35b7e | Error hover |
| `interaction-error-pressed` | #cb294e | Error pressed |

---

## Component Specs

| Component | Key Specs |
|---|---|
| **Button** | 24/32/40/48px heights, radius-8, font 16px/600, orange brand |
| **Input** | 48px height, floating label, border-active = orange |
| **Chip** | 32px, radius-999 (pill), font 14px/500 |
| **Card** | radius-8, padding-16, property photo top |
| **NavBar** | 64px, background-primary, "Đăng tin" CTA (#fa6819) |
| **Empty State** | Illustration 100–200px + title 24px/600 + CTA 48px |
| **Search Input** | 48px, search icon left 24px, active border orange |
| **Map View** | Full-width map, property pins, filter bar overlay |

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

Font: Reddit Sans (Google Fonts)

| Style | Size | Weight |
|---|---|---|
| Heading 2 | 28px | 600 |
| Heading 3 | 24px | 600 |
| Body | 16px | 400 |
| Small | 14px | 400 |
| Caption | 12px | 400 |

---

## Layout

- **Mobile (375px):** Centered container, box-shadow phone frame
- **Desktop (1440px):** Full width + 64px navbar, "Đăng tin" button (orange)

---

## Logo
File: `nha-tot-logo.png` | Size: 40px in navbar | Format: PNG only

---

## CSS Root (Nhà Tốt — Orange)

```css
:root {
  --background-primary: #ffffff;
  --background-app: #f7f7f7;
  --background-secondary: #f4f4f4;
  --background-tertiary: #e8e8e8;
  --background-brand: #fa6819;       /* ORANGE */
  --background-error: #f0325e;
  --background-success: #12a154;
  --background-overlay: rgba(34,34,34,0.5);
  --text-primary: #222222;
  --text-secondary: #595959;
  --text-tertiary: #8c8c8c;
  --text-link: #306bd9;
  --text-brand: #c74e0e;
  --text-error: #f0325e;
  --text-success: #12a154;
  --text-disabled: #c0c0c0;
  --text-blank: #ffffff;
  --text-on-background: #ffffff;     /* White on orange */
  --border-divider: #f4f4f4;
  --border-thin: #e8e8e8;
  --border-regular: #dddddd;
  --border-active: #fa6819;          /* ORANGE */
  --border-brand: #fa6819;
  --border-error: #f0325e;
  --icon-primary: #222222;
  --icon-secondary: #595959;
  --icon-brand: #fa6819;             /* ORANGE */
  --icon-error: #f0325e;
  --interaction-brand-hover: #fb8f4a;    /* Orange hover */
  --interaction-brand-pressed: #e05a10;  /* Orange pressed */
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
