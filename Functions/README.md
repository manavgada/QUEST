Function Descriptions:
1) B: Forms a matrix 'B', a weigted summation of outer products of corresponding body and reference frame vectors.
2) checkmatrix: Checks for the case of singularity before proceeding to find the quaternion.
3) F: Gives the value of Eigen Polynomial at a value.
4) Fprime: Gives the value of the derivative of Eigen Polynomial at a value.
5) K: Forms a 4x4 matrix 'K' to form the Eigen value problem.
6) q: Gives the quaternion form of attitude.
7) root: Finds the root of an equation using Newton-Raphson's method.
8) S: Forms a matrix 'S' from 'B'.
9) S2: Forms a matrix 'S2' from 'S'.
10) sigma: Gives the trace value of matrix 'B'.
11) sqrot: Gives the quaternion form of attitude incorporating sequential rotations.
12) sqrupdate: Keeps the track of component of highest magnitude for implementing sequential rotations in the subsequent step.
13) sumweights: Gives the inital root guess for Newton Raphson in 'root' function.
14) Z: Forms a column vector Z from some elements of 'B'.

Other Files:
1) input: Program fetches input from this file and also stores a copy of output here for internal purposes.
2) output: Program copies the output to this file for furthur purposes.
