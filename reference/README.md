# CT 데이터 다운로드 방법

### conda 설치

- https://conda.io/miniconda.html
- Python 2.7 버전의  conda를 설치 또는 
- Python 3.7 버전의  conda설치후에 python 2.7 가상환경을 설정한다.
```
conda conda create -n py27 anaconda python=2.7

conda activate py27
``` 
- anaconda 버전을 설치도 비슷함.


### 다운로드

- 아래 파일을 PC다운로드
https://github.com/biospin/visual_bio/blob/master/reference/batch_download_zips.py

- 원본 소스중에서 수정된 부분에서  idx < 40 을 수정하면 ,  특정 파일 이후부터 다운로드 가능한다.
```
import os
for idx, link in enumerate(links):
    fn = 'Images_png_%02d.zip' % (idx+1)
    # 수정된 부분 
    if os.path.isfile(fn) and  idx < 40 :
	    continue
		
    print 'downloading', fn, '...'
    urllib.urlretrieve(link, fn)  # download the zip file
print "Download complete. Please check the MD5 checksums"
```

- 실행방법 -  python=2.7일때 
```
conda activate py27
python batch_download_zips.py
```

- 실행방법 -  python2.7버전을 설치했을때 
```
python batch_download_zips.py
```

