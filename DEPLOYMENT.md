# 🚀 Production Deployment Guide

## Prerequisites

1. **MongoDB Atlas Account** - [Sign up here](https://www.mongodb.com/atlas)
2. **Cloudinary Account** - [Sign up here](https://cloudinary.com/)
3. **Deployment Platform** (Vercel, Netlify, Railway, Render, etc.)

## Step 1: Environment Setup

### MongoDB Atlas Configuration
1. Create a new cluster in MongoDB Atlas
2. Set up database access (create user with password)
3. Set up network access (allow access from anywhere: `0.0.0.0/0`)
4. Get your connection string

### Cloudinary Configuration
1. Create a Cloudinary account
2. Get your credentials from the dashboard:
   - Cloud Name
   - API Key
   - API Secret

### Environment Variables
Update your `.env` file with production values:

```env
# Database Configuration
MONGODB_URI=mongodb+srv://<username>:<password>@<cluster>.mongodb.net/<database>?retryWrites=true&w=majority
PORT=5001

# JWT Configuration
JWT_SECRET=your-generated-jwt-secret

# Cloudinary Configuration
CLOUDINARY_CLOUD_NAME=your-cloudinary-cloud-name
CLOUDINARY_API_KEY=your-cloudinary-api-key
CLOUDINARY_API_SECRET=your-cloudinary-api-secret

# Environment
NODE_ENV=production

# Frontend URL (for CORS)
FRONTEND_URL=https://your-frontend-domain.com
```

## Step 2: Local Production Build

```bash
# Install all dependencies
npm run install-all

# Build the application
npm run build

# Test production build locally
npm run prod
```

## Step 3: Deployment Options

### Option A: Railway (Recommended for Full-Stack)
1. Connect your GitHub repository to Railway
2. Set environment variables in Railway dashboard
3. Deploy automatically

### Option B: Render
1. Create a new Web Service
2. Connect your GitHub repository
3. Set build command: `npm run build`
4. Set start command: `npm run start --prefix backend`

### Option C: Vercel + Railway
1. Deploy frontend to Vercel
2. Deploy backend to Railway
3. Update CORS settings

### Option D: Docker Deployment
```bash
# Build Docker image
docker build -t chat-app .

# Run container
docker run -p 5001:5001 --env-file .env chat-app
```

## Step 4: Domain Configuration

1. Set up custom domain (optional)
2. Update `FRONTEND_URL` in environment variables
3. Configure SSL certificates

## Step 5: Monitoring & Maintenance

- Set up logging (Winston, Morgan)
- Monitor database performance
- Set up error tracking (Sentry)
- Regular backups

## Troubleshooting

### Common Issues:
1. **CORS Errors**: Check `FRONTEND_URL` environment variable
2. **Database Connection**: Verify MongoDB Atlas network access
3. **File Uploads**: Ensure Cloudinary credentials are correct
4. **Build Failures**: Check Node.js version compatibility

### Performance Optimization:
1. Enable MongoDB indexes
2. Implement caching (Redis)
3. Optimize images with Cloudinary
4. Use CDN for static assets
