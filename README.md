# Moshiur Rahaman's Portfolio

A professional portfolio website for a Senior Business Analyst, built with Next.js 16, TypeScript, and shadcn/ui.

## 🚀 Quick Start

### Development

```bash
bun install
bun run dev
```

Visit `http://localhost:3000`

### Build

```bash
bun run build
```

## 📦 Deploy to Vercel

### Option 1: Vercel CLI (Fastest)

```bash
# 1. Install Vercel CLI
npm i -g vercel

# 2. Login
vercel login

# 3. Deploy
vercel

# 4. Deploy to production
vercel --prod
```

### Option 2: GitHub + Vercel Dashboard

```bash
# 1. Push to GitHub
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/your-username/moshiur-portfolio.git
git branch -M main
git push -u origin main

# 2. Go to vercel.com/new
# 3. Import your GitHub repository
# 4. Click Deploy
```

For detailed instructions, see [VERCEL_DEPLOYMENT.md](./VERCEL_DEPLOYMENT.md)

## 📁 Project Structure

```
├── src/
│   ├── app/
│   │   ├── page.tsx          # Main portfolio page
│   │   ├── layout.tsx        # Root layout
│   │   └── globals.css       # Global styles
│   ├── components/
│   │   └── ui/               # shadcn/ui components
│   ├── hooks/
│   │   └── ...               # Custom React hooks
│   └── lib/
│       ├── db.ts             # Database client
│       └── utils.ts          # Utility functions
├── public/
│   ├── portfolio-image.png  # Profile image
│   ├── *.pdf                 # Resume and case studies
│   └── ...
└── vercel.json               # Vercel configuration
```

## 🛠️ Tech Stack

- **Framework:** Next.js 16 with App Router
- **Language:** TypeScript 5
- **Styling:** Tailwind CSS 4
- **Components:** shadcn/ui
- **Icons:** Lucide React

## 📄 Sections

1. Hero - Introduction with profile image
2. Professional Summary - About and expertise
3. Core Competencies - Skills and abilities
4. Tools & Technologies - Technical stack
5. Case Studies - P2P & SBA solutions
6. Business Analysis Artefacts - Documentation
7. Domain Expertise - Industry knowledge
8. Professional Experience - Work history
9. Thought Leadership - Certifications
10. Contact - Social links and contact info

## 🔧 Configuration Files

- `vercel.json` - Vercel deployment configuration
- `next.config.ts` - Next.js configuration
- `tailwind.config.ts` - Tailwind CSS configuration
- `tsconfig.json` - TypeScript configuration

## 📝 License

Copyright © 2024 Md. Moshiur Rahaman
