# sparse-capsule-cnns
WARNING: Probably the wrong way to describe this. 

Attempting a capsule model inlcuding YOLO-like models but with sparse connections, single dedicated outputs, and parallel computing ability across a multicore system using Keras and OpenCV in Python. 

Motivated by silly questions like: 

1. How does running multiple sparse CNN models in parallel and limiting each unique output of the CNN models affect accuracy of the overall "capsule" and the performance of the host computer?

2. Why can our brains (USUAULLY) accurately predict stuff quickly yet YOLO, while state of the art today in 2019, struggles to run effectively on small embedded compute platforms? Is this a limitation of algorithms such as YOLO (e.g. SSDs) or is it a limitation of current semiconductor hardware? 
