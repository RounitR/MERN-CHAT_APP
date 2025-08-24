# 🚀 Railway Deployment Guide

This guide will help you deploy your chat application to Railway.

## Prerequisites

1. **Railway Account** - Sign up at [railway.app](https://railway.app)
2. **GitHub Repository** - Your code should be on GitHub
3. **MongoDB Atlas** - Cloud database (already set up)
4. **Cloudinary** - Image storage (already set up)

## Step 1: Prepare Your Repository

### 1.1 Update README.md

- Replace `[your-app-url.railway.app]` with your actual Railway URL
- Update GitHub repository links
- Add your contact information

### 1.2 Check .gitignore

Make sure these files are NOT committed:

- `backend/.env` (contains your real credentials)
- `node_modules/` directories
- Build outputs (`dist/`, `build/`)

## Step 2: Deploy to Railway

### 2.1 Connect to Railway

1. Go to [railway.app](https://railway.app)
2. Click "Start a New Project"
3. Choose "Deploy from GitHub repo"
4. Select your chat app repository
5. Click "Deploy Now"

### 2.2 Configure Environment Variables

In Railway dashboard, go to your project → Variables tab and add:

```env
# Database Configuration
MONGODB_URI=mongodb+srv://chat-app-user:sec3b365@cluster0.wkmn9zb.mongodb.net/chat-app?retryWrites=true&w=majority&appName=Cluster0

# Server Configuration
PORT=5001
NODE_ENV=production

# JWT Configuration
JWT_SECRET=962e11c477adea6738471faf0414b8485da0de5002f2bfec0a41ea36a19ef29c72dc473f27e4d066f7d364999e82fa7b36e9e4e494134284800cba8fbeb771e0

# Cloudinary Configuration
CLOUDINARY_CLOUD_NAME=dltigkgry
CLOUDINARY_API_KEY=433553191343515
CLOUDINARY_API_SECRET=s5PXw9d8vxKmw2d8LQl9PNM3DTw

# Frontend URL (update this to your Railway domain)
FRONTEND_URL=https://your-app-name.railway.app
```

### 2.3 Configure Build Settings

In Railway dashboard:

**Build Command:**

```bash
npm run build
```

**Start Command:**

```bash
npm run start --prefix backend
```

### 2.4 Deploy

1. Railway will automatically build your project
2. Wait for the build to complete
3. Your app will be available at the provided URL

## Step 3: Update CORS Settings

After deployment, update your backend CORS settings:

1. Go to your Railway project
2. Navigate to Variables
3. Update `FRONTEND_URL` to your actual Railway domain
4. Redeploy the application

## Step 4: Test Your Deployment

1. **Test Authentication**

   - Try to sign up/login
   - Verify JWT tokens work

2. **Test Real-time Features**

   - Open multiple browser tabs
   - Test message sending
   - Verify online status

3. **Test Image Upload**
   - Upload profile pictures
   - Send images in chat
   - Verify Cloudinary integration

## Step 5: Custom Domain (Optional)

1. Go to Railway dashboard → Settings
2. Click "Custom Domains"
3. Add your domain
4. Update DNS settings as instructed

## Troubleshooting

### Common Issues:

1. **Build Fails**

   - Check build logs in Railway
   - Ensure all dependencies are in package.json
   - Verify Node.js version compatibility

2. **Environment Variables**

   - Double-check all variables are set
   - Ensure no typos in variable names
   - Verify MongoDB connection string

3. **CORS Errors**

   - Update `FRONTEND_URL` to correct domain
   - Check CORS configuration in backend

4. **Image Upload Issues**
   - Verify Cloudinary credentials
   - Check file size limits
   - Ensure proper error handling

### Useful Commands:

```bash
# Check Railway logs
railway logs

# Redeploy
railway up

# Check status
railway status
```

## Monitoring

1. **Railway Dashboard**

   - Monitor resource usage
   - Check deployment status
   - View logs

2. **Application Monitoring**
   - Set up error tracking (Sentry)
   - Monitor performance
   - Track user analytics

## Cost Optimization

- Railway offers free tier with limitations
- Monitor usage to avoid unexpected charges
- Consider upgrading for production use

## Security Checklist

- [ ] Environment variables are set
- [ ] JWT secret is strong and unique
- [ ] CORS is properly configured
- [ ] HTTPS is enabled
- [ ] Database access is restricted
- [ ] API endpoints are protected

---

🎉 **Your chat app is now live on Railway!**
