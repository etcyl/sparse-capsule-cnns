# sparse-capsule-cnns
WARNING: Probably the wrong way to describe this. 

Attempting a capsule model inlcuding YOLO-like models but with sparse connections, single dedicated outputs, and parallel computing ability across a multicore system using Keras and OpenCV in Python. 

Motivated by silly questions like: 

1. How does running multiple sparse CNN models in parallel and limiting each unique output of the CNN models affect accuracy of the overall "capsule" and the performance of the host computer?

2. Why can our brains (USUAULLY) accurately predict stuff quickly yet YOLO, while state of the art today in 2019, struggles to run effectively on small embedded compute platforms? Is this a limitation of algorithms such as YOLO (e.g. SSDs) or is it a limitation of current semiconductor hardware? 


# links of interesting related stuff

https://www.groundai.com/project/a-comparison-of-embedded-deep-learning-methods-for-person-detection/
https://ieeexplore.ieee.org/document/8342149
https://arxiv.org/abs/1802.09941
http://www.cs.tut.fi/sgn/arg/dcase2016/documents/challenge_technical_reports/DCASE2016_Bae_1025.pdf
https://ieeexplore.ieee.org/document/5200010
https://papers.nips.cc/paper/4773-convolutional-recursive-deep-learning-for-3d-object-classification.pdf
https://arxiv.org/abs/1610.00163
https://arxiv.org/abs/1703.06870
https://arxiv.org/abs/1604.03265
https://arxiv.org/abs/1506.01497
https://arxiv.org/abs/1506.02640
