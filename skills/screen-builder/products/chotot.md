# CHOTOT Design System v3.0 — Chợ Tốt Product Quick Reference

**Compact version — Load only for Chợ Tốt product (saves ~25% tokens)**

---

## Semantic Token Names (Critical!)

✅ RIGHT: `var(--background-brand)`, `var(--text-on-background)`, `var(--border-thin)`

❌ WRONG: `var(--color-primary)`, `var(--text-white)`, `var(--border-light)`

---

## Color Tokens (Chợ Tốt Brand = #ffd400)

| Token | Value | Usage |
|-------|-------|-------|
| `background-primary` | #ffffff | Main surface |
| `background-app` | #f7f7f7 | Page background |
| `background-secondary` | #f4f4f4 | Secondary surfaces |
| `background-brand` | #ffd400 | **Chợ Tốt Primary** |
| `background-error` | #f0325e | Error states |
| `background-success` | #12a154 | Success states |
| `text-primary` | #222222 | Main text |
| `text-secondary` | #595959 | Supporting text |
| `text-link` | #306bd9 | Hyperlinks |
| `text-error` | #f0325e | Error message |
| `text-success` | #12a154 | Success message |
| `border-thin` | #e8e8e8 | Thin borders |
| `border-regular` | #dddddd | Default borders |
| `border-brand` | #ffd400 | **Brand accent** |
| `icon-brand` | #ffba00 | **Brand icons** |
| `interaction-brand-hover` | #ffe884 | Button hover |
| `interaction-brand-pressed` | #ffba00 | Button pressed |

---

## Component Specs (Chợ Tốt Focused)

### Button
- **Heights:** 24px (compact), 32px (sm), 40px (md), 48px (lg)
- **Primary:** `background-brand` + `text-on-background`
- **Secondary:** `background-secondary` + `border-thin`
- **States:** hover → `interaction-brand-hover`, pressed → `interaction-brand-pressed`

### Input
- **Height:** 48px (40px compact)
- **Border:** `border-thin` (default) → `border-regular` (focus) → `border-brand` (active)
- **Label:** Floating label (16px/400)
- **Icon support:** 20px, `icon-secondary`

### Chip
- **Height:** 32px
- **Border-radius:** 999px (pill)
- **Font:** 14px / 500 weight
- **States:** filled / outline

### Card
- **Border-radius:** 8px
- **Padding:** 16px (standard)
- **Shadow:** Subtle (0 2px 4px rgba(0,0,0,0.1))

### NavBar (Desktop)
- **Height:** 64px
- **Background:** `background-primary`
- **Border:** 1px `border-divider`
- **Logo:** 40px centered
- **Brand color:** #ffd400 ("Đăng bán" button)

### Empty State
- **Layout:** Centered vertical
- **Illustration:** 100-200px
- **Title:** 24px / 600 weight
- **Description:** 16px / 400 weight
- **CTA Button:** 48px

---

## Spacing & Radius

| Token | Value |
|-------|-------|
| `spacing-8` | 8px (xs) |
| `spacing-12` | 12px (sm) |
| `spacing-16` | 16px (md, standard) |
| `spacing-24` | 24px (xl) |
| `radius-4` | 4px (buttons, badges) |
| `radius-8` | 8px (cards, modals) |
| `radius-999` | 999px (pills, avatars) |

---

## Typography

- **Font:** Reddit Sans (Google Fonts)
- **Heading 2:** 28px / 600
- **Heading 3:** 24px / 600
- **Body:** 16px / 400
- **Small:** 14px / 400

---

## Mobile (375px) vs Desktop (1440px)

**Mobile:** Centered 375px container with shadow (phone frame)
**Desktop:** Full 1440px + 64px navbar with Chợ Tốt yellow accent

---

## CSS Root Definition (Chợ Tốt Only)

```css
:root {
  /* Chợ Tốt Brand = #ffd400 */
  --background-primary: #ffffff;
  --background-app: #f7f7f7;
  --background-secondary: #f4f4f4;
  --background-tertiary: #e8e8e8;
  --background-brand: #ffd400;
  --background-error: #f0325e;
  --background-success: #12a154;

  --text-primary: #222222;
  --text-secondary: #595959;
  --text-tertiary: #8c8c8c;
  --text-link: #306bd9;
  --text-brand: #cc8f00;
  --text-error: #f0325e;
  --text-success: #12a154;

  --border-thin: #e8e8e8;
  --border-regular: #dddddd;
  --border-brand: #ffd400;
  --border-active: #ffd400;

  --icon-brand: #ffba00;
  --interaction-brand-hover: #ffe884;
  --interaction-brand-pressed: #ffba00;

  --spacing-8: 8px;
  --spacing-12: 12px;
  --spacing-16: 16px;
  --spacing-24: 24px;

  --radius-4: 4px;
  --radius-8: 8px;
  --radius-999: 999px;

  --font-family: 'Reddit Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}
```

---

## Logo
- **File:** `chotot-lgo.png`
- **Size:** 40px (navbar)
- **Format:** PNG (NEVER SVG)

---

## Quick Tips
1. Always use token names, NOT raw values
2. Mobile = 375px centered, Desktop = 1440px + navbar
3. Reference live site: chotot.com
4. States use `interaction-*` tokens
5. Brand color = #ffd400
