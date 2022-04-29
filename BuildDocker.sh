cd /tmp
wget https://github.com/curlconverter/curlconverter.github.io/archive/refs/heads/gh-pages.zip
unzip gh-pages.zip
docker build -t curlconverter:latest .
docker build -f Arm64Dockerfile -t curlconverter:arm64 .
rm ./gh-pages -rf
