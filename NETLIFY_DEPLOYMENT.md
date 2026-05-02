# Netlify Deployment Guide

## Quick Deploy

### Method 1: Drag & Drop (Easiest)
1. Download the zip file: `moshiur-portfolio.zip` (11MB)
2. Go to [app.netlify.com/drop](https://app.netlify.com/drop)
3. Drag and drop the `moshiur-portfolio.zip` file onto the Netlify drop page
4. Wait for deployment to complete (usually 1-2 minutes)
5. Your site will be live at: `https://your-site-name.netlify.app`

### Method 2: Netlify CLI (Recommended)
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login to Netlify
netlify login

# Deploy from project directory
cd /path/to/my-project
netlify deploy --prod

# Or deploy the zip file directly
netlify deploy --prod --site=/tmp/moshiur-portfolio.zip
```

### Method 3: Git Integration (Best for Continuous Deployment)
1. Push your project to GitHub/GitLab/Bitbucket
2. Go to [app.netlify.com](https://app.netlify.com)
3. Click "New site from Git"
4. Connect your repository
5. Configure build settings (if needed):
   - **Build command**: `bun run build`
   - **Publish directory**: `.next/standalone`
   - **Node version**: `18` or higher

## Build Configuration

The project uses Next.js 16 with the following configuration:

```toml
[build]
  command = "bun run build"
  publish = ".next/standalone"

[build.environment]
  NODE_VERSION = "18"
```

## Important Notes

✅ **Project Size**: 11MB (compressed)
✅ **Framework**: Next.js 16.1.3
✅ **Runtime**: Bun
✅ **Static Export**: Configured for optimal performance

## After Deployment

1. **Custom Domain**: Go to Site Settings → Domain Management to add your custom domain
2. **Environment Variables**: Add any required API keys in Site Settings → Environment Variables
3. **Redirects**: Configure any URL redirects in Site Settings → Domain Management

## Troubleshooting

### Build Fails
- Ensure Node.js version is 18 or higher
- Check that `bun` is available in the build environment
- Review build logs in Netlify dashboard

### Images Not Loading
- Public assets should be in the `public/` folder
- Check image paths are correct (e.g., `/portfolio-image.png`)

### 404 Errors
- Verify `next.config.ts` is properly configured
- Check that all pages are exported correctly

## Support

- [Netlify Documentation](https://docs.netlify.com/)
- [Next.js Deployment Guide](https://nextjs.org/docs/deployment)
