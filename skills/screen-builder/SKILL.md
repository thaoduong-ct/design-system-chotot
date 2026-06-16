---
name: ct-prototype-v1
description: "Generate pixel-perfect app screens using CHOTOT Design System v3.0. Outputs self-contained HTML files with correct Vietnamese labels, semantic tokens, and brand theming for all 4 products (Chợ Tốt, Xe, Nhà Tốt, Việc Làm Tốt). Use this skill when user says: tạo màn hình, design screen, UI design, tạo giao diện, mockup, thiết kế màn hình, design cho, prototype, tạo screen."
---

# CHOTOT Screen Builder v2

Generate high-fidelity app screens as self-contained HTML using CHOTOT Design System v3.0.

---

## 🔴 Semantic Token Naming (Critical)

Always use token names from the design system reference — never hardcode raw color values. The design system enforces this as a strict rule because raw values break theming and make future updates painful.

✅ RIGHT: `var(--background-brand)`, `var(--text-on-background)`, `var(--border-thin)`

❌ WRONG: `var(--color-primary)`, `var(--text-white)`, `var(--border-light)`, `#ffd400`

**Token families:** `background-*`, `text-*`, `icon-*`, `border-*`, `interaction-*`

---

## Workflow

### Step 1 — Hỏi trước khi làm

**Luôn hỏi 4 câu này trước khi generate**, không tự suy đoán. Dùng AskUserQuestion tool với dạng multiple-choice để user trả lời nhanh.

**Câu 1 — Sản phẩm:**
> Chợ Tốt / Chợ Tốt Xe / Nhà Tốt / Việc Làm Tốt?

**Câu 2 — Nội dung màn hình:**
> Mô tả màn hình hoặc flow cụ thể — ví dụ: "trang chủ", "form đăng tin", "3 màn hình: danh sách → lọc → chi tiết"

**Câu 3 — Thiết bị:**
> Mobile (375px) / Desktop (1440px) / Cả hai?

**Câu 4 — Kiểu output:**
> - **Một màn hình** — single screen tĩnh
> - **Nhiều màn hình** — các screens xếp dọc nối tiếp nhau (flow diagram)
> - **Interaction** — states trong một màn hình (hover, tap, error, success, loading...)
> - **Kết hợp** — nhiều màn hình, mỗi màn hình có interaction riêng

Sau khi có đủ 4 câu trả lời → thực hiện Step 1.5 (pre-detect & batch load) → generate.

**Product reference files:**

| Sản phẩm | Brand Color | NavBar CTA | Reference File |
|---|---|---|---|
| Chợ Tốt | #ffd400 | "Đăng bán" | `chotot.md` |
| Chợ Tốt Xe | #ffd400 | "Bán xe" | `chotot-xe.md` |
| Nhà Tốt | #fa6819 | "Đăng tin" | `chotot-nhatot.md` |
| Việc Làm Tốt | #306bd9 | "Đăng tuyển" | `chotot-vieclamtot.md` |

**Component detection map** — dùng để liệt kê files cần load ở Step 1.5:

| Nội dung màn hình | Component files |
|---|---|
| form, đăng nhập, nhập liệu | `button.md`, `input-field.md`, `checkbox.md` |
| danh sách, listing, grid | `chip.md`, `input-field-search.md` |
| filter, lọc, sắp xếp | `chip.md`, `input-field-dropdown.md`, `input-field.md` |
| profile, chi tiết | `button.md`, `input-field.md`, `avatar.md` |
| thanh toán, checkout | `input-field.md`, `button.md` |
| navigation, menu | `navigation-desktop.md`, `drawer.md`, `button.md` |
| empty state, 404 | `empty-state.md` |
| toast, thông báo | `announcer.md` |
| chat, messaging | `input-field.md`, `button.md`, `avatar.md` |

### Step 1.5 — Pre-detect & Batch Load

Thực hiện bước này **ngay sau khi có đủ 4 câu trả lời, trước khi đọc bất kỳ file nào**. Mục tiêu: xác định toàn bộ context cần thiết và load một lần duy nhất — tránh phát hiện thêm component trong lúc đang generate (mỗi lần load thêm đều tốn token và gây gián đoạn tư duy).

**1. Map tất cả màn hình → component files, rồi deduplicate**

Với mỗi màn hình trong request, tra bảng Component detection map ở trên. Gộp tất cả files lại, loại bỏ trùng lặp.

