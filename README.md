# Helipad Recognition and Vision based Distance Measurement

# Recognition with yolo  v3

1. Install [darknet](https://pjreddie.com/darknet/)

2. Follow the steps in (https://medium.com/@manivannan_data/how-to-train-yolov3-to-detect-custom-objects-ccbcafeb13d2)

3. Download yolo v3 [weights](https://pjreddie.com/darknet/imagenet/#darknet53)

4. Train

```
darknet detector train custom.data yolov3.cfg darknet53.conv.74 
```
