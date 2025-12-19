import cv2
import mediapipe as mp
import os
from datetime import datetime
import calendar
from openpyxl import Workbook, load_workbook
import streamlit as st
from streamlit_webrtc import webrtc_streamer, VideoProcessorBase

# ---------------- PAGE SETUP ----------------
st.set_page_config(page_title="Face Attendance System", layout="centered")
st.title("😊 Good Morning! Have a Nice Day")
st.write("Enter your name and allow camera access")

# ---------------- SESSION STATE ----------------
if "marked" not in st.session_state:
    st.session_state.marked = False

# ---------------- EXCEL FILE ----------------
excel_file = "Attendance.xlsx"

if not os.path.exists(excel_file):
    wb
