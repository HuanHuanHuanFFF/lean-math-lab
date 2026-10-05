# Saved checker diagnosis

The first standard-library determinant replay rejected node t=2: the saved resultant divided the explicit Sylvester determinant with P5 rows first by -1. Both r degrees are 5 and 7; exchanging the two row blocks changes the determinant by (-1)^(5*7)=-1. The saved polynomials are now defined and checked as det Sylv_z(Vi,P5), with Vi rows first, rather than trusting the discovery library function name. All degree-bound+1 exact nodes must pass. This sign change has no effect on the common-zero implication, but is part of the fixed identity contract. No unsuccessful replay was called PASS.

A prior source-loader test failed on compressed member records without retained_path; it was corrected to select ordinary retained members only. Neither event is a mathematical nonexistence result.