Ví dụ — request "danh sách xe + filter + chi tiết xe":
```
danh sách  →  chip.md, input-field-search.md
filter     →  chip.md, input-field-dropdown.md, input-field.md
chi tiết   →  button.md, input-field.md, avatar.md

Sau dedup  →  button.md, chip.md, input-field.md,
              input-field-search.md, input-field-dropdown.md, avatar.md
```

**2. Quyết định có cần `tokens.md` không**

Chỉ thêm `tokens.md` vào batch nếu bạn cần dùng một token mà product reference file không có. Đây là file coverage đầy đủ nhất nhưng cũng nặng nhất — **không load mặc định**.

**3. Load tất cả song song trong một round duy nhất**

```
Ví dụ batch load cho request trên:
├── chotot-xe.md                       ← product reference (luôn có)
├── components/button.md
├── components/chip.md
├── components/input-field.md
├── components/input-field-search.md
├── components/input-field-dropdown.md
└── components/avatar.md
```

**Sau bước này không load thêm file nào nữa.** Nếu trong lúc viết HTML bạn nhận ra cần thêm component chưa có → dừng lại, quay về đây, bổ sung vào danh sách và load batch lại từ đầu.

### Step 2 — Apply Inline UI Pattern Snapshot

The live sites (chotot.com, nhatot.com, vieclamtot.com, xe.chotot.com) are blocked in this environment — **do not attempt WebFetch**. Instead, use the inline label & pattern reference below. These capture the real Vietnamese labels, screen hierarchy, and key interaction patterns for each product.

---

#### 🛍️ Chợ Tốt (Marketplace)

**Nav tabs:** Trang chủ · Danh mục · Đăng bán · Tin nhắn · Cá nhân

**Listing card:** Tên sản phẩm | Giá (đ hoặc "Thỏa thuận") | Địa chỉ | Thời gian đăng | Lượt xem

**Search & filter:** Tìm kiếm · Lọc theo: Danh mục / Giá từ–đến / Địa điểm / Sắp xếp (Mới nhất, Giá tăng dần, Giá giảm dần)

**Detail screen:** Ảnh sản phẩm (carousel) → Giá → Mô tả → Thông tin người bán → [Nhắn tin] [Gọi điện] [Lưu tin]

**Post flow:** Chọn danh mục → Thêm ảnh → Nhập thông tin (Tiêu đề, Mô tả, Giá, Địa chỉ) → Xem trước → Đăng tin

**Status labels:** Tin đang hiển thị · Tin chờ duyệt · Tin hết hạn · Đã bán

**CTAs:** Đăng bán · Nhắn tin · Gọi điện · Xem tin · Lưu · Chia sẻ · Báo cáo

---

#### 🚗 Chợ Tốt Xe

**Nav tabs:** Trang chủ · Mua xe · Đăng bán · Tin nhắn · Cá nhân

**Listing card:** Tên xe (Hãng + Model + Năm) | Giá | Số km đã đi | Địa chỉ | Năm sản xuất

**Filter:** Hãng xe · Loại xe (Ô tô / Xe máy / Xe tải) · Giá · Năm sản xuất · Tình trạng (Mới / Đã qua sử dụng) · Địa điểm

**Detail screen:** Gallery → Thông số kỹ thuật (Hãng, Model, Năm, Số km, Nhiên liệu, Hộp số, Màu sắc) → Mô tả → Người bán → [Nhắn tin] [Gọi điện]

**Post flow:** Chọn loại xe → Hãng xe → Model → Năm → Số km → Tình trạng → Giá → Ảnh → Mô tả → Đăng bán

**CTAs:** Bán xe · Nhắn tin · Gọi điện · Xem giá thị trường · Lưu · So sánh xe

---

#### 🏠 Nhà Tốt (Real Estate)

**Nav tabs:** Trang chủ · Mua bán · Cho thuê · Dự án · Đăng tin · Cá nhân

**Listing card:** Loại BĐS (Căn hộ/Nhà phố/Đất/...) | Giá (triệu/tỷ hoặc /tháng) | Diện tích (m²) | Số PN · Số WC | Địa chỉ | Ngày đăng

**Filter:** Loại BĐS · Mức giá · Diện tích · Số phòng ngủ · Hướng nhà · Quận/Huyện · Phường/Xã

**Detail screen:** Ảnh gallery → Giá & Diện tích → Thông tin chi tiết (Hướng, Số tầng, Pháp lý) → Mô tả → Bản đồ → Môi giới → [Liên hệ] [Đặt lịch xem]

