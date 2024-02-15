sys =
 
  a = 
       x1  x2  x3
   x1   0   1   0
   x2   0   0   1
   x3  -2  -4  -6
 
  b = 
       u1  u2
   x1   0   0
   x2   0   1
   x3   1   0
 
  c = 
       x1  x2  x3
   y1   1   0   0
   y2   0   1   0
 
  d = 
       u1  u2
   y1   0   0
   y2   0   0
 
Continuous-time state-space model.


TF_sys =
 
  From input 1 to output...
                 1
   1:  ---------------------
       s^3 + 6 s^2 + 4 s + 2
 
                 s
   2:  ---------------------
       s^3 + 6 s^2 + 4 s + 2
 
  From input 2 to output...
               s + 6
   1:  ---------------------
       s^3 + 6 s^2 + 4 s + 2
 
             s^2 + 6 s
   2:  ---------------------
       s^3 + 6 s^2 + 4 s + 2
 
Continuous-time transfer function.