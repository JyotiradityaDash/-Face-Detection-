# 🎬 How to Run the Face Detection Attendance System

## Method 1: Using the Run Script (Easiest)

```bash
cd /home/draxxy/temp1/-Face-Detection-
./run.sh
```

## Method 2: Using Streamlit Directly

```bash
cd /home/draxxy/temp1/-Face-Detection-
/home/draxxy/temp1/.venv/bin/streamlit run main.py
```

## Method 3: Activating Virtual Environment First

```bash
cd /home/draxxy/temp1/-Face-Detection-
source /home/draxxy/temp1/.venv/bin/activate
streamlit run main.py
```

## 🌐 Accessing the Application

Once running, open your browser and go to:
- **Local**: http://localhost:8501
- **Network**: http://YOUR_IP:8501 (for other devices on your network)

## 🎯 Using the Application

1. **Enter Your Name**: Type your name in the text input field
2. **Start Attendance**: Check the "Start Attendance" checkbox
3. **Allow Camera**: Your browser will ask for camera permission - click "Allow"
4. **Face Detection**: Position your face in front of the camera
5. **Automatic Marking**: Attendance will be marked automatically when your face is detected

## 📊 Viewing Attendance Records

Use the sidebar (left side) buttons:
- **View Today's Attendance**: Click to see who has marked attendance today
- **View All Records**: Click to see complete attendance history

## 🛑 Stopping the Application

Press `Ctrl + C` in the terminal where Streamlit is running

## ⚠️ Troubleshooting

### Cannot Access Camera
- Make sure to click "Allow" when browser asks for camera permission
- Close other applications using the camera
- Try a different browser (Chrome or Firefox recommended)

### Port Already in Use
If port 8501 is busy, run with a different port:
```bash
/home/draxxy/temp1/.venv/bin/streamlit run main.py --server.port 8502
```

### Module Not Found Errors
Make sure all dependencies are installed:
```bash
/home/draxxy/temp1/.venv/bin/pip install -r requirements.txt
```

## 🔄 Restarting the Application

If you need to restart:
1. Press `Ctrl + C` to stop
2. Run the command again to start

## 📱 Accessing from Mobile/Other Devices

1. Make sure your device is on the same network
2. Find your computer's IP address:
   ```bash
   hostname -I | awk '{print $1}'
   ```
3. Run streamlit with network access:
   ```bash
   /home/draxxy/temp1/.venv/bin/streamlit run main.py --server.address 0.0.0.0
   ```
4. On your mobile device, open: `http://YOUR_IP:8501`

---

**Need more help?** Check the README.md or QUICKSTART.md files!