**Post flow:** Loại BĐS → Địa chỉ → Thông tin (Diện tích, Giá, Số PN, Mô tả) → Ảnh → Pháp lý → Đăng tin

**Status labels:** Đang hiển thị · Chờ duyệt · Đã cho thuê · Đã bán · Hết hạn

**CTAs:** Đăng tin · Liên hệ môi giới · Đặt lịch xem nhà · Lưu dự án · Nhận thông báo

---

#### 💼 Việc Làm Tốt (Jobs)

**Nav tabs:** Trang chủ · Việc làm · Đăng tuyển · Tin nhắn · Cá nhân

**Listing card:** Tên vị trí | Tên công ty | Mức lương (triệu hoặc "Thỏa thuận") | Địa điểm | Hạn nộp hồ sơ | Loại hình (Toàn thời gian / Bán thời gian / Remote)

**Filter:** Ngành nghề · Mức lương · Kinh nghiệm (Không yêu cầu / 1–2 năm / 3–5 năm / >5 năm) · Địa điểm · Hình thức · Cấp bậc

**Detail screen:** Tên vị trí → Logo + Tên công ty → Thẻ (Lương, Địa điểm, Loại hình) → Mô tả công việc → Yêu cầu ứng viên → Quyền lợi → Hạn nộp → [Ứng tuyển ngay]

**Application flow:** Chọn hồ sơ (VLT / Upload CV / Cả hai) → Thông tin (Họ tên, SĐT, Email, Lương mong muốn, Thư giới thiệu) → Gửi → Xác nhận

**Status labels:** Đang chờ phản hồi · Đã xem · Phù hợp · Không phù hợp · Đã rút hồ sơ

**CTAs:** Đăng tuyển · Ứng tuyển ngay · Lưu tin · Xem hồ sơ · Xem trạng thái ứng tuyển · Tìm việc khác

---

Apply these labels and patterns directly when generating screens — no WebFetch needed.

### Step 3 — Generate HTML

**Output location (bắt buộc — không được thay đổi):**

Tất cả file output PHẢI được lưu vào:
```
/Users/thaoduong/Downloads/screens/<tên-màn-hình>/
```

Không lưu vào root Downloads, không lưu vào Downloads/HTML, không dùng đường dẫn tương đối.

**Output formats:**
- **Single:** `/Users/thaoduong/Downloads/screens/<name>/index.html`
- **Interactive:** `/Users/thaoduong/Downloads/screens/<name>/index.html` — single file với hover/focus/active/error states + JS transitions
- **Flow:** `/Users/thaoduong/Downloads/screens/<name>/index.html` — tất cả screens xếp dọc nối tiếp nhau
- **Multiple screens:** Mỗi màn hình một file riêng + `index.html` liệt kê links
  ```
  /Users/thaoduong/Downloads/screens/<name>/
  ├── index.html         ← danh sách links
  ├── screen-1.html
  ├── screen-2.html
  └── screen-3.html
  ```

**Tên thư mục:** Dùng kebab-case, tiếng Anh, ngắn gọn — ví dụ: `job-detail`, `checkout-mobile`, `seller-dashboard`.

**Technical requirements:**
- Self-contained HTML + inline CSS + inline JS (no external files)
- Font: Reddit Sans via Google Fonts
- Mobile: 375px centered container with box shadow (phone frame effect)
- Desktop: 1440px full-width + mandatory 64px navbar
- Icons: Google Material Symbols (Weight 400, Grade 0, Rounded style)
  - Standard: 24px | Compact: 20px | Dense: 16px

**Logo Assets — Use PNG files, never generate SVG:**

| Product | Logo File |
|---|---|
| Chợ Tốt | `chotot-lgo.png` |
| Chợ Tốt Xe | `cho-tot-xe-logo.png` |
| Nhà Tốt | `nha-tot-logo.png` |
| Việc Làm Tốt | `viec-lam-tot-logo.png` |

Embed logo trực tiếp dưới dạng base64 trong `<img src="data:image/png;base64,...">` — không copy file riêng.

---

## Component Reference Files

Each component has a dedicated spec file in `components/`. **Load only the files you need** — được xác định ở Step 1.5 (Pre-detect & Batch Load), không load tất cả.

