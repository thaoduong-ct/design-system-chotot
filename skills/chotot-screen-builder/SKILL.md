---
name: chotot-screen-builder
description: |
  Generate app screens and UI features as pixel-perfect HTML pages served on localhost, based on the CHOTOT Design System (ds-chotot-figma-design). The output is ready to screenshot and paste into Figma. Use this skill whenever the user wants to create a new app screen, UI mockup, feature layout, wireframe, or any visual design for a mobile or desktop application. Trigger on phrases like "tạo màn hình", "design screen", "tạo giao diện", "tạo tính năng", "mockup", "UI design", "tạo layout", "thiết kế màn hình", "screen design", "app screen", "tạo page", or any request to visually design an application screen or feature. Also trigger when the user mentions pasting into Figma, creating a design for Figma, or generating a localhost preview of a UI. Even if the user doesn't explicitly mention Figma or localhost — if they're asking to design or create a screen/feature for an app, use this skill.
---

# Figma Screen Generator — CHOTOT Design System

## Purpose

This skill generates high-fidelity app screens as standalone HTML files served on localhost. The output faithfully follows the CHOTOT Design System v3.0 — using the exact tokens (colors, spacing, typography, radius) and component specs documented in `ds-chotot-figma-design/`. The result can be screenshotted and pasted directly into Figma, or used with Figma MCP tools for reference.

## Why This Matters

Designing screens from scratch in Figma is slow. This skill lets you describe what you want in plain language ("tạo màn hình đăng nhập cho app Chợ Tốt" or "create a product listing page with filters"), and it produces a faithful HTML render on localhost that you can paste into Figma as a starting point — saving hours of manual component assembly.

---

## Workflow

### Step 1: Read the Design System

Before writing any HTML, read ALL documentation files in the `ds-chotot-figma-design/` folder. This is non-negotiable — the design system tokens and component specs are the source of truth.

```
ds-chotot-figma-design/
├── ds-token-documentation.md          ← Color, spacing, radius, typography tokens
├── navigation-desktop-component-documentation.md  ← Desktop navigation bar (BẮT BUỘC cho desktop)
├── icon-system-component-documentation.md         ← Icon catalogue (BẮT BUỘC cho mọi screen)
├── button-component-documentation.md
├── icon-button-component-documentation.md
├── breadcrumbs-item-component-documentation.md
├── checkbox-component-documentation.md
├── chip-component-documentation.md
├── drawer-component-documentation.md
├── empty-state-component-documentation.md
├── input-field-component-documentation.md
├── input-field-currency-component-documentation.md
├── input-field-dropdown-component-documentation.md
├── input-field-range-component-documentation.md
├── input-field-search-component-documentation.md
└── input-field-textarea-component-documentation.md
```

Read them all using the Read tool. Start with `ds-token-documentation.md` (the foundation), then all component docs. This ensures every color, spacing value, border-radius, and typography style matches the CHOTOT design system exactly.

### Step 2: Understand the User's Request

Clarify what screen or feature the user wants. Key questions to consider:

- **Platform**: Mobile (375px width) or Desktop (1440px or custom width)?
- **Screen type**: Login, listing, detail, search results, settings, form, empty state, etc.?
- **Brand/Product**: Which product is this screen for? This determines the logo to use (see Logo section below).
- **Key components**: Which DS components are needed (buttons, inputs, chips, drawers, etc.)?
- **Content**: What data/text should appear? Real or placeholder?
- **Interactions**: Any specific states to show (hover, error, loading, disabled)?

If the user's request is clear enough, proceed without asking. If ambiguous, ask briefly — don't over-interrogate.

#### Logo Assets

Real logo images are available in the `logo/` folder. Always use the correct logo image based on the product/brand mentioned by the user. Copy the logo file into the screen's output folder and reference it with a relative `<img>` tag.

| Product | File | Path |
|---------|------|------|
| Chợ Tốt | `chotot-lgo.png` | `logo/chotot-lgo.png` |
| Việc Làm Tốt | `viec-lam-tot-logo.png` | `logo/viec-lam-tot-logo.png` |
| Việc Làm Tốt (white/dark bg) | `viec-lam-tot-logo-white.png` | `logo/viec-lam-tot-logo-white.png` |
| Nhà Tốt | `nha-tot-logo.png` | `logo/nha-tot-logo.png` |
| Chợ Tốt Xe | `cho-tot-xe-logo.png` | `logo/cho-tot-xe-logo.png` |

**How to use logos in generated screens:**

1. Copy the appropriate logo file into the screen's output folder:
   ```bash
   cp ds-chotot-figma-design/logo/chotot-lgo.png ds-chotot-figma-design/local-host/<screen-name>/logo.png
   ```

