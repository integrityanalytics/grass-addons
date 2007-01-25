MODULE_TOPDIR = ..

include $(MODULE_TOPDIR)/include/Make/Dir.make

SUBDIRS = \
	r.albedo \
	r.average \
	r.basins.fill \
	r.bilinear \
	r.biomass \
	r.bitpattern \
	r.buffer \
	r.carve \
	r.cats \
	r.circle \
	r.clump \
	r.coin \
	r.colors \
	r.composite \
	r.compress \
	r.contour \
	r.cost \
	r.covar \
	r.cross \
	r.describe \
	r.digit \
	r.distance \
	r.drain \
	r.dn2full.l7 \
	r.dn2potrad.l7 \
	r.dn2ref.ast \
	r.dn2ref.l7 \
	r.eb.disp \
	r.eb.deltat \
	r.eb.eta \
	r.eb.evapfr \
	r.eb.g0 \
	r.eb.h0 \
	r.eb.h_iter \
	r.eb.molength \
	r.eb.netrad \
	r.eb.psi \
	r.eb.rah \
	r.eb.ublend \
	r.eb.ustar \
	r.eb.z0m \
	r.evapo.potrad \
	r.evapo.PM \
	r.fill.dir \
	r.flow \
	r.gaswap.serial \
	r.grow2 \
	r.gwflow \
	r.his \
	r.in.arc \
	r.in.ascii \
	r.in.bin \
	r.info \
	r.in.gridatb \
	r.in.mat \
	r.in.poly \
	r.in.xyz \
	r.kappa \
	r.lake \
	r.latitude \
	r.le \
	r.li \
	r.los \
	r.mapcalc \
	r.median \
	r.mfilter \
	r.mode \
	r.neighbors \
	r.null \
	r.nullwest \
	r.out.arc \
	r.out.ascii \
	r.out.bin \
	r.out.gdal \
	r.out.gridatb \
	r.out.mat \
	r.out.mpeg \
	r.out.pov \
	r.out.ppm \
	r.out.ppm3 \
	r.out.vrml \
	r.out.vtk \
	r.param.scale \
	r.patch \
	r.profile \
	r.proj \
	r.proj.seg \
	r.quant \
	r.random \
	r.random.cells \
	r.random.surface \
	r.reclass \
	r.recode \
	r.region \
	r.report \
	r.resample \
	r.resamp.interp \
	r.resamp.rst \
	r.resamp.stats \
	r.rescale \
	r.rescale.eq \
	r.series \
	r.slope.aspect \
	r.statistics \
	r.stats \
	r.sum \
	r.sun \
	r.sunmask \
	r.support \
	r.support.stats \
	r.surf.area \
	r.surf.contour \
	r.surf.idw \
	r.surf.idw2 \
	r.surf.random \
	r.surf.gauss \
	r.texture \
	r.thin \
	r.timestamp \
	r.to.rast3 \
	r.to.rast3elev \
	r.to.vect \
	r.topidx \
	r.topmodel \
	r.transect \
	r.univar2 \
	r.uslek \
	r.usler \
	r.vi \
	r.vi.mpi \
	r.volume \
	r.walk \
	r.water.outlet \
	r.watershed \
	r.what \
	simwe \
	wildfire

GDALBASED = r.in.gdal

FFTWBASED = r.surf.fractal

PNGBASED = r.out.png

CXXBASED = r.terraflow

TIFFBASED = r.out.tiff

#compile if GDAL present:
ifneq ($(USE_GDAL),)
    SUBDIRS += $(GDALBASED)
endif

#compile if FFTW present:
ifneq ($(strip $(FFTWLIB)),)
    SUBDIRS += $(FFTWBASED)
endif

#compile if PNG present:
ifneq ($(strip $(PNGLIB)),)
    SUBDIRS += $(PNGBASED)
endif

#compile if C++ compiler present:
ifneq ($(strip $(CXX)),)
    SUBDIRS += $(CXXBASED)
endif

#compile if TIFF present:
ifneq ($(strip $(TIFFLIB)),)
    SUBDIRS += $(TIFFBASED)
endif

default: subdirs htmldir

clean: cleansubdirs

PGM = rasterintro
