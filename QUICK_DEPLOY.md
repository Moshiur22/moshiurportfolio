# 🚀 Quick Vercel Deployment Guide

## Step 1: Install Vercel CLI

```bash
npm i -g vercel
```

## Step 2: Login to Vercel

```bash
vercel login
```
This will open your browser - log in to your Vercel account.

## Step 3: Deploy Your Portfolio

```bash
cd /home/z/my-project
vercel
```

Follow the prompts:
- Set up and deploy? → **Yes**
- Link to existing project? → **No**
- Project name → **moshiur-portfolio**
- Directory → **./** (just press Enter)
- Override settings → **No**

## Step 4: Wait for Deployment

Vercel will:
1. Install dependencies
2. Build your project
3. Deploy to a preview URL

You'll see: `✓ Ready in [time]ms`

## Step 5: Test Your Portfolio

Click the preview URL provided by Vercel to view your portfolio!

## Step 6: Deploy to Production

```bash
vercel --prod
```

Now your portfolio is live at: `https://moshiur-portfolio.vercel.app`

---

## 📌 Important Notes:

- Your portfolio uses **Bun** as the runtime
- Vercel will auto-detect Next.js
- The `vercel.json` file ensures correct build settings

## 🔄 To Update Later:

```bash
# Make changes to your code
git add .
git commit -m "Update portfolio"
git push origin main

# Vercel will auto-redeploy!
```

## 💡 Alternative: Use GitHub

1. Push your code to GitHub
2. Go to [vercel.com/new](https://vercel.com/new)
3. Import your repository
4. Click Deploy

---

Your portfolio is ready to go! 🎉

For detailed instructions, see [VERCEL_DEPLOYMENT.md](./VERCEL_DEPLOYMENT.md)
