# Submission Documentation

## Project Overview

This project implements a complete GitHub webhook system that:
1. Captures GitHub events (Push, Pull Request, Merge) from `action-repo`
2. Stores them in MongoDB via a Flask webhook receiver
3. Displays events in a real-time UI dashboard with 15-second polling

## Repository Links

### 1. Action Repository
**URL:** https://github.com/YOUR_USERNAME/action-repo

**Purpose:** Source repository that triggers GitHub webhooks

**Key Features:**
- Configured GitHub webhooks for Push, Pull Request, and Merge events
- Ready to trigger events with any code change
- Webhook delivery monitoring enabled

### 2. Webhook Receiver Repository
**URL:** https://github.com/YOUR_USERNAME/webhook-repo

**Purpose:** Flask application that receives, processes, and displays webhook events

**Key Features:**
- Flask web application with RESTful API
- MongoDB integration for event storage
- Real-time UI dashboard with auto-refresh
- Comprehensive error handling and logging
- Security features (signature verification, rate limiting)
- Monitoring and backup systems

## Deployment URLs

### Webhook Receiver Application
**URL:** https://your-deployed-app.xxx.com

### Dashboard
**URL:** https://your-deployed-app.xxx.com

### API Endpoints
- `GET /` - Dashboard UI
- `POST /webhook` - GitHub webhook endpoint
- `GET /api/events` - All events API
- `GET /api/events/latest` - Latest events for UI
- `GET /health` - Health check

## Testing Instructions

### 1. Test Webhook Flow
```bash
# 1. Make a change to action-repo
cd action-repo
echo "Test $(date)" >> test.txt
git add test.txt
git commit -m "Test webhook"
git push origin main

# 2. Check webhook delivery
# Go to: https://github.com/YOUR_USERNAME/action-repo/settings/hooks
# Click on webhook → Recent Deliveries

# 3. Check MongoDB
# Connect to MongoDB and run:
# db.events.find().sort({timestamp: -1}).limit(5)

# 4. Check dashboard
# Open: https://your-deployed-app.xxx.com
# Should show the new event within 15 seconds