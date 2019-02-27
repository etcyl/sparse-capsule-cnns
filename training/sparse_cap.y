# -*- coding: utf-8 -*-
"""
Created on Tue Feb 26 21:55:32 2019

CNN baseline code shamelessly re-appropriated from source:
    
    https://github.com/etcyl/sparse-capsule-cnns/blob/master/training/keras_model_baseline.py

@author: Etcyl
"""

from keras.models import Sequential # Common model for making a CNN in Keras
from keras.layers import Dense, Conv2D, Flatten # Typical parameters for layers: Dense is a common output layer, Conv2D handle input images,
                                                # and Flatten connect Conv2D ("convolution") and Dense layers.

class sparse_cap():
    """A sparse capsule network stores several, possibly different, networks to operate in parallel"""
    #The network accepts a list of neural net properties to create Keras neural networks that serve as the underlying networks
    
    def __init__(self, keras_networks=None):
        if(keras_networks == None):
            print("Using default networks")
            print(" ")
            # Number of neurons for each layer
            self.first_layer_neurons = 64
            self.second_layer_neurons = 32
            self.output_layer_neurons = 10 # This number corresponds to the number of class labels
            self.kernel_size = 3
            self.networks = [0]*3
            self.get_default_network()
        else:
            print("Using networks with the following params...")
           # print("first layer neurons: ", keras_networks[[0][0]])
            #print("second layer neurons: ", keras_networks[[0][1]])
            
    def get_default_network(self):
        self.networks[0] = self.get_cnn()
        self.networks[1] = self.get_cnn()
        self.networks[2] = self.get_cnn()
        
    def get_cnn(self):
        #create model
        model = Sequential() # Typical model for making a CNN in Keras
        #add model layers
        model.add(Conv2D(self.first_layer_neurons, self.kernel_size, activation='relu', input_shape=(28,28,1))) 
        model.add(Conv2D(self.second_layer_neurons, self.kernel_size, activation='relu'))
        model.add(Flatten())
        model.add(Dense(self.output_layer_neurons, activation='softmax'))
        return model
