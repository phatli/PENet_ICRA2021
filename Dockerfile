FROM phatli/pytorch:190cu111cudnn_dev


RUN pip install --no-cache-dir opencv-python scikit-image numpy matplotlib Pillow

# Used by opencv
RUN sudo apt-get update && sudo apt-get install -y libgl1-mesa-dev libglib2.0-0

ENTRYPOINT ["/bin/zsh"]
CMD ["-l"]