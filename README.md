# Telegram Resume to Portfolio Bot

Automated bot that converts PDF resumes into live Next.js portfolio websites.

## Features

- 📄 PDF resume upload via Telegram
- 🤖 AI-powered analysis with Google Gemini
- 🎨 Automatic Next.js + Tailwind portfolio generation
- 📦 GitHub repository creation
- 🚀 Instant Vercel deployment

## Tech Stack

- **n8n** - Workflow automation
- **Telegram Bot API** - User interface
- **Google Gemini AI** - Resume analysis
- **GitHub API** - Repository management
- **Vercel API** - Deployment

## Deployment

Deployed on Render.com with 24/7 uptime.

## Setup

1. Import workflow JSON to n8n
2. Add credentials:
   - Telegram Bot Token
   - Gemini API Key
   - GitHub Personal Access Token
   - Vercel Token
3. Activate workflow
4. Send PDF resume to Telegram bot

## Author

Built with ❤️ using n8n
```

Click **"Commit new file"**

---

### **File 4: Upload Your Workflow**

1. Click **"Add file"** → **"Upload files"**
2. **Upload:** `telegram-resume-bot.json` (the file you exported)
3. Click **"Commit changes"**

---

## 🌐 **Step 4: Deploy to Render.com**

### **A. Sign Up for Render**

1. Go to: https://render.com
2. Click **"Get Started"**
3. Sign up with **GitHub** (easiest way)
4. Authorize Render to access your GitHub

### **B. Create New Web Service**

1. Click **"New +"** at top right
2. Select **"Web Service"**
3. Click **"Build and deploy from a Git repository"**
4. Click **"Connect a repository"**
5. Find and select: **`n8n-telegram-bot`**
6. Click **"Connect"**

### **C. Configure Service**

Fill in these settings:
```
Name: n8n-telegram-bot
Region: Oregon (US West)
Branch: main
Runtime: Docker
Instance Type: Free
```

### **D. Add Environment Variables**

Scroll down to **"Environment Variables"** section.

Click **"Add Environment Variable"** and add these **ONE BY ONE**:

#### **1. Basic Auth (to protect your n8n)**
```
Key: N8N_BASIC_AUTH_ACTIVE
Value: true
```
```
Key: N8N_BASIC_AUTH_USER
Value: admin
```
```
Key: N8N_BASIC_AUTH_PASSWORD
Value: YourStrongPassword123!  (change this!)
```

#### **2. Webhook Configuration**
```
Key: WEBHOOK_URL
Value: https://n8n-telegram-bot.onrender.com
```
```
Key: N8N_HOST
Value: n8n-telegram-bot.onrender.com
```
```
Key: N8N_PROTOCOL
Value: https
```

#### **3. Encryption Key**
```
Key: N8N_ENCRYPTION_KEY
Value: your-random-32-character-string-here
