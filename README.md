# 🚗 Dashcam Vehicle Detection using YOLOv4 in MATLAB

This repository contains a MATLAB project for real-time vehicle detection using dashcam video footage. The system utilizes a custom-trained **YOLOv4 (tiny-yolov4-coco)** object detector to identify and track vehicles with high speed and accuracy.

## 🌟 Features
* **Real-Time Video Inference:** Uses MATLAB's `vision.VideoPlayer` for smooth, frame-by-frame video processing and bounding box visualization.
* **Custom YOLOv4 Model:** Trained on custom dashcam footage using transfer learning on the `tiny-yolov4-coco` architecture.
* **Data Augmentation:** Incorporates automated data augmentation (color jittering, contrast adjustments) during training to create a robust model.
* **False-Positive Reduction:** The training dataset includes negative samples (empty roads) to teach the model to ignore background elements like shadows, trees, and street markings.
* **Adjustable Threshold:** Easy-to-tune confidence threshold to filter out uncertain predictions.

## 📋 Prerequisites
To run this code, you will need **MATLAB R2022a** (or newer) with the following add-ons installed:
1. Deep Learning Toolbox
2. Computer Vision Toolbox
3. [Computer Vision Toolbox Model for YOLO v4 Object Detection](https://www.mathworks.com/matlabcentral/fileexchange/108063-computer-vision-toolbox-model-for-yolo-v4-object-detection) (Free Add-On)
