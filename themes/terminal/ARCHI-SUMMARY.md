# Terminal Theme Architecture Summary

## Directory Structure

```
themes/terminal/
├── assets/
│   ├── css/           # All stylesheets
│   └── js/            # JavaScript files
├── layouts/
│   ├── _default/      # Core page templates
│   ├── partials/      # Reusable template components
│   └── shortcodes/    # Hugo shortcodes
└── static/            # Static assets (fonts, icons)
```

## CSS Architecture

### Core Stylesheets (`assets/css/`)

**`main.css`** - Foundation stylesheet
- CSS custom properties for theming (`:root` variables)
  - `--background`: #1a170f (dark brown)
  - `--foreground`: #eceae5 (cream)
  - `--accent`: #eec35e (yellow)
  - `--font-size`, `--line-height`, `--radius`
- Global resets and box-sizing
- Typography (Fira Code monospace everywhere)
- Base element styles: headings, links, buttons, forms
- Image styling with 8px accent borders
- Code/pre blocks with syntax highlighting support
- Tables, blockquotes, lists
- Container layout (.container, .container.full, .container.center)
- Responsive breakpoints (@media queries)

**Component-Specific CSS:**
- `header.css` - Site header and logo styling
- `footer.css` - Footer layout
- `menu.css` - Navigation menu (desktop & mobile)
- `post.css` - Post-specific styles (metadata, content)
- `pagination.css` - Pagination controls
- `buttons.css` - Button variants
- `code.css` - Code block enhancements
- `syntax.css` - Syntax highlighting colors
- `terms.css` - Taxonomy term pages
- `fonts.css` - Font loading
- `gist.css` - GitHub Gist embeds

**`terminal.css`** - Empty placeholder for custom overrides

### CSS Loading Order (from `partials/head.html`)

1. All CSS files from `assets/css/*.css` (minified & fingerprinted)
2. Optional `static/terminal.css` (if exists)
3. Optional `static/style.css` (if exists) - **use this for custom overrides**

## Template Architecture

### Base Template (`layouts/_default/baseof.html`)

The root template that wraps all pages:
- Defines HTML structure
- Includes `<head>` via `partials/head.html`
- Sets container class based on config (full/center/default)
- Includes header partial
- Defines `{{ block "main" }}` for page content
- Includes footer partial

### Page Templates (`layouts/_default/`)

**`single.html`** - Individual post/page rendering
- Post title with link
- Post metadata (date, author, reading time, word count)
- Tags with links
- Cover image (via partial)
- Table of Contents (if enabled)
- Post content with anchor links on headings
- Post pagination (prev/next)
- Comments section (if enabled)

**`list.html`** - Post listing pages
- Index content (optional intro text)
- Paginated post list
- Each post shows: title, date, author, tags, cover, summary
- "Read more" button for truncated posts
- Pagination controls

**`index.html`** - Homepage template (likely similar to list.html)

**`term.html`** - Single taxonomy term page
**`terms.html`** - Taxonomy listing page

**`404.html`** - Error page

### Partials (`layouts/partials/`)

Reusable template components:

**Core Layout:**
- `head.html` - Meta tags, CSS loading, analytics, Open Graph
- `header.html` - Site header
- `footer.html` - Site footer
- `logo.html` - Logo/site title
- `menu.html` - Desktop navigation menu
- `mobile-menu.html` - Mobile navigation
- `language-menu.html` - Language switcher

**Post Components:**
- `post-date.html` - Format post date
- `post-lastmod.html` - Show last modified date
- `cover.html` - Cover image display
- `pagination.html` - Page pagination controls
- `posts_pagination.html` - Previous/next post links
- `comments.html` - Comments integration

**Extension Points:**
- `extended_head.html` - Custom head content (empty by default)
- `extended_footer.html` - Custom footer content (empty by default)

### Shortcodes (`layouts/shortcodes/`)

Hugo shortcodes for content:
- `code.html` - Custom code block rendering
- `image.html` - Enhanced image display

## Key Customization Points

### 1. Override CSS Variables
Create `static/style.css` with:
```css
:root {
  --background: #yourcolor;
  --foreground: #yourcolor;
  --accent: #yourcolor;
}
```

### 2. Modify Templates
Edit files in `themes/terminal/layouts/` to change structure/content.

### 3. Use Extended Partials
Add content to `layouts/partials/extended_head.html` or `extended_footer.html` without modifying theme core.

### 4. Theme Configuration
Many features controlled via Hugo config.toml:
- `fullWidthTheme` - Enable full width layout
- `centerTheme` - Center content
- `showMenuItems` - Visible menu items
- `readingTime` - Show reading time
- `Toc` - Enable table of contents
- etc.

## Template Rendering Flow

1. Hugo starts with `baseof.html`
2. Loads `partials/head.html` → loads all CSS
3. Renders `partials/header.html` → includes logo & menu
4. Renders main content block:
   - `single.html` for posts/pages
   - `list.html` for lists/archives
   - `index.html` for homepage
5. Renders `partials/footer.html`
6. Closes HTML document

## Styling Philosophy

The "Terminal" theme follows a retro terminal aesthetic:
- Monospace fonts everywhere (Fira Code)
- Dark background with light text
- Yellow accent color for highlights
- Heavy borders on images/buttons
- Minimalist, text-focused design
- Responsive with mobile-first approach

## Notes for Custom Theme Development

- All CSS is modular - edit individual component files
- Templates use Hugo's block system for clean inheritance
- Extensive use of Hugo params for configuration
- Easy to override without forking via `static/style.css`
- Theme supports: i18n, taxonomies, cover images, TOC, reading time, comments
