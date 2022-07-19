docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb coral-ubuntu18 /bin/bash

cd tflite/python/examples/classification
./install_requirements.sh
python3 classify_image.py   --model models/mobilenet_v2_1.0_224_inat_bird_quant.tflite   --labels models/inat_bird_labels.txt   --input images/parrot.jpg