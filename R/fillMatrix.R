# r: function argument
# row: number of matrix rows
# col: number of matrix collums
# h: not used

fillMatrix<- function(inputFunction,leftExtremePoint,rightExtremePoint,step){
  #generate a mesh with points
  meshPoints<-seq(leftExtremePoint,rightExtremePoint,step)

  # generate an auxiliar matrix filled with "0"
  # auxMat<-matrix(0,row,col)
  auxMat<-matrix(0,4,4)

  matrixLines= length(auxMat[,1])    # length of first column in M
  matrixColumns = length(auxMat[1,]) # length of first line in M

  # fills each matrix element
  for(lineEl in 1:matrixLines){
    for(colEl in 1:matrixColumns){
      # iteration debug:
      # auxMat[lineEl,colEl] = paste(lineEl,colEl)

      # with the return of function f(r)
      if(lineEl == colEl){
        auxMat[lineEl,colEl]="f(r)"
      }
      else if(abs(lineEl - colEl)==1){
        auxMat[lineEl,colEl]="-1"
      }
      else{
        # unnecessary. auxMat begins filled with '0'
        auxMat[lineEl,colEl]="0"
      }
    }

  }
  print(auxMat)
}
