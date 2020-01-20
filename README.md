# Helipad Recognition and Vision based Distance Measurement

# Recognition with yolo  v3

1. Install [darknet](https://pjreddie.com/darknet/)

2. Follow the steps [here](https://blog.francium.tech/custom-object-training-and-detection-with-yolov3-darknet-and-opencv-41542f2ff44e)

3. Download yolo v3 [weights](https://pjreddie.com/darknet/imagenet/#darknet53)

4. Train

```
mkdir backup
darknet detector train custom.data yolov3.cfg darknet53.conv.74 
```

5. Infer

```
darknet detector test custom.data yolov3.cfg backup/yolov3_final.weights ../img/helipad9.jpg -thresh 0.9
```
_Note_: Due to a bug in darknet if you are working in another directory than darknet's, make a link to data/labels directory.

# Vision based Distance Measurement

[TODO]

# Tips

- Convert all png's to jpg: ``` for i in *.png; do convert $i $(basename $i png)jpg ; done ```

- ```-clear 1``` argument of darknet discards previously trained batch count
