# Hosting MariOT Web on GitHub Pages

## 1. Put your code on GitHub

If you haven’t already:

1. **Create a new repository** on [GitHub](https://github.com/new).
   - Name it anything (e.g. `marriot-web` or `my_first_web_app`).
   - Do **not** add a README, .gitignore, or license if your project already has files.

2. **Push this project** from your machine:

   ```bash
   cd c:\Users\haris\my_first_web_app
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
   git push -u origin main
   ```

   If the repo already exists and you already have a remote, just push:

   ```bash
   git add .
   git commit -m "Add GitHub Pages deployment"
   git push origin main
   ```

## 2. Turn on GitHub Pages from Actions

1. Open your repo on GitHub.
2. Go to **Settings** → **Pages**.
3. Under **Build and deployment** → **Source**, choose **GitHub Actions**.

## 3. Deploy

- Every **push to `main`** (or `master`) will run the workflow, build the Flutter web app, and deploy it to GitHub Pages.
- You can also run it manually: **Actions** → **Deploy to GitHub Pages** → **Run workflow**.

## 4. Your site URL

- **Root URL** like `https://mariot.github.io/` (no path, like [CIMSS 2026](https://cimss2026.github.io/)):  
  Use a repo named **`<name>.github.io`**. Create a GitHub **organization** (e.g. `mariot`) at [github.com/organizations/new](https://github.com/organizations/new), then in that org create a repo named exactly **`mariot.github.io`**. Push your code there and enable Pages from Actions. Your site will be at **`https://mariot.github.io/`**. The workflow automatically uses base-href `/` for repos whose name ends with `.github.io`.

- **Project site** (e.g. repo name `marriot-web`):  
  `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`
- **User/org site** (repo name exactly `YOUR_USERNAME.github.io`):  
  `https://YOUR_USERNAME.github.io/`  
  In that case, the workflow’s `--base-href` must be `/` instead of `/${{ github.event.repository.name }}/`. You can change that one line in `.github/workflows/deploy-pages.yml` in the “Build web” step.

## 5. First run

The first time the workflow runs, GitHub may ask you to approve the **`github-pages`** environment (one-time). If you see a warning in the Actions tab, open the run, approve the environment, then re-run the workflow if needed.

---

After the workflow completes, your MariOT site will be live at the URL from step 4.