| File | Component(s) |
|---|---|
| `components/button.md` | Button (all types, sizes, states) |
| `components/icon-button.md` | Icon Button |
| `components/input-field.md` | Input Field (text, floating label) |
| `components/input-field-currency.md` | Input — Currency |
| `components/input-field-dropdown.md` | Input — Dropdown |
| `components/input-field-multiselect.md` | Input — Multi-Select |
| `components/input-field-range.md` | Input — Range |
| `components/input-field-search.md` | Input — Search |
| `components/input-field-textarea.md` | Input — Textarea |
| `components/checkbox.md` | Checkbox |
| `components/chip.md` | Chip (filter, tag) |
| `components/radio.md` | Radio |
| `components/drawer.md` | Drawer / Bottom Sheet |
| `components/empty-state.md` | Empty State |
| `components/avatar.md` | Avatar |
| `components/breadcrumbs.md` | Breadcrumbs |
| `components/navigation-desktop.md` | NavBar (desktop) |
| `components/announcer.md` | Announcer / Toast |
| `components/tokens.md` | All semantic tokens + measurement |

**Khi nào load `components/tokens.md`:** Chỉ khi product reference file (vd. `chotot.md`) không có token cụ thể bạn cần. Đây là fallback đầy đủ nhưng nặng — không load mặc định, và nếu cần thì phải đưa vào batch ở Step 1.5, không load riêng lẻ sau đó.

---

## 🎨 Design Excellence Principles

Apply these throughout — they're what separates a mockup from a prototype someone would actually ship.

**Clarity**
- Every screen communicates clearly what the user should do next
- Use Vietnamese labels from the product reference file and the inline snapshots in Step 4
- Helper text and error messages guide recovery, not just report failure

**Minimize friction**
- Auto-focus the first relevant input on load
- Use sensible defaults so users don't have to make unnecessary choices
- Reduce steps between user intent and completion

**Animation & feedback**
- Transitions between screens: smooth fade or slide (CSS transition: 300ms ease)
- Micro-animations: error shake (keyframe), success checkmark draw
- Loading states on any async action (spinner or skeleton)
- Every interactive element must have hover, focus, active, disabled states

**Accessibility (WCAG AA)**
- Color contrast minimum 4.5:1 for text
- Never convey meaning by color alone — pair with icon or label
- Full keyboard navigation: Tab, Enter, Escape
- Visible focus rings on all interactive elements
- ARIA labels on icon-only buttons and dynamic regions

**Mobile excellence**
- Touch targets minimum 48×48px
- Vertical-first layout, thumb-friendly placement (primary actions at bottom)
- No horizontal scrolling at 375px

---

## 🎨 Theme System (Per Product)

Each product has its own brand color applied via CSS custom properties. Override these in `:root` when generating for a specific product:

```css
/* Chợ Tốt & Xe */
--background-brand: #ffd400;
--border-brand: #ffd400;
--border-active: #ffd400;
--icon-brand: #ffba00;
--interaction-brand-hover: #ffe884;
--interaction-brand-pressed: #ffba00;

/* Nhà Tốt — override above with: */
--background-brand: #fa6819;
--border-brand: #fa6819;
--border-active: #fa6819;
--icon-brand: #fa6819;
--interaction-brand-hover: #fb8f4a;
--interaction-brand-pressed: #e05a10;

/* Việc Làm Tốt — override above with: */
--background-brand: #306bd9;
--border-brand: #306bd9;
--border-active: #306bd9;
--icon-brand: #306bd9;
--interaction-brand-hover: #548af0;
--interaction-brand-pressed: #1952ba;
```

Shared neutral tokens (text, border, spacing, radius) never change across products.

---

## Quality Checklist

Run through this before delivering output. Each item prevents a class of common mistakes.

**Tokens:**
- [ ] All colors use CSS custom properties (`var(--background-brand)`, etc.) — zero raw hex values
- [ ] Token names match exactly what's in the product reference file

**Logo & icons:**
- [ ] Logo is a PNG file copied from `logo/` — never a generated SVG
- [ ] Icons are Google Material Symbols only (Weight 400, Grade 0, Rounded)
- [ ] Icon colors use `icon-*` tokens

**Layout:**
- [ ] Vietnamese labels match the inline snapshots in Step 4 and the product reference file
- [ ] Mobile: 375px centered with phone frame shadow
- [ ] Desktop: 1440px full-width + 64px navbar with correct product CTA
- [ ] Component dimensions match specs exactly

**UX:**
- [ ] Hover/focus/active/disabled states on all interactive elements
- [ ] Loading state on any async action
- [ ] Error states show recovery path (not just red text)
- [ ] Empty states handled with illustration + action
- [ ] Touch targets 48px minimum on mobile
- [ ] Smooth transitions between screens/states
