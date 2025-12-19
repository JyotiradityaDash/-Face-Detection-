# 🎯 Face Detection Attendance System

An intelligent face detection-based attendance system built with Streamlit and OpenCV. This application automatically marks attendance when a face is detected through the webcam.

## ✨ Features

- 📷 **Real-time Face Detection**: Uses OpenCV's Haar Cascade for accurate face detection
- ✅ **Automatic Attendance Marking**: Attendance is marked automatically when a face is detected
- 📊 **Attendance Records**: View today's attendance or all historical records
- 💾 **Excel Export**: All attendance data is saved in Excel format
- 🎨 **User-Friendly UI**: Clean and intuitive Streamlit interface
- ✋ **Duplicate Prevention**: Prevents marking attendance multiple times on the same day

## 🚀 Installation

### Prerequisites
- Python 3.10 or higher
- Webcam/Camera access

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/JyotiradityaDash/-Face-Detection-.git
   cd -Face-Detection-
   ```

2. **Create a virtual environment (recommended)**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

## 📖 Usage

1. **Run the Streamlit app**
   ```bash
   streamlit run main.py
   ```

2. **Access the application**
   - The app will automatically open in your default browser
   - If not, navigate to `http://localhost:8501`

3. **Mark Attendance**
   - Enter your name in the text field
   - Click the "Start Camera" button
   - Position your face clearly in front of the camera
   - Keep your face visible for a few seconds (needs 10 consecutive detections)
   - Attendance will be marked automatically when detection threshold is reached
   - Camera will stop automatically after successful marking

4. **View Records**
   - Use the sidebar to view today's attendance or all records
   - Records are also saved in `Attendance.xlsx`

## 📋 Requirements

- streamlit>=1.28.0
- opencv-python>=4.8.0
- openpyxl>=3.1.0
- numpy>=1.24.0
- pillow>=10.0.0
- pandas>=2.0.0

## 📂 Project Structure

```
-Face-Detection-/
├── main.py              # Main Streamlit application
├── requirements.txt     # Python dependencies
├── runtime.txt         # Python version specification
├── Attendance.xlsx     # Attendance records (auto-generated)
├── Attendance.csv      # CSV backup (optional)
└── README.md          # Project documentation
```

## 🔧 Configuration

The application uses OpenCV's Haar Cascade classifier for face detection. The model is loaded automatically from OpenCV's pre-trained models.

### Adjusting Detection Sensitivity

In `main.py`, you can modify the `detectMultiScale` parameters:

```python
faces = face_cascade.detectMultiScale(gray, 1.3, 5)
```

- First parameter (1.3): Scale factor (lower = more sensitive but slower)
- Second parameter (5): Min neighbors (higher = fewer false positives)

## 🎯 Features Explained

### Face Detection
- Uses Haar Cascade Classifier for real-time face detection
- Draws green rectangles around detected faces
- Displays the person's name above the detected face

### Attendance Management
- Automatically marks attendance when a face is detected
- Prevents duplicate entries for the same day
- Stores Name, Date, Day of Week, and Time
- Data is saved in Excel format for easy access

### User Interface
- Clean, modern Streamlit interface
- Sidebar for viewing attendance records
- Real-time feedback and notifications
- Responsive design

## 🐛 Troubleshooting

### Camera Not Working
- Ensure camera permissions are granted in your browser
- Try using a different browser (Chrome/Firefox recommended)
- Check if another application is using the camera

### Face Not Detected
- Ensure good lighting conditions
- Keep your face clearly visible to the camera
- Remove any obstructions (glasses, masks may affect detection)
- Adjust the detection sensitivity parameters

### Excel File Errors
- Ensure you have write permissions in the project directory
- Close `Attendance.xlsx` if it's open in Excel or another program

## 🌐 Deployment

### Streamlit Cloud

1. Push your code to GitHub
2. Go to [Streamlit Cloud](https://streamlit.io/cloud)
3. Connect your GitHub repository
4. Deploy the app

### Local Network

```bash
streamlit run main.py --server.address 0.0.0.0 --server.port 8501
```

Access from other devices using your local IP address.

## 📝 License

This project is open source and available under the MIT License.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## 👨‍💻 Author

**Jyotiraditya Dash**

- GitHub: [@JyotiradityaDash](https://github.com/JyotiradityaDash)

## 🙏 Acknowledgments

- OpenCV for computer vision capabilities
- Streamlit for the amazing web framework
- streamlit-webrtc for WebRTC support

---

**Note**: This is an educational project for demonstration purposes. For production use in organizations, consider adding features like:
- Face recognition (not just detection) to identify specific individuals
- Database integration for better data management
- User authentication and admin panel
- Advanced reporting and analytics
- Multi-camera support
