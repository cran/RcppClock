// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include "../inst/include/RcppClock.h"
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// fibonacci
void fibonacci(std::vector<int> n, int reps);
RcppExport SEXP _RcppClock_fibonacci(SEXP nSEXP, SEXP repsSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::vector<int> >::type n(nSEXP);
    Rcpp::traits::input_parameter< int >::type reps(repsSEXP);
    fibonacci(n, reps);
    return R_NilValue;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_RcppClock_fibonacci", (DL_FUNC) &_RcppClock_fibonacci, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_RcppClock(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
