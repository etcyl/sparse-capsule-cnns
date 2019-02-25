"""
Simple baseline to (hopefully) work from.
Originally modified from source:
    
    https://towardsdatascience.com/building-a-convolutional-neural-network-cnn-in-keras-329fbbadc5f5
"""

from keras.models import Sequential # Common model for making a CNN in Keras
from keras.layers import Dense, Conv2D, Flatten # Typical parameters for layers: Dense is a common output layer, Conv2D handle input images,
                                                # and Flatten connect Conv2D ("convolution") and Dense layers.

# Number of neurons for each layer
first_layer_neurons = 64
second_layer_neurons = 32
output_layer_neurons = 10 # This number corresponds to the number of class labels
kernel_size = 3

#create model
model = Sequential() # Typical model for making a CNN in Keras
#add model layers
model.add(Conv2D(first_layer_neurons, kernel_size, activation=’relu’, input_shape=(28,28,1))) 
model.add(Conv2D(second_layer_neurons, kernel_size, activation=’relu’))
model.add(Flatten())
model.add(Dense(output_layer_neurons, activation=’softmax’))

