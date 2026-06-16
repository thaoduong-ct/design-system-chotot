# Empty State — CHOTOT Design System v3.0

**Purpose:** Two-part component: Empty Illustration (200×200px) + Empty State Template (illustration + title + description + CTA).

## Part 1: Empty Illustration

**Props:**
| Prop | Values | Default |
|------|--------|---------|
| `state` | 11 states (see below) | `404` |

**Illustration states:**
- `404`, `Maintainance`, `Disconnection`, `Keyword - No result`, `Filter - No result`
- `Not available`, `404 (White)`, `Grant Access`, `Working`, `Waiting CV`, `No reward`

**Dimensions:** 200×200px square, `object-cover`.

## Part 2: Empty State Template

**Props:**
| Prop | Values | Default |
|------|--------|---------|
| `showTittle` | bool | `true` |
| `showDescription` | bool | `true` |
| `showButton` | bool | `true` |

Note: Spelling "showTittle" (double-t) matches Figma prop.

## Layout
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 293px |
| Background | `--background/light/background-primary` | #ffffff |
| Padding top | `--padding/padding-x-small-8` | 8px |
| Padding bottom | — | 40px |
| Padding H | `--padding/padding-medium-16` | 16px |
| Direction | — | Flex column, center-aligned |

## Anatomy
```
[200px Illustration]
Title              (18px Bold, --text/text-primary)
Description        (14px Regular, --text/text-secondary)
[     Button     ]  (Primary L, 40px height)
```

## Text Container
| Property | Token | Value |
|----------|-------|-------|
| Width | — | 100% max-width 700px |
| Text-align | — | center |
| Gap (title ↔ description) | — | 4px |
| Gap (text ↔ button) | `--spacing/gap-x-small-8` | 8px |

## Title
| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showTittle` | hidden if false |
| Typography | `display-annotation` | 18px Bold 700, line-height 26px |
| Color | `--text/text-primary` | #222222 |

## Description
| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showDescription` | hidden if false |
| Typography | `body-section` | 14px Regular 400, line-height 20px |
| Color | `--text/text-secondary` | #595959 |

## Button
| Property | Token | Value |
|----------|-------|-------|
| Visibility | `showButton` | hidden if false |
| Type | — | Primary L |
| Height | — | 40px |
| Max-width | — | 600px |
| Background | `--button/solid/button-primary` | #ffd400 |
| Border radius | `--radius/radius-card-small` | 8px |
| Padding H | `--padding/padding-medium-16` | 16px |
| Padding V | `--padding/padding-x-small-8` | 8px |

Typography: `label-page` (16px Bold 700), `--text/text-on-background` (#222222).

## Key Behaviors
- Illustration always shown (no visibility prop)
- Each text/button section independently toggleable
- Button label and action consumer-supplied
- All three text/button sections can be individually hidden
- Choose illustration state semantically (404 for errors, no-result for filtered lists, etc.)
