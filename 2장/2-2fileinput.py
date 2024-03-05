import cv2 as cv # opencv 사용
import sys # 윈도우 운영체제 사용

img = cv.imread('soccer.jpg') # 파일 읽기

if img is None :
    sys.exit('파일을 찾을 수 없습니다.')

cv.imshow('Image Display', img) # 화면에 표시하기

cv.waitKey() # 화면 잠깐 멈추기
cv.destroyAllWindows() # 화면 닫아주기

# 연습문제 1 이미지 2개 화면에 띄우기

img1 = cv.imread('DG.jpg')
img2 = cv.imread('DG2.png')

if img1 is None :
    sys.exit('파일을 찾을 수 없습니다.')
    

cv.imshow('dg_img',img1)
cv.imshow('dg2_img',img2)

cv.waitKey()
cv.destroyAllWindows()