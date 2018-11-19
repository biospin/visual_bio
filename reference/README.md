# CT ������ �ٿ�ε� ���

### conda ��ġ

- https://conda.io/miniconda.html
- Python 2.7 ������  conda�� ��ġ �Ǵ� 
- Python 3.7 ������  conda��ġ�Ŀ� python 2.7 ����ȯ���� �����Ѵ�.
```
conda conda create -n py27 anaconda python=2.7

conda activate py27
``` 
- anaconda ������ ��ġ�� �����.


### �ٿ�ε�

- �Ʒ� ������ PC�ٿ�ε�
https://github.com/biospin/visual_bio/blob/master/reference/batch_download_zips.py

- ���� �ҽ��߿��� ������ �κп���  idx < 40 �� �����ϸ� ,  Ư�� ���� ���ĺ��� �ٿ�ε� �����Ѵ�.
```
import os
for idx, link in enumerate(links):
    fn = 'Images_png_%02d.zip' % (idx+1)
    # ������ �κ� 
    if os.path.isfile(fn) and  idx < 40 :
	    continue
		
    print 'downloading', fn, '...'
    urllib.urlretrieve(link, fn)  # download the zip file
print "Download complete. Please check the MD5 checksums"
```

- ������ -  python=2.7�϶� 
```
conda activate py27
python batch_download_zips.py
```

- ������ -  python2.7������ ��ġ������ 
```
python batch_download_zips.py
```

