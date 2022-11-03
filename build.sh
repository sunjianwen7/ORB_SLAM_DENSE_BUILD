echo "Configuring and building Thirdparty/g2o_with_orbslam2 ..."

cd Thirdparty/g2o_with_orbslam2
mkdir build
cd build
cmake ..
make -j16
sudo make install

echo "Configuring and building Thirdparty/DBoW2 ..."

cd ../../DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j16

echo "Uncompress vocabulary ..."
cd ../../../
cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM2 ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j16
cd ..

