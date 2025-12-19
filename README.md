# n8n YouTube Shorts Automation

This repo deploys n8n on Render to automatically generate and upload Islamic YouTube Shorts daily.

## 🚀 Deploy Steps
1. Fork this repo to your GitHub.
2. Go to [Render](https://render.com).
3. Click **New → Web Service → From GitHub**.
4. Select this repo.
5. Render will read `render.yaml` and set up everything.
6. Create a free Postgres database in Render and copy its credentials.
7. Update `.env` with your Postgres values and YouTube API keys.
8. Add secrets in Render dashboard.
9. Deploy → your n8n will be live at:
   https://n8n-youtube-shorts.onrender.com

Login with:
- User: `admin`
- Password: `changeme` (change this!)

## 📹 Workflow
The workflow fetches Quran verses, Hadith quotes, authentic reciter audio, generates narration with TTS, fetches Islamic images, assembles a slideshow video with FFmpeg, and uploads it to YouTube daily.