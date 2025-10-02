# HUX Smart Ring Order Page

## Structure
- `huxorder.html` – landing + order flow with hero, checkout drawer, features gallery.
- `index.html` – optional alternate entry point (current focus is `huxorder.html`).
- `assets/` – image and media files consumed by the pages.

## Tech Stack
- HTML + Tailwind CSS (via CDN) for layout and styling.
- Boxicons CDN for iconography.
- Vanilla JavaScript for interactivity (color swaps, cart drawer, checkout trigger).
- Razorpay checkout library (loaded but awaiting production keys).

## Usage
1. Ensure the static assets live under `assets/` (all lowercase) so GitHub Pages and Linux hosts can resolve the paths.
2. Open `huxorder.html` directly in a browser, or serve the directory with `python3 -m http.server` for a local web server.
3. Replace `YOUR_RAZORPAY_KEY` in `huxorder.html` before enabling live payments.

## Local Testing (Docker)
- Build the image: `docker build -t hux-order .`
- Run locally: `docker run --rm --name hux-order -p 8080:80 hux-order` and browse to `http://localhost:8080`.
- Stop the container without removing it mid-run: `docker stop hux-order` (the `--rm` flag cleans it up automatically when stopped).
- When you change project files, rebuild and rerun:
  1. `docker stop hux-order` (if running)
  2. `docker build -t hux-order .`
  3. `docker run --rm --name hux-order -p 8080:80 hux-order`
  Add `--no-cache` to the build command if you need to ignore cached layers.

## Keeping Images Patched
- To grab the newest base image and Alpine security updates, run `docker build --pull --no-cache -t hux-order .`.
- The Dockerfile upgrades Alpine packages and switches Nginx to its non-root user; rebuild with the command above before publishing new images.

## Completed
- Responsive hero section with color/size selectors and quantity control.
- Slide-in cart summary with payment option toggles.
- Features showcase with interactive ring previews.
- Tailwind-based styling and glassmorphism navigation.

## Pending
- Configure Razorpay with real API keys and domain whitelisting.
- Add production analytics/SEO meta tags as needed.
- Hook Razorpay success handler to real order fulfillment logic.
