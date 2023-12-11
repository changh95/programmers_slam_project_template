# Build ORB-SLAM
cd root
git clone https://github.com/Windfisch/ORB_SLAM2.git
cd ORB_SLAM2
chmod +x build.sh
./build.sh

# Run
./Examples/Monocular/mono_kitti \
Vocabulary/ORBvoc.txt \
Examples/Monocular/KITTI00-02.yaml \
../volume/dataset/sequences/00
