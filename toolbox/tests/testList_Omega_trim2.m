%=========================================================================%
%                                                                         %
%  Autor: Enrico Bertolazzi                                               %
%         Department of Industrial Engineering                            %
%         University of Trento                                            %
%         enrico.bertolazzi@unitn.it                                      %
%                                                                         %
%=========================================================================%
% Driver test program to check Clothoids lib                              %
%=========================================================================%

close all;

X = [2.9265642,2.6734362,2.5109322,1.9078122,1.1859282,1.9249962, ...
     2.8265562,0.00468420000000025,-2.826567,-1.9437558,-1.1859438, ...
     -1.9062558,-2.501565,-2.6734386,-2.9265642,-2.6187522,-1.1406318, ...
     -0.8968758,-1.4562558,-1.9062558,-0.00468780000000013,1.9078122, ...
     1.4468682,0.8968722,1.1406282,2.6187522, 2.9265642 ];
Y = [-1.707808758,-1.707808758,-2.367185958,-2.582810358,-2.582810358, ...
     -1.167184758,0.915619242,3.178123242,0.915619242,-1.150000758, ...
     -2.582810358,-2.582810358,-2.393750358,-1.707808758,-1.707808758, ...
     -3.178123242,-3.178123242,-2.989063158,-0.915616758,0.925003242, ...
     2.953123242,0.925003242,-0.915616758,-2.989063158,-3.178123242,-3.178123242, -1.707808758 ];

SC = ClothoidSplineG2();
S1 = ClothoidList();
S2 = ClothoidList();
S3 = ClothoidList();

subplot(3,1,1);

S  = SC.buildP2( X, Y );
S1.copy(S);
S2.copy(S);
S3.copy(S);

fmt1 = {'Color','red','LineWidth',4};
fmt2 = {'Color','blue','LineWidth',4};

subplot(2,2,1);
S.plot( 100, fmt1, fmt2);
axis equal

subplot(2,2,2);
S1.trim(0,10);
S1.plot( 100, fmt1, fmt2);
axis equal

subplot(2,2,3);
S2.trim(10,60);
S2.plot( 100, fmt1, fmt2);
axis equal

subplot(2,2,4);
S3.trim(35,5);
S3.plot( 100, fmt1, fmt2);
axis equal