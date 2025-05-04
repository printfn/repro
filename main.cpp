#include "CImg.h"

int main() {
    cimg_library::CImg<unsigned char> image_;
    image_.load_png("spheres.jxl.png");
    image_.save_jxl("spheres.jxl", 0.0);
}