2. Reference it in the HTML with a relative path:
   ```html
   <img src="logo.png" alt="Chợ Tốt" height="40">
   ```

3. If the user doesn't specify which product, default to **Chợ Tốt** (`chotot-lgo.png`).

4. Never use placeholder text for the logo when a real logo image is available — always use the actual PNG file.

### Step 3: Check Figma Context (Optional but Recommended)

If Figma MCP tools are available, use them to gather additional context:

- `get_design_context` — understand the current Figma file structure
- `search_design_system` — find existing components in the Figma design system
- `get_screenshot` — see what's already designed to maintain consistency
- `get_style_guide` — get style guide information

This helps ensure the generated screen fits seamlessly with existing designs.

### Step 4: Generate the HTML

Create a single, self-contained HTML file. The file should:

#### Structure & File Organization

All generated screens are saved inside the `local-host/` folder in the workspace. Each screen gets its own subfolder with a descriptive name based on the screen's purpose. This keeps everything organized and easy to browse.

```
ds-chotot-figma-design/
├── local-host/                          ← All generated screens live here
│   ├── man-hinh-dang-nhap/              ← Example: login screen
│   │   └── index.html
│   ├── trang-listing-san-pham/          ← Example: product listing
│   │   └── index.html
│   ├── empty-state-khong-ket-qua/       ← Example: empty state
│   │   └── index.html
│   └── ...
├── ds-token-documentation.md
├── button-component-documentation.md
└── ...
```

**Naming convention for subfolders**: Automatically generate a short, descriptive folder name in lowercase kebab-case. Do NOT ask the user for the name — just pick one based on the screen's purpose. Use Vietnamese or English depending on the user's language. Examples: `man-hinh-dang-nhap`, `product-detail`, `search-results`, `form-dang-tin`, `chi-tiet-san-pham`, `empty-state-no-result`.

When presenting the result, tell the user the folder name you chose so they know where to find it.

Create the folder path:
```bash
mkdir -p ds-chotot-figma-design/local-host/<screen-name>/
```

Save the HTML file as `index.html` inside that subfolder.

#### HTML Requirements

1. **Single file**: All CSS must be inline or in a `<style>` block. No external stylesheets except the Google Fonts import for Reddit Sans (see Font section below).
2. **Exact tokens**: Use the exact hex values, spacing (px), border-radius, and font sizes from `ds-token-documentation.md`. Never approximate.
3. **Component fidelity**: Every component must match its documentation — correct sizes, states, colors, padding, border styles.
4. **Mobile-first viewport**: For mobile screens, set `<meta name="viewport" content="width=device-width, initial-scale=1">` and constrain the body to 375px width centered on the page with a subtle shadow, so it looks like a phone screen.
5. **Desktop viewport**: For desktop, use full width or the specified width.
6. **Icons — MUST use CHOTOT Icon System**: Read `icon-system-component-documentation.md` and use the icon names from the CHOTOT Icon System catalogue. Render icons as inline SVG. Never use Unicode symbols or random emoji as icon replacements. See the "Icon System" section below for details.
7. **Clean background**: Set the page background to `#f0f0f0` (or similar neutral) so the screen "card" stands out — this makes it easy to screenshot cleanly.
8. **No JavaScript required**: The output is static. JS is only needed if the user specifically requests interactive states.

#### Font: Reddit Sans (Bắt buộc)

The CHOTOT Design System uses **Reddit Sans** as the primary typeface. Every generated HTML file MUST import and use Reddit Sans. This is critical for pixel-perfect fidelity with the Figma designs.

