# 💬 Real-Time Chat Application

A modern, full-stack real-time chat application built with the MERN stack, featuring instant messaging, file sharing, and user authentication.

![Chat App Demo](frontend/public/image1.png)
![Chat App Demo](frontend/public/image2.png)

## ✨ Features

- 🔐 **User Authentication** - Secure JWT-based login/signup
- 💬 **Real-Time Messaging** - Instant message delivery with Socket.io
- 📸 **Image Sharing** - Send and receive images in chat
- 👤 **Profile Management** - Upload and update profile pictures
- 🌐 **Online Status** - See who's online in real-time
- 📱 **Responsive Design** - Works perfectly on desktop and mobile
- 🎨 **Modern UI** - Beautiful interface with TailwindCSS and DaisyUI
- 🔒 **Secure** - Protected routes and data validation
- ⚡ **Fast** - Optimized performance with image compression

## 🛠️ Tech Stack

### Frontend

- **React 18** - Modern UI framework
- **Vite** - Fast build tool and dev server
- **TailwindCSS** - Utility-first CSS framework
- **DaisyUI** - Component library for TailwindCSS
- **Socket.io Client** - Real-time communication
- **Zustand** - Lightweight state management
- **React Router** - Client-side routing
- **Axios** - HTTP client for API calls
- **React Hot Toast** - Beautiful notifications

### Backend

- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB object modeling
- **Socket.io** - Real-time bidirectional communication
- **JWT** - JSON Web Tokens for authentication
- **bcryptjs** - Password hashing
- **Cloudinary** - Cloud image storage and optimization
- **CORS** - Cross-origin resource sharing

### Database

- **MongoDB Atlas** - Cloud-hosted MongoDB database

### File Storage

- **Cloudinary** - Cloud image storage and CDN

## 🚀 Live Demo

[View Live Demo](https://mern-chat-app-a2ws.onrender.com/login)

## 📦 Installation & Setup

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- MongoDB Atlas account
- Cloudinary account

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/chat-app.git
cd chat-app
```

### 2. Install Dependencies

```bash
# Install all dependencies (backend + frontend)
npm run install-all

# Or install separately:
npm install --prefix backend
npm install --prefix frontend
```

### 3. Environment Setup

#### Backend Environment Variables

Create a `.env` file in the `backend` directory:

**⚠️ SECURITY WARNING**: Never commit your actual API keys to GitHub. Use placeholder values in your `.env` file and keep your real credentials secure.

```env
# Database Configuration
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/chat-app?retryWrites=true&w=majority

# Server Configuration
PORT=5001
NODE_ENV=development

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key

# Cloudinary Configuration
CLOUDINARY_CLOUD_NAME=your-cloud-name
CLOUDINARY_API_KEY=your-api-key
CLOUDINARY_API_SECRET=your-api-secret

# Frontend URL (for CORS)
FRONTEND_URL=http://localhost:5173
```

### 4. Run the Application

#### Development Mode

```bash
# Run both servers concurrently
npm run dev

# Or run separately:
# Terminal 1 - Backend
npm run dev --prefix backend

# Terminal 2 - Frontend
npm run dev --prefix frontend
```

#### Production Mode

```bash
# Build and start production
npm run build
npm run prod
```

### 5. Access the Application

- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:5001

## 📁 Project Structure

```
chat-app/
├── backend/                 # Backend server
│   ├── src/
│   │   ├── controllers/     # Route controllers
│   │   ├── middleware/      # Custom middleware
│   │   ├── models/          # Database models
│   │   ├── routes/          # API routes
│   │   ├── lib/             # Utility libraries
│   │   └── index.js         # Server entry point
│   ├── package.json
│   └── .env                 # Environment variables
├── frontend/                # React frontend
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── pages/           # Page components
│   │   ├── store/           # Zustand stores
│   │   ├── lib/             # Utility functions
│   │   └── main.jsx         # App entry point
│   ├── public/              # Static assets
│   └── package.json
├── package.json             # Root package.json
└── README.md
```

## 🔧 API Endpoints

### Authentication

- `POST /api/auth/signup` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `PUT /api/auth/update-profile` - Update profile picture
- `GET /api/auth/check` - Check authentication status

### Messages

- `GET /api/messages/users` - Get all users
- `GET /api/messages/:userId` - Get messages with specific user
- `POST /api/messages/send/:userId` - Send message to user



## 🔒 Security Features

- **JWT Authentication** - Secure token-based authentication
- **Password Hashing** - bcryptjs for password security
- **CORS Protection** - Configured for production
- **Input Validation** - Server-side data validation
- **Rate Limiting** - Protection against abuse
- **Secure Headers** - Security headers implementation

## 🎨 UI/UX Features

- **Dark/Light Theme** - Toggle between themes
- **Responsive Design** - Mobile-first approach
- **Loading States** - Smooth user experience
- **Error Handling** - User-friendly error messages
- **Image Compression** - Optimized image uploads
- **Real-time Updates** - Instant message delivery

## 🚀 Performance Optimizations

- **Image Compression** - Automatic image optimization
- **Lazy Loading** - Efficient resource loading
- **Code Splitting** - Optimized bundle sizes
- **Caching** - Improved load times
- **CDN** - Cloudinary for fast image delivery

## 🚀 Deployment

### Render Deployment (Recommended - Free Forever)

1. **Create Render Account**: Visit [Render](https://render.com) and sign up with GitHub
2. **New Web Service**: Click "New +" → "Web Service"
3. **Connect Repository**: Connect your GitHub repository
4. **Configure Service**:
   - **Name**: `mern-chat-app`
   - **Environment**: `Node`
   - **Build Command**: `npm run build`
   - **Start Command**: `npm run start --prefix backend`
5. **Environment Variables**: Add these variables:
   - `MONGODB_URI`
   - `JWT_SECRET`
   - `CLOUDINARY_CLOUD_NAME`
   - `CLOUDINARY_API_KEY`
   - `CLOUDINARY_API_SECRET`
   - `NODE_ENV=production`
   - `FRONTEND_URL` (your Render app URL)
6. **Deploy**: Click "Create Web Service"

### Alternative Free Hosting Options

- **Vercel + Railway**: Frontend on Vercel (free), backend on Railway (30-day trial)
- **Netlify + Render**: Frontend on Netlify (free), backend on Render (free)
- **Cyclic**: Full-stack deployment (free tier available)
- **Railway**: 30-day free trial, then paid

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Socket.io](https://socket.io/) for real-time communication
- [TailwindCSS](https://tailwindcss.com/) for styling
- [DaisyUI](https://daisyui.com/) for components
- [Cloudinary](https://cloudinary.com/) for image storage
- [MongoDB Atlas](https://www.mongodb.com/atlas) for database hosting

## 📞 Support

If you have any questions or need help, please open an issue on GitHub or contact me at [rhcards007@example.com]

---

⭐ **Star this repository if you found it helpful!**
