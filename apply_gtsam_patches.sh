#!/bin/bash
echo "*** APPLYING MKL INTERFACE FIXES AND A SIMPLIFICATION FOR THE COMMA INITIALIZER***"
patch Eigen/src/Cholesky/LLT_MKL.h $1/LLT_MKL.patch 
patch Eigen/src/Core/CommaInitializer.h $1/CommaInitializer.patch
patch Eigen/src/Eigenvalues/ComplexSchur_MKL.h $1/ComplexSchur_MKL.patch
patch Eigen/src/Eigenvalues/RealSchur_MKL.h $1/RealSchur_MKL.patch
patch Eigen/src/Eigenvalues/SelfAdjointEigenSolver_MKL.h $1/SelfAdjointEigenSolver_MKL.patch
patch Eigen/src/LU/PartialPivLU_MKL.h $1/PartialPivLU_MKL.patch
patch Eigen/src/QR/ColPivHouseholderQR_MKL.h $1/ColPivHouseholderQR_MKL.patch
patch Eigen/src/QR/HouseholderQR.h $1/HouseholderQR.patch
patch Eigen/src/QR/HouseholderQR_MKL.h $1/HouseholderQR_MKL.patch
patch Eigen/src/SVD/JacobiSVD_MKL.h $1/JacobiSVD_MKL.patch