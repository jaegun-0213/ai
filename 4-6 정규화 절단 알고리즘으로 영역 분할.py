import skimage
import numpy as np
import cv2 as cv 
import time

coffee = skimage.data.coffee()

start = time.time()
# 단계 slic() --> rag_mean_color() --> cut_normalized() --> mark_boundaries()
# 슈퍼화소분할 --> 영상의 그래프표현 (에지가중치로 그래프구성) 
# --> 정규화 절단 알고리즘 --> 영역분할 정보를 담은 ncut맵을 이용하여 영역경계를 표시하고 marking객체에 저장한다. 
slic = skimage.segmentation.slic(coffee, compactness= 20, n_segments = 600, start_label= 1)

g = skimage.graph.rag_mean_color(coffee,slic,mode='similarity')
ncut = skimage.graph.cut_normalized(slic,g)
print(coffee.shape,'Coffee 영상을 분할하는 데' , time.time()-start,'초 소요')

marking = skimage.segmentation.mark_boundaries(coffee, ncut)
ncut_coffee = np.uint8(marking*255.0)

cv.imshow('Nirmalized cut', cv.cvtColor(ncut_coffee,cv.COLOR_RGB2BGR))

cv.waitKey()
cv.destroyAllWindows()