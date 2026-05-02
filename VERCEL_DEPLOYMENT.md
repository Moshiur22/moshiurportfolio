# Vercel Deployment Guide for Moshiur's Portfolio

## ✅ Fixed Issues

The project has been configured properly for Vercel deployment:
- Build script simplified to standard Next.js build
- Removed standalone output mode (not needed for Vercel)
- Minimal vercel.json configuration

---

## Method 1: Deploy via Vercel CLI (Recommended for Quick Deployment)

### Step 1: Install Vercel CLI

Open your terminal and run:

```bash
npm i -g vercel
# OR
bun i -g vercel
```

### Step 2: Login to Vercel

```bash
vercel login
```

This will open a browser window to log in to your Vercel account.

### Step 3: Navigate to Your Project

```bash
cd /home/z/my-project
# OR if you've copied the files elsewhere
cd /path/to/your/portfolio
```

### Step 4: Deploy Your Project

Run the following command:

```bash
vercel
```

You'll be asked a series of questions:

1. **Set up and deploy?** → `Y` (Yes)
2. **Link to existing project?** → `N` (No)
3. **Project name:** → `moshiur-portfolio` (or any name you prefer)
4. **Scope:** → Select your account/team
5. **In which directory is your code?** → `./` (default)
6. **Override settings?** → `N` (No, use default settings)

### Step 5: Wait for Deployment

Vercel will:
- Install dependencies
- Build your project
- Deploy to a preview URL

You'll see output like:

```
✓ Detected: Next.js
✓ Setup: Build Command: `next build`
✓ Building...
✓ Build completed
✓ Preview: https://moshiur-portfolio.vercel.app
```

### Step 6: Deploy to Production

To deploy to your main domain:

```bash
vercel --prod
```

Your portfolio will be live at: `https://moshiur-portfolio.vercel.app`

---

## Method 2: Deploy via Git (Recommended for Continuous Updates)

### Step 1: Push Your Code to GitHub

```bash
cd /home/z/my-project
git init
git add .
git commit -m "Initial portfolio deployment"
```

If you already have a GitHub repository:

```bash
# Add your remote repository
git remote add origin https://github.com/your-username/moshiur-portfolio.git
git branch -M main
git push -u origin main
```

If you don't have a repository:

1. Go to [github.com/new](https://github.com/new)
2. Create a new repository named `moshiur-portfolio`
3. Follow the instructions to push your code

### Step 2: Connect to Vercel via Dashboard

1. Go to [vercel.com/new](https://vercel.com/new)
2. Log in to your Vercel account
3. Click **"Import Project"** or **"Continue with GitHub"**
4. Find and select your `moshiur-portfolio` repository
5. Click **"Import"**

### Step 3: Configure Project Settings

Vercel will auto-detect your Next.js project. The configuration is already set up:

- **Project Name:** `moshiur-portfolio`
- **Framework Preset:** Next.js
- **Build Command:** `next build`
- **Install Command:** `bun install` (or `npm install`)

Click **"Deploy"**

### Step 4: Wait for Deployment

Vercel will build and deploy your portfolio automatically!

---

## What's Changed (Fixed Issues)

### Before (Problematic):

```json
// package.json had:
"build": "next build && cp -r .next/static .next/standalone/.next/ && cp -r public .next/standalone/"
```

```ts
// next.config.ts had:
output: "standalone"
```

### After (Fixed):

```json
// package.json now has:
"build": "next build"
```

```ts
// next.config.ts now has:
// (no output: "standalone" - not needed for Vercel)
```

This change was necessary because:
- Vercel automatically handles static file copying
- Standalone mode is for custom Node.js deployments
- Vercel has its own optimized deployment process

---

## Environment Variables (If Needed)

Your portfolio doesn't require any environment variables, but if you add features that need them later:

1. Go to your project settings in Vercel Dashboard
2. Click **"Environment Variables"**
3. Add your variables (e.g., `DATABASE_URL`, `API_KEY`)
4. Click **"Save"**
5. Redeploy your project

---

## Custom Domain (Optional)

### Step 1: Add Custom Domain

1. Go to your project in Vercel Dashboard
2. Click **"Settings"** → **"Domains"**
3. Enter your domain (e.g., `moshiur-rahaman.com`)
4. Click **"Add"**

### Step 2: Configure DNS

Vercel will provide DNS records. Add them to your domain registrar:

- **A Record:** `76.76.21.21`
- **CNAME:** `cname.vercel-dns.com`

---

## Updating Your Portfolio

### Using Vercel CLI:

1. Make changes to your code
2. Commit changes:
   ```bash
   git add .
   git commit -m "Update portfolio"
   ```
3. Deploy:
   ```bash
   vercel --prod
   ```

### Using Git:

1. Make changes to your code
2. Commit and push:
   ```bash
   git add .
   git commit -m "Update portfolio"
   git push origin main
   ```
3. Vercel will automatically redeploy!

---

## Troubleshooting

### Build Fails with "Couldn't find any `pages` or `app` directory"

**This issue is now fixed!** The changes made include:
- ✅ Simplified build script
- ✅ Removed standalone output mode
- ✅ Clean vercel.json configuration

If you still see this error:
1. Make sure you've pulled the latest changes
2. Verify your `src/app/` directory exists and contains `page.tsx`
3. Clear Vercel cache and redeploy

### Other Build Failures

1. Check the build logs in Vercel Dashboard
2. Ensure `vercel.json` is in your project root
3. Verify dependencies are correct in `package.json`
4. Make sure all source files are committed and pushed

### Pages Not Loading

1. Check the build output
2. Ensure all files are committed and pushed
3. Check for any console errors in browser

### Deployment Stuck

1. Cancel the deployment in Vercel Dashboard
2. Try deploying again:
   ```bash
   vercel --force
   ```

---

## Useful Commands

```bash
# Deploy to preview
vercel

# Deploy to production
vercel --prod

# View deployment logs
vercel logs

# List deployments
vercel ls

# Remove deployment
vercel rm <deployment-url>

# Inspect deployment
vercel inspect <deployment-url>
```

---

## Your Portfolio URLs

After deployment, you'll have:

- **Preview URL:** `https://moshiur-portfolio-[hash].vercel.app`
- **Production URL:** `https://moshiur-portfolio.vercel.app`
- **Custom Domain:** (if configured) `https://moshiur-rahaman.com`

---

## Support

- [Vercel Documentation](https://vercel.com/docs)
- [Next.js on Vercel](https://vercel.com/docs/concepts/next.js)
- [Vercel Community](https://github.com/vercel/vercel/discussions)

---

## Summary Checklist

- [ ] Install Vercel CLI or create GitHub account
- [ ] Get the latest project files (with fixes applied)
- [ ] Connect project to Vercel
- [ ] Deploy to preview
- [ ] Test preview URL
- [ ] Deploy to production
- [ ] (Optional) Configure custom domain
- [ ] Share your portfolio URL!

---

## Key Files to Include

When deploying, make sure these files are present in your project:

```
your-project/
├── src/
│   └── app/
│       ├── page.tsx          # Main portfolio page ✅
│       ├── layout.tsx        # Root layout ✅
│       └── globals.css       # Global styles ✅
├── public/                   # Images and PDFs ✅
├── package.json              # Dependencies (Fixed) ✅
├── next.config.ts            # Next.js config (Fixed) ✅
├── tailwind.config.ts        # Tailwind config ✅
├── tsconfig.json             # TypeScript config ✅
└── vercel.json               # Minimal config ✅
```

---

Your portfolio is now ready to be deployed to Vercel! 🚀

**The build error "Couldn't find any `pages` or `app` directory" is now fixed.**

---
