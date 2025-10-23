# Metroid Fusion Theme Design Document

## Design Analysis from Game Screenshots

### **Color Palette:**
- **Primary: Cyan/Teal** (#00CED1, #00FFFF, #1E90FF) - UI elements, borders, highlights
- **Secondary: Magenta/Pink** (#FF00FF, #FF1493, #C71585) - Accents, warnings, damage indicators
- **Background: Dark navy/black** (#000000, #0A0A1A, #1A1A2E) with grid patterns
- **Text: Bright cyan/white** (#00FFFF, #FFFFFF) for high contrast
- **Energy bars: Pink/magenta gradients**
- **Status: Yellow** (#FFFF00) for emphasis

### **UI Design Patterns:**

1. **Grid backgrounds** - Pixel grid overlays on dark backgrounds (very prominent in the status screens)
2. **Rectangular panels** - Sharp-edged boxes with thick borders
3. **Segmented bars** - Energy/health bars with individual segments
4. **Digital/pixelated fonts** - Monospace, uppercase lettering
5. **Geometric shapes** - Hexagons, rectangles, clean lines
6. **Scan lines/CRT effects** - Subtle horizontal lines
7. **Corner brackets** - Angular brackets in UI corners `「 」`
8. **Glowing effects** - Cyan glow on active elements

### **Typography:**
- All-caps pixel fonts
- High contrast white/cyan text on dark
- Monospace for technical readability
- Button prompts with icons

### **Layout Principles:**
- Top bar: Energy/status indicators
- Side panels: Equipment lists, navigation menus
- Center focus: Main content/character display
- Bottom: Context-sensitive help text
- Generous spacing between UI elements

## **Theme Implementation Strategy**

### Core Elements to Implement:

1. **Dark grid background** with subtle cyan grid lines
2. **Cyan and magenta accent colors** for links, headings, borders
3. **Boxy, geometric containers** for posts/content
4. **Segmented progress bars** (for reading progress or post metadata)
5. **Pixelated/monospace typography** (Press Start 2P or similar retro gaming font)
6. **Corner bracket decorations** on headings/sections
7. **Glowing cyan borders** on interactive elements
8. **Energy bar-style navigation** or post lists

### CSS Variables for Theme:

```css
:root {
  /* Colors */
  --background: #0A0A1A;
  --background-secondary: #1A1A2E;
  --foreground: #FFFFFF;
  --accent-cyan: #00FFFF;
  --accent-cyan-glow: #00CED1;
  --accent-magenta: #FF00FF;
  --accent-pink: #FF1493;
  --accent-yellow: #FFFF00;
  --grid-color: rgba(0, 255, 255, 0.1);

  /* Typography */
  --font-family: 'Press Start 2P', monospace;
  --font-size: 0.875rem;
  --line-height: 1.8em;

  /* Borders & Effects */
  --border-width: 2px;
  --border-style: solid;
  --glow-small: 0 0 5px var(--accent-cyan);
  --glow-medium: 0 0 10px var(--accent-cyan);
  --glow-large: 0 0 20px var(--accent-cyan);
}
```

### Component Design Details:

#### **Background Grid:**
```css
body::before {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image:
    linear-gradient(var(--grid-color) 1px, transparent 1px),
    linear-gradient(90deg, var(--grid-color) 1px, transparent 1px);
  background-size: 20px 20px;
  pointer-events: none;
  z-index: -1;
}
```

#### **Heading Brackets:**
```css
h1::before, h2::before {
  content: '「 ';
  color: var(--accent-cyan);
}

h1::after, h2::after {
  content: ' 」';
  color: var(--accent-cyan);
}
```

#### **Glowing Borders:**
```css
.container, article, .post {
  border: var(--border-width) var(--border-style) var(--accent-cyan);
  box-shadow: var(--glow-medium);
}

a:hover, button:hover {
  box-shadow: var(--glow-large);
  text-shadow: var(--glow-small);
}
```

#### **Energy Bar Style Lists:**
```css
.post-list li {
  border-left: 4px solid var(--accent-magenta);
  background: linear-gradient(
    90deg,
    rgba(255, 0, 255, 0.1) 0%,
    transparent 100%
  );
  padding-left: 1em;
  margin-bottom: 0.5em;
}
```

#### **Segmented Bars (for metadata):**
```css
.reading-progress {
  display: flex;
  gap: 2px;
  height: 8px;
}

.reading-progress-segment {
  flex: 1;
  background: var(--accent-cyan);
  box-shadow: inset 0 0 5px rgba(0, 255, 255, 0.5);
}

.reading-progress-segment.empty {
  background: rgba(0, 255, 255, 0.2);
}
```

#### **CRT Scanline Effect (optional):**
```css
body::after {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: repeating-linear-gradient(
    0deg,
    rgba(0, 0, 0, 0.15) 0px,
    transparent 1px,
    transparent 2px,
    rgba(0, 0, 0, 0.15) 3px
  );
  pointer-events: none;
  z-index: 9999;
}
```

### Font Recommendations:

**Primary options (free, retro gaming fonts):**
1. **Press Start 2P** - Classic pixel font (Google Fonts)
2. **VT323** - Terminal/monospace pixel font (Google Fonts)
3. **Courier Prime** - Clean monospace alternative
4. **Share Tech Mono** - Futuristic monospace (Google Fonts)

**Import example:**
```css
@import url('https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap');
```

### Layout Modifications:

#### **Header Design:**
- Top navigation bar with cyan border
- Logo/site title in cyan with glow effect
- Menu items styled as status indicators
- Corner brackets on active page

#### **Post Layout:**
- Main content in centered panel with glowing border
- Sidebar (optional) for "equipment" (tags/categories)
- Energy bar-style metadata (date, reading time)
- Corner decorations on post containers

#### **Footer:**
- Minimal bottom bar with cyan accent
- Copyright/links in small cyan text
- Optional "mission complete" style message

### Interactive Elements:

#### **Links:**
- Default: Cyan color
- Hover: Magenta with glow effect
- Visited: Darker cyan
- Active: Bright yellow

#### **Buttons:**
- Background: Transparent with cyan border
- Text: Cyan uppercase
- Hover: Filled magenta background with glow
- Press: Yellow flash effect

#### **Code Blocks:**
- Dark background with subtle grid
- Cyan syntax highlighting for keywords
- Magenta for strings
- Yellow for numbers
- White for text

### Responsive Considerations:

- Reduce font size on mobile (pixel fonts can be large)
- Simplify grid background on smaller screens
- Stack UI elements vertically
- Maintain high contrast for readability
- Reduce glow effects on low-performance devices

### Animation Ideas (subtle):

1. **Pulsing glow** on hover states
2. **Scanning line** effect on page load
3. **Energy bar fill** animation for reading progress
4. **Flicker effect** on accent elements (very subtle)
5. **Type-in effect** for headings (optional, can be distracting)

### Accessibility Notes:

- High contrast ratio (cyan/white on black)
- Ensure pixel fonts are legible at all sizes
- Provide text alternatives for decorative elements
- Maintain focus indicators (cyan outline)
- Avoid excessive animations that could cause discomfort
- Test with screen readers

## Implementation Checklist:

- [x] Set up CSS variables for color palette
- [x] Import retro gaming font (Press Start 2P)
- [x] Add grid background pattern
- [x] Style headings with corner brackets
- [x] Apply glowing borders to containers
- [x] Update link colors and hover effects
- [x] Modify button styles with glowing effects
- [x] Create energy bar-style post lists
- [x] Add scanline effect (optional)
- [x] Update code block syntax colors
- [ ] Style navigation as status bar (in progress)
- [ ] Test responsive layout on mobile
- [ ] Optimize for performance
- [ ] Accessibility review

## Implementation Notes (2025-10-22):

The Metroid Fusion theme has been successfully implemented in `/themes/terminal/assets/css/`. Key changes:

1. **Color palette**: All CSS variables updated to cyan/magenta/yellow scheme
2. **Typography**: Press Start 2P font imported and applied
3. **Visual effects**: Grid background, glowing borders, CRT scanlines
4. **Interactive elements**: Cyan->magenta hover transitions with glow effects
5. **Code syntax**: Cyan keywords, magenta strings, yellow numbers
6. **Lists**: Energy bar-style with magenta left border and gradient

Server running at: http://localhost:1313/
