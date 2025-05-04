.PHONY: clean

repro:
	$(CXX) -Dcimg_use_jxl=1 -Dcimg_use_png=1 -I/opt/homebrew/include -L/opt/homebrew/lib -lx11 -ljxl -lpng -o repro main.cpp

clean:
	rm -f repro
