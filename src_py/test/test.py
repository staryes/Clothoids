import G2lib
import time

tic = time.time()

C1 = G2lib.ClothoidCurve()
C1.build_G1(0, 0, 3.14, 1, 2, 0)

toc = time.time()

print("toc-tic:", toc-tic)
print("C1:", C1)
# => C1: Clothoid
#    x0     = 0            x1     = 1
#    y0     = 0            y1     = 2
#    theta0 = 3.14         theta1 = 4.44089e-16
#    kappa0 = -1.53394     kappa1 = -0.242469
#    dk     = 0.365315     L      = 3.53522
