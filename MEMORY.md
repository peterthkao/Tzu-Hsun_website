# Personal Website Memory

## Contacts

_People relevant to this workstation — collaborators, advisors, etc. Populated over time._

## Key Decisions

- Site is split into 5 HTML pages (index, research, publications, projects, about), hosted on GitHub Pages.
- Style: dark theme with geometric line background, white nav bar (turns black on scroll to bottom), Playfair Display for nav, Georgia for content, justified text.
- Color scheme: dark navy bg (#0d0f1a), accent blue (#6b9bdf).

## Deployed URL

_To be added once GitHub Pages is set up._

## Skills

### Google-scholar-plot
CSS/HTML technique for a citation bar chart that aligns correctly with a y-axis:
- Y-axis labels use `position: absolute` inside a fixed-height wrapper, placed at exact `top` percentages with `transform: translateY(-50%)` to center each label on its gridline.
- Bar heights are computed as `value / max * barAreaHeight` (e.g. scale 0–5, area 80px → 16px per unit).
- Year labels live in a separate `.citation-xlabels` row **below** the chart, offset by the y-axis width (`margin-left: y-axis-width + gap`) so they center under the bars, not the y-axis.
- Bar container uses `align-items: flex-end` so bars grow upward from the baseline.
- Bar container has `border-left` and `border-bottom` to form the axis lines.