Import Reddit Sans from Google Fonts in the `<head>`:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Reddit+Sans:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">
```

Then set the CSS font-family:

```css
:root {
  --font-family: 'Reddit Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

* {
  font-family: var(--font-family);
}
```

The system font stack is only a fallback — Reddit Sans must always load first. The font supports weights from 200 to 900, so all DS typography tokens (Regular=400, Medium=500, SemiBold=600, Bold=700) are covered.

#### Icon System (Bắt buộc)

Every screen MUST use icons from the CHOTOT Icon System as documented in `icon-system-component-documentation.md`. Read that doc before generating any HTML. Never substitute with Unicode symbols, emoji, or generic SVGs.

**How to use icons:**

1. Read `icon-system-component-documentation.md` to find the correct icon name for each use case.
2. Render each icon as an inline `<svg>` element with the correct viewBox (24x24 default).
3. Apply icon color via CSS custom properties — not hardcoded fills:
   - `--icon-primary: #222222` — default dark icons
   - `--icon-secondary: #595959` — subdued icons
   - `--icon-tertiary: #8c8c8c` — placeholder/hint icons
   - `--icon-brand` — brand-color per vertical (Chợ Tốt=#ffd400, Nhà Tốt=#fa6819, Việc Làm Tốt=#306bd9)
   - `--icon-disabled: #c0c0c0` — disabled state
   - `--icon-blank: #ffffff` — icons on dark/colored backgrounds
   - `--icon-error: #f0325e` — error/destructive icons

**Variant rules:**
- Use `-outline` variant for default/resting states
- Use `-fill` variant for active/selected/pressed states
- Use `-duotone` only for illustrative or decorative contexts (empty states, feature headers)

**Size rules:**
- 24×24px — standard size
- 20×20px — inside compact controls (chips, badges, small buttons)
- 16×16px — dense UI elements
- Wrap interactive icons in a 40×40px touchable container for tap targets

**Common icon mapping** (use these exact names from the catalogue):

| UI element | Icon name | Variant |
|------------|-----------|---------|
| Back arrow | `Arrowleft` | outline |
| Close/dismiss | `Close` | outline |
| Search | `Search` | outline (resting), fill (active) |
| Menu/hamburger | `Menu` | outline |
| Notifications | `Notification` | outline (resting), fill (unread) |
| Chat/messages | `Chat` | outline (resting), fill (active) |
| Wishlist/favorite | `Heart` | outline (resting), fill (saved) |
| Share | `Share` | outline |
| Filter | `Filter` | outline |
| Settings | `Setting` | outline |
| Edit | `Edit` | outline |
| Delete | `Trashbin` | outline |
| Camera/photo | `Camera` | outline |
| Location | `Location` | fill |
| Calendar | `Calendar` | outline |
| Info | `Info` | outline |
| Warning | `Warning` | fill |
| Checkmark | `Check` | fill |
| Star/rating | `Star` | fill (rated), outline (unrated) |
| User/profile | `User` | outline |
| Chevron right | `Chevronright` | outline |
| Chevron down | `Chevrondown` | outline |
| Plus/add | `Plus` | outline |
| Upload | `Upload` | outline |
| Download | `Download` | outline |

When an icon is needed that isn't in this quick-reference, look it up in `icon-system-component-documentation.md` under the full catalogue. If no matching icon exists in the catalogue, create a minimal SVG that follows the same 24×24px grid, 2px stroke, rounded-cap style.

#### CSS Token Mapping

Always map DS tokens to CSS custom properties at the top of the file:

```css
:root {
  /* Font — Reddit Sans is the CHOTOT DS primary typeface */
  --font-family: 'Reddit Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;

  /* Colors - from ds-token-documentation.md */
  --color-primary: #ffd400;
  --color-success: #12a154;
  --color-error: #f0325e;
  --color-warning: #fb7328;
  --color-text-primary: #222222;
  --color-text-secondary: #8c8c8c;
  --color-bg-primary: #ffffff;
  --color-bg-secondary: #f4f4f4;
  --color-border-thin: #e8e8e8;
  --color-border-black: #222222;

  /* Spacing */
  --spacing-4: 4px;
  --spacing-8: 8px;
  --spacing-12: 12px;
  --spacing-16: 16px;
  --spacing-20: 20px;
  --spacing-24: 24px;
  --spacing-32: 32px;

  /* Radius */
  --radius-small: 4px;
  --radius-medium: 8px;
  --radius-large: 12px;
  --radius-pill: 999px;

  /* Typography weights */
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
}

* {
  font-family: var(--font-family);
}
```

Extend these with ALL relevant tokens from the documentation. The above is just a starter — always cross-reference with the actual `ds-token-documentation.md`.

#### Component Implementation

For each DS component used, follow these rules:

- **Button**: Match the exact height (48/40/32/24px), padding, background color per type, border-radius (8px default, pill=999px). Include hover/pressed states if the user requests interactivity.
- **Input Field**: Floating label pattern — placeholder state vs filled state. Correct border colors per status (default=#e8e8e8, hover/focus=#222222, error=#f0325e, warning=#fb7328).
- **Chip**: Pill shape, correct fill/outline styles, selected/unselected states.
- **Drawer**: Bottom sheet for mobile (top-rounded corners), centered modal for desktop (all corners rounded). 480px width desktop, 375px mobile.
- **Checkbox**: Square with rounded corners, correct check icon, disabled state styling.
- **Empty State**: Centered layout with illustration placeholder, title, description, optional CTA button.

### Step 5: Serve on Localhost

After creating the HTML file, start a local HTTP server that serves the entire `local-host/` folder. This way all screens are accessible via URL paths like `http://localhost:8080/man-hinh-dang-nhap/`.

```bash
# Kill any existing server on port 8080
lsof -ti:8080 | xargs kill -9 2>/dev/null || true

# Serve the entire local-host folder
cd ds-chotot-figma-design/local-host
nohup python3 -m http.server 8080 > /dev/null 2>&1 &
echo "Server running at http://localhost:8080"
```

Use port 8080 by default. If it's busy, try 8081, 8082, etc.

The server serves the whole `local-host/` directory, so the user can browse all previously generated screens too — not just the latest one. Each screen is at its own path:

- `http://localhost:8080/man-hinh-dang-nhap/`
- `http://localhost:8080/product-detail/`
- `http://localhost:8080/search-results/`

### Step 6: Present to the User

After the server is running:

1. Tell the user the localhost URL for the specific screen (e.g., `http://localhost:8080/man-hinh-dang-nhap/`)
2. Mention that all previous screens are also browsable at `http://localhost:8080/`
3. The HTML file is already saved permanently in the workspace at `ds-chotot-figma-design/local-host/<screen-name>/index.html`
4. If Figma MCP is available, offer to take a screenshot or help position the design in Figma

---

## Platform Guidelines

### Mobile Screen (Default)
- Width: 375px
- Wrap content in a centered container with `box-shadow` to simulate a device frame
- Status bar at top (optional): time, signal, battery icons
- Bottom navigation bar (optional): common app navigation pattern

### Desktop Screen
- Width: 1440px (or as specified)
- **Navigation bar is MANDATORY**: Every desktop screen must include the top navigation bar as defined in `navigation-desktop-component-documentation.md`. Read that doc carefully and implement the nav bar pixel-perfect at the top of every desktop page.
- The nav bar is 64px tall, full-width (1440px), white background with #f4f4f4 bottom border.
- Choose the correct `type` based on context:
  - `Uni/ Scroliing` (default) — for inner pages: shows hamburger menu + logo + search bar + function group
  - `Homepage` — for landing pages: shows logo + tagline + centered tab group + function group
- Choose the correct `vertical` based on the product/brand to set the right logo, CTA label, and brand colors:
  - `Chợ Tốt` → CTA "Đăng bán", brand color #ffd400
  - `Chợ Tốt Xe` → CTA "Bán xe", brand color #ffd400
  - `Nhà Tốt` → CTA "Đăng tin", brand color #fa6819
  - `Việc Làm Tốt` → CTA "Đăng tuyển", brand color #306bd9
- Copy the appropriate logo PNG from `logo/` folder into the screen's output folder and use it in the nav bar's logo zone.
- Content area sits below the 64px nav bar.

---

## Quality Checklist

Before serving the final output, verify:

- [ ] **Font**: Reddit Sans is imported via Google Fonts and applied globally
- [ ] **Icons**: All icons use names from CHOTOT Icon System catalogue (no Unicode/emoji substitutes)
- [ ] All colors match DS token hex values exactly
- [ ] All spacing/padding matches DS measurement tokens
- [ ] Typography sizes and weights match DS type styles (using Reddit Sans)
- [ ] Component sizes (heights, widths) match their documentation
- [ ] Border radius values are correct per component
- [ ] The screen looks clean and professional when viewed in browser
- [ ] The HTML is self-contained (only external dependency is Google Fonts for Reddit Sans)

---

## Example Prompts and Expected Behavior

**"Tạo màn hình đăng nhập cho app Chợ Tốt"**
→ Read all DS docs → Create `local-host/man-hinh-dang-nhap/index.html` → Mobile login screen (375px) with: logo area, phone/email input field, password input field, Primary button "Đăng nhập", Ghost button "Quên mật khẩu?", secondary registration link → All text in Reddit Sans → Serve at `http://localhost:8080/man-hinh-dang-nhap/`

**"Design a product listing page with filter chips"**
→ Read all DS docs → Create `local-host/product-listing/index.html` → Mobile screen with: search input at top, horizontal chip row for filters (Tất cả, Xe cộ, Bất động sản, etc.), product cards in a list → All text in Reddit Sans → Serve at `http://localhost:8080/product-listing/`

**"Tạo trang empty state khi không có kết quả tìm kiếm"**
→ Read all DS docs → Create `local-host/empty-state-khong-ket-qua/index.html` → Screen using EmptyStateTemplate with "Keyword - No result" illustration, title "Không tìm thấy kết quả", description text, and a Primary button "Thử lại" → All text in Reddit Sans → Serve at `http://localhost:8080/empty-state-khong-ket-qua/`
