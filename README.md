# Helipad Recognition and Vision based Distance Measurement

# Recognition with yolo  v3

1. Install [darknet](https://pjreddie.com/darknet/)

2. Follow the steps [here](https://blog.francium.tech/custom-object-training-and-detection-with-yolov3-darknet-and-opencv-41542f2ff44e)

3. Download yolo v3 [weights](https://pjreddie.com/media/files/yolov3.weights)

4. Train

```
mkdir backup
darknet detector train custom.data yolov3.cfg yolov3.weights -clear 1
```

5. Infer

```
darknet detector test custom.data yolov3.cfg backup/yolov3_final.weights ../img/helipad9.jpg -thresh 0.9
```

![Sample Result](https://raw.githubusercontent.com/ersinesen/helipad/master/sample.jpg?token=ABK54HCUAXS6GBWYYNYS7IK6FFNK4)

6. Try colab notebooks

[Train](https://colab.research.google.com/drive/1Gpx6uVG6qH5GM7nwAck5FCobMhKESgn_)

[Predict](https://colab.research.google.com/drive/1DVpHjvUuKCUr_ShkM6dm0QuJtNSaWmWE)

# Vision based Distance Measurement

[TODO]

# Tips

- Convert all png's to jpg: ``` for i in *.png; do convert $i $(basename $i png)jpg ; done ```

- ```-clear 1``` argument of darknet discards previously trained batch count

- Due to a bug in darknet if you are working in another directory than darknet's, make a link to data/labels directory.
