#kitagawa [![Build Status](https://travis-ci.org/abarbour/kitagawa.svg)](https://travis-ci.org/abarbour/kitagawa) [![codecov.io](http://codecov.io/github/abarbour/kitagawa/coverage.svg?branch=master)](http://codecov.io/github/abarbour/kitagawa?branch=master) [![License](http://img.shields.io/badge/license-GPL-orange.svg)](http://www.gnu.org/licenses/gpl-2.0.html) [![Downloads](http://cranlogs.r-pkg.org/badges/kitagawa)](http://www.r-pkg.org/pkg/kitagawa)

Tools to calculate the theoretical spectral response 
of fluid-pressure in a water well
to harmonic strains (e.g., tides, long-period seismic waves).

## Models

This code calculates the response at two types of wells: a sealed well and
an open well (exposed to atmosphere).

###Sealed Well

The theoretical model for a sealed well, where fluids are isolated from atmospheric pressure, 
responding to dilational strains from seismic waves is from 
[Kitagawa et al (2011)](http://dx.doi.org/10.1029/2010JB007794 "Frequency characteristics of the response of water pressure in a closed well to volumetric strain in the high-frequency domain") which this package is named after; the abstract of original article is:

	Oscillations of water pressures and crustal strains due to the seismic waves of
	the 2010 Chile earthquake were observed in Japan. The oscillations of water
	pressures observed over the frequency range of 0.002 to 0.1 Hz were negative
	proportional to the oscillations of volumetric strains. The responses of water
	pressures in closed wells are frequency-dependent. The expression for the
	response of water pressure in a closed well to crustal strain is developed based
	on the poroelastic theory. The expression developed in the present paper
	describes the frequency characteristics of the responses. The response is useful
	for the estimation of rock properties. In addition, the responses of water
	pressure due to tidal volumetric strain are estimated and compared with the
	responses due to the seismic waves.

	J. Geophys. Res., 116, B08301, doi:10.1029/2010JB007794, 2011.

### Open Well

The first theoretical model for a sealed well responding to seimic displacements is from 
[Cooper et al (1965)](http://dx.doi.org/10.1029/JZ070i016p03915 "The response of well-aquifer systems to seismic waves"); the abstract of original article is:

	The degree to which the water level in an open well fluctuates in response to a
	seismic wave is determined by the dimensions of the well, the transmissibility,
	storage coefficient, and porosity of the aquifer, and the type, period, and
	amplitude of the wave. The water level responds to pressure-head fluctuations due
	to dilatation of the aquifer and to vertical motion of the well-aquifer system;
	hence a wave that produces either of these can cause the water level to fluctuate.
	However, the response to dilatation is much larger than the response to vertical
	motion. A solution is derived for the nonsteady drawdown in the aquifer due to a
	harmonic motion of the water level. This solution is then used in the equation of
	motion of the water column to derive expressions for the amplification, which is
	defined as the ratio X0/h0 (for oscillation due to dilatation) or the ratio X0/a
	(for oscillation due to vertical motion of the well-aquifer system), where X0 is
	the amplitude of water-level fluctuation, h0 is the amplitude of pressure-head
	fluctuation, and a is the amplitude of vertical motion of well-aquifer system.
	Amplification curves are given for differing well dimensions and aquifer
	constants.

	J. Geophys. Res., 70(16), 3915–3926, doi:10.1029/JZ070i016p03915, 1965.


This package also includes support for the models in
[Hsieh et al. (1987)](http://dx.doi.org/10.1029/WR023i010p01824 "Determination of aquifer transmissivity from Earth tide analysis").
[Rojstaczer (1988)](http://dx.doi.org/10.1029/JB093iB11p13619 "Intermediate period response of water levels in wells to crustal strain: Sensitivity and noise level"), and
[Liu et al. (1989)](http://dx.doi.org/10.1029/JB094iB07p09453 "Seismically induced water level fluctuations in the Wali Well, Beijing, China"), which are based on various sources (i.e., tides, atmospheric pressure, and seismic waves); the Rojstaczer (1988) model is the well response to strain.

##Getting Started##

Firstly you'll need to install the package and it's dependencies
from [CRAN](http://cran.r-project.org/package=kitagawa)
(from within the `R` environment):

    install.packages("kitagawa", dependencies=TRUE)

then load the package library and take a look at the vignette

    library(kitagawa)
    vignette(package='kitagawa')
    
##Installing the Development Version##

Should you wish to install the development version
of this software, the [devtools][2] library
will be useful:

    install.packages("devtools", dependencies=TRUE)
    library(devtools)
    install_github("abarbour/kitagawa")

[2]: http://cran.r-project.org/web/packages/devtools
