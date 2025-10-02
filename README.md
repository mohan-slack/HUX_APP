# HUX Smart Ring Order Page

## Structure
- `huxorder.html` – landing + order flow with hero, checkout drawer, features gallery.
- `index.html` – optional alternate entry point (current focus is `huxorder.html`).
- `Assets/` – images and supporting static assets referenced by the page.

## Tech Stack
- HTML + Tailwind CSS (via CDN) for layout and styling.
- Boxicons CDN for iconography.
- Vanilla JavaScript for interactivity (color swaps, cart drawer, checkout trigger).
- Razorpay checkout library (loaded but awaiting production keys).

## Usage
1. Ensure the assets folder remains at `Assets/` so image paths stay valid.
2. Open `huxorder.html` directly in a browser, or serve the directory with `python3 -m http.server` for a local web server.
3. Replace `YOUR_RAZORPAY_KEY` in `huxorder.html` before enabling live payments.

## Completed
- Responsive hero section with color/size selectors and quantity control.
- Slide-in cart summary with payment option toggles.
- Features showcase with interactive ring previews.
- Tailwind-based styling and glassmorphism navigation.

## Pending
- Configure Razorpay with real API keys and domain whitelisting.
- Add production analytics/SEO meta tags as needed.
- Hook Razorpay success handler to real order fulfillment logic.
