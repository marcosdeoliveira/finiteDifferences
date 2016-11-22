# r: function argument
# row: number of matrix rows
# col: number of matrix collums
# h: not used

fillMatrix<- function(r,row, col,h){
  auxMat<-matrix(f(r),row,col) ;  # fills each matrix element with the return of function f(r)
  print(auxMat);
  # print(paste("h:",h));
}
