/* 
#       File:           cb13l4_10_tsmc_ApII.tf
#       Author:         Yu Chen
#       @(#) Apollo/Astro tech file For PASSPORT 0.13U 4LM Process
#       @(#) With Passport 0.13U 4LM design Rules
#       @(#) Revision 1.0.1.2
#       @(#) Date     15-Oct-04
###############################################################################
# Copyright Synopsys Inc. 1997 1998 1999 2000 2001 2002 2003 2004
# technology: cb13l4_10_tsmc
# drawing grid: 0.005 microns
# Revision history:
# rev            date     who  what
# ------------  --------- ---- ------------------------------------------------
# Rev  1.0.1.2  15-Oct-04 AS   Changed ltGreen index from 51 to 59
# Rev. 1.0.1.1  16-Jan-02 ZD   Updated the metal Resistance value.
# Rev. 1.0.1.0  06-Dec-01 YC   Initial Passport 0.13 tech file with specific TSMC process values.
# ----------------------------------------------------
#
*/

Technology	{
		name				= "cb13l4_10_tsmc_TLU"
		dielectric			= 3.73e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 1000
		gridResolution			= 5
		unitVoltageName			= "V"
		voltagePrecision		= 1000
		unitCurrentName			= "mA"
		currentPrecision		= 1000
		unitPowerName			= "pw"
		powerPrecision			= 1000
		unitResistanceName		= "kohm"
		resistancePrecision		= 10000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 10000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
}

Color		43 {
		name				= "GreenBrown"
		rgbDefined			= 1
		redIntensity			= 212
		greenIntensity			= 80
		blueIntensity			= 0
}

Color		45 {
		name				= "ltGrey"
		rgbDefined			= 1
		redIntensity			= 200
		greenIntensity			= 200
		blueIntensity			= 200
}

Color		50 {
		name				= "ltPink"
		rgbDefined			= 1
		redIntensity			= 255
		greenIntensity			= 190
		blueIntensity			= 175
}

Color		59 {
		name				= "ltGreen"
		rgbDefined			= 1
		redIntensity			= 0
		greenIntensity			= 240
		blueIntensity			= 110
}

Color		52 {
		name				= "dkGreen"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 175
		blueIntensity			= 100
}

Color		54 {
		name				= "mdGrey"
		rgbDefined			= 1
		redIntensity			= 150
		greenIntensity			= 150
		blueIntensity			= 150
}

Color		55 {
		name				= "PinkGrey"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 150
		blueIntensity			= 180
}

Color		57 {
		name				= "GreenGrey"
		rgbDefined			= 1
		redIntensity			= 150
		greenIntensity			= 200
		blueIntensity			= 150
}

Stipple		"rectangleX" {
		width			= 16
		height			= 16
		pattern			= (1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1)
}

Stipple		"cross" {
		width			= 16
		height			= 16
		pattern			= (1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 
					   0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
					   0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 
					   1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1) 
}

Stipple		"hidot" {
		width			= 16
		height			= 16
		pattern			= (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1) 
}

Stipple		"rhidot" {
		width			= 16
		height			= 16
		pattern			= (0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 
					   0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 
					   1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0) 
}

Tile		"unit" {
		width				= 0.41
		height				= 3.69
}

Layer		"NWELL" {
		layerNumber			= 1
		maskName			= "nwell"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltPink"
		lineStyle			= "solid"
		pattern				= "hidot"
		pitch				= 0
		defaultWidth			= 0.63
		minWidth			= 0.63
		minSpacing			= 0.63
}

Layer		"NIMPL" {
		layerNumber			= 2
		maskName			= "CNI"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "GreenGrey"
		lineStyle			= "solid"
		pattern				= "hidot"
		pitch				= 0
		defaultWidth			= 0.31
		minWidth			= 0.31
		minSpacing			= 0.31
}

Layer		"PIMPL" {
		layerNumber			= 3
		maskName			= "CPI"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "PinkGrey"
		lineStyle			= "solid"
		pattern				= "hidot"
		pitch				= 0
		defaultWidth			= 0.31
		minWidth			= 0.31
		minSpacing			= 0.31
}

Layer		"NDIF" {
		layerNumber			= 4
		maskName			= "CND"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "dkGreen"
		lineStyle			= "solid"
		pattern				= "hidot"
		pitch				= 0
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.21
}

Layer		"PDIF" {
		layerNumber			= 5
		maskName			= "CPD"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "mdGrey"
		lineStyle			= "solid"
		pattern				= "cross"
		pitch				= 0
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.21
}

Layer		"TGO" {
		layerNumber			= 6
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"SDI" {
		layerNumber			= 7
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"SBT" {
		layerNumber			= 8
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PAD" {
		layerNumber			= 9
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CGO" {
		layerNumber			= 10
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CP" {
		layerNumber			= 11
		maskName			= "poly"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		unitMinThickness		= 0.18
		unitNomThickness		= 0.18
		unitMaxThickness		= 0.18
		defaultWidth			= 0.13
		minWidth			= 0.13
		minSpacing			= 0.2
}

Layer		"TOPMETAL" {
		layerNumber			= 12
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltPink"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CONT" {
		layerNumber			= 13
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltGrey"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.2
		maxCurrDensity			= 699000
}

Layer		"METAL" {
		layerNumber			= 14
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "slash"
		/* pitch has to stay at 0.41 to match standard cell height. 
		   Ignore Astro 2004.06 warnings about making this 0.42  */
		pitch				= 0.41
		defaultWidth			= 0.16
		minWidth			= 0.16
		minSpacing			= 0.18
		fatContactThreshold		= 1.07
		maxCurrDensity			= 14.3
		unitMinResistance		= 4.5e-05
		unitNomResistance		= 6.4e-05
		unitMaxResistance		= 8.3e-05
		unitMinCapacitance		= 3.86e-05
		unitNomCapacitance		= 4.19e-05
		unitMaxCapacitance		= 4.59e-05
		unitMinSideWallCap		= 7.72e-05
		unitNomSideWallCap		= 8.72e-05
		unitMaxSideWallCap		= 0.0001003
		unitMinHeightFromSub		= 0.38
		unitNomHeightFromSub		= 0.4
		unitMaxHeightFromSub		= 0.42
		unitMinThickness		= 0.26
		unitNomThickness		= 0.26
		unitMaxThickness		= 0.26
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.3,1.76,10)
		fatTblSpacing			= (0.18,0.22,0.26,0.6,
						   0.22,0.22,0.26,0.6,
						   0.26,0.26,0.26,0.6,
						   0.6,0.6,0.6,0.6)
		minArea				= 0.122
}

Layer		"METALPORT" {
		layerNumber			= 15
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VIA" {
		layerNumber			= 17
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "mdGrey"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.41
		defaultWidth			= 0.19
		minWidth			= 0.19
		minSpacing			= 0.22
		maxCurrDensity			= 551000
}

Layer		"METAL2" {
		layerNumber			= 18
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0.41
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.21
		fatContactThreshold		= 1.07
		maxCurrDensity			= 19.3
		unitMinResistance		= 2.6e-05
		unitNomResistance		= 3.7e-05
		unitMaxResistance		= 4.8e-05
		unitMinCapacitance		= 2.08e-05
		unitNomCapacitance		= 2.23e-05
		unitMaxCapacitance		= 2.39e-05
		unitMinSideWallCap		= 6.48e-05
		unitNomSideWallCap		= 6.79e-05
		unitMaxSideWallCap		= 7.13e-05
		unitMinHeightFromSub		= 0.6875
		unitNomHeightFromSub		= 0.71
		unitMaxHeightFromSub		= 0.7325
		unitMinThickness		= 0.35
		unitNomThickness		= 0.35
		unitMaxThickness		= 0.35
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.39,2,10)
		fatTblSpacing			= (0.21,0.24,0.28,0.6,
						   0.24,0.24,0.28,0.6,
						   0.28,0.28,0.28,0.6,
						   0.6,0.6,0.6,0.6)
		minArea				= 0.144
}

Layer		"METAL2PORT" {
		layerNumber			= 19
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VIA2" {
		layerNumber			= 21
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "rhidot"
		pitch				= 0.41
		defaultWidth			= 0.19
		minWidth			= 0.19
		minSpacing			= 0.22
		maxCurrDensity			= 551000
}

Layer		"METAL3" {
		layerNumber			= 22
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.515
		defaultWidth			= 0.2
		minWidth			= 0.2
		minSpacing			= 0.21
		fatContactThreshold		= 1.07
		maxCurrDensity			= 19.3
		unitMinResistance		= 2.6e-05
		unitNomResistance		= 3.7e-05
		unitMaxResistance		= 4.8e-05
		unitMinCapacitance		= 1.31e-05
		unitNomCapacitance		= 1.39e-05
		unitMaxCapacitance		= 1.48e-05
		unitMinSideWallCap		= 6.71e-05
		unitNomSideWallCap		= 7.01e-05
		unitMaxSideWallCap		= 7.34e-05
		unitMinHeightFromSub		= 1.085
		unitNomHeightFromSub		= 1.11
		unitMaxHeightFromSub		= 1.135
		unitMinThickness		= 0.35
		unitNomThickness		= 0.35
		unitMaxThickness		= 0.35
		fatTblDimension			= 4
		fatTblThreshold			= (0,0.39,2,10)
		fatTblSpacing			= (0.21,0.24,0.28,0.6,
						   0.24,0.24,0.28,0.6,
						   0.28,0.28,0.28,0.6,
						   0.6,0.6,0.6,0.6)
		minArea				= 0.144
}

Layer		"METAL3PORT" {
		layerNumber			= 23
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"VIA3" {
		layerNumber			= 25
		maskName			= "via3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltGrey"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0.8
		defaultWidth			= 0.4
		minWidth			= 0.4
		minSpacing			= 0.4
		maxCurrDensity			= 446000
}

Layer		"METAL4" {
		layerNumber			= 26
		maskName			= "metal4"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "green"
		lineStyle			= "solid"
		pattern				= "slash"
		pitch				= 0.97
		defaultWidth			= 0.44
		minWidth			= 0.44
		minSpacing			= 0.46
		fatContactThreshold		= 1.74
		maxCurrDensity			= 49.5
		unitMinResistance		= 1.3e-05
		unitNomResistance		= 1.9e-05
		unitMaxResistance		= 2.5e-05
		unitMinCapacitance		= 9.7e-06
		unitNomCapacitance		= 1.02e-05
		unitMaxCapacitance		= 1.07e-05
		unitMinSideWallCap		= 6.01e-05
		unitNomSideWallCap		= 6.23e-05
		unitMaxSideWallCap		= 6.46e-05
		unitMinHeightFromSub		= 1.4825
		unitNomHeightFromSub		= 1.51
		unitMaxHeightFromSub		= 1.5375
		unitMinThickness		= 0.9
		unitNomThickness		= 0.9
		unitMaxThickness		= 0.9
		fatTblDimension			= 3
		fatTblThreshold			= (0,1.6,10)
		fatTblSpacing			= (0.46,0.5,0.6,
						   0.5,0.5,0.6,
						   0.6,0.6,0.6)
		minArea				= 0.562
}

Layer		"METAL4PORT" {
		layerNumber			= 27
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "orange"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TEXT" {
		layerNumber			= 57
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DRCERRORS" {
		layerNumber			= 60
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"AB" {
		layerNumber			= 63
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"IORL" {
		layerNumber			= 70
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltGrey"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"NWDP" {
		layerNumber			= 71
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "ltGrey"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"RESISTOR" {
		layerNumber			= 72
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"MCAP" {
		layerNumber			= 73
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DSTR" {
		layerNumber			= 74
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "wave"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CSRC" {
		layerNumber			= 75
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"DCTY" {
		layerNumber			= 76
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CORE" {
		layerNumber			= 77
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"EXCL" {
		layerNumber			= 78
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PASSPORT" {
		layerNumber			= 79
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"SCRB" {
		layerNumber			= 80
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "backSlash"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CHGE" {
		layerNumber			= 81
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CTOOL" {
		layerNumber			= 82
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "wave"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"TAP" {
		layerNumber			= 83
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"PRODUM" {
		layerNumber			= 130
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"ESD2MY" {
		layerNumber			= 146
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"VIA12A" {
		contactCodeNumber		= 1
		cutLayer			= "VIA"
		lowerLayer			= "METAL"
		upperLayer			= "METAL2"
		isDefaultContact		= 1
		cutWidth			= 0.19
		cutHeight			= 0.19
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.065
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.22
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.0004
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.0016
}

ContactCode	"VIA12B" {
		contactCodeNumber		= 2
		cutLayer			= "VIA"
		lowerLayer			= "METAL"
		upperLayer			= "METAL2"
		cutWidth			= 0.19
		cutHeight			= 0.19
		upperLayerEncWidth		= 0.005
		upperLayerEncHeight		= 0.05
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.065
		minCutSpacing			= 0.22
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.0004
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.0016
}

ContactCode	"VIA23" {
		contactCodeNumber		= 3
		cutLayer			= "VIA2"
		lowerLayer			= "METAL2"
		upperLayer			= "METAL3"
		isDefaultContact		= 1
		cutWidth			= 0.19
		cutHeight			= 0.19
		upperLayerEncWidth		= 0.05
		upperLayerEncHeight		= 0.005
		lowerLayerEncWidth		= 0.005
		lowerLayerEncHeight		= 0.065
		minCutSpacing			= 0.22
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.0004
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.0016
}

ContactCode	"VIA34" {
		contactCodeNumber		= 4
		cutLayer			= "VIA3"
		lowerLayer			= "METAL3"
		upperLayer			= "METAL4"
		isDefaultContact		= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.09
		upperLayerEncHeight		= 0.09
		lowerLayerEncWidth		= 0.05
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.4
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.00028
		unitNomResistance		= 0.0004
		unitMaxResistance		= 0.00052
}

ContactCode	"VIA12f" {
		contactCodeNumber		= 9
		cutLayer			= "VIA"
		lowerLayer			= "METAL"
		upperLayer			= "METAL2"
		isFatContact			= 1
		cutWidth			= 0.19
		cutHeight			= 0.19
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.29
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.0004
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.0016
}

ContactCode	"VIA23f" {
		contactCodeNumber		= 10
		cutLayer			= "VIA2"
		lowerLayer			= "METAL2"
		upperLayer			= "METAL3"
		isFatContact			= 1
		cutWidth			= 0.19
		cutHeight			= 0.19
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.29
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.0004
		unitNomResistance		= 0.001
		unitMaxResistance		= 0.0016
}

ContactCode	"VIA34f" {
		contactCodeNumber		= 11
		cutLayer			= "VIA3"
		lowerLayer			= "METAL3"
		upperLayer			= "METAL4"
		isFatContact			= 1
		cutWidth			= 0.4
		cutHeight			= 0.4
		upperLayerEncWidth		= 0.2
		upperLayerEncHeight		= 0.2
		lowerLayerEncWidth		= 0.2
		lowerLayerEncHeight		= 0.2
		minCutSpacing			= 0.54
		maxNumRowsNonTurning		= 4
		unitMinResistance		= 0.00028
		unitNomResistance		= 0.0004
		unitMaxResistance		= 0.00052
}

ContactCode     "poly_con" {
                contactCodeNumber               = 12
                cutLayer                        = "CONT"
                lowerLayer                      = "CP"
                upperLayer                      = "METAL"
                isFatContact                    = 1
                upperLayerEncWidth              = 0.20
                upperLayerEncHeight             = 0.20
                lowerLayerEncWidth              = 0.20
                lowerLayerEncHeight             = 0.20
                cutWidth                        = 0.40
                cutHeight                       = 0.40
                minCutSpacing                   = 0.54
                unitMinResistance               = 2.8e-4
                unitNomResistance               = 4e-4
                unitMaxResistance               = 5.2e-4
                maxNumRowsNonTurning            = 4
}

FringeCap	1 {
		layer1				= "METAL2"
		layer2				= "METAL"
		minFringeCap			= 7.5e-05
		nomFringeCap			= 7.96e-05
		maxFringeCap			= 8.47e-05
}

FringeCap	2 {
		layer1				= "METAL3"
		layer2				= "METAL"
		minFringeCap			= 2.65e-05
		nomFringeCap			= 2.77e-05
		maxFringeCap			= 2.9e-05
}

FringeCap	3 {
		layer1				= "METAL4"
		layer2				= "METAL"
		minFringeCap			= 1.51e-05
		nomFringeCap			= 1.57e-05
		maxFringeCap			= 1.64e-05
}

FringeCap	4 {
		layer1				= "METAL3"
		layer2				= "METAL2"
		minFringeCap			= 7.42e-05
		nomFringeCap			= 7.87e-05
		maxFringeCap			= 8.38e-05
}

FringeCap	5 {
		layer1				= "METAL4"
		layer2				= "METAL2"
		minFringeCap			= 2.4e-05
		nomFringeCap			= 2.51e-05
		maxFringeCap			= 2.63e-05
}

FringeCap	6 {
		layer1				= "METAL4"
		layer2				= "METAL3"
		minFringeCap			= 5.63e-05
		nomFringeCap			= 5.97e-05
		maxFringeCap			= 6.35e-05
}

FringeCap	7 {
		layer1				= "METAL"
		layer2				= "METAL"
		minFringeCap			= 8.79e-05
		nomFringeCap			= 8.54e-05
		maxFringeCap			= 8.26e-05
}

FringeCap	8 {
		layer1				= "METAL2"
		layer2				= "METAL2"
		minFringeCap			= 8.96e-05
		nomFringeCap			= 8.83e-05
		maxFringeCap			= 8.69e-05
}

FringeCap	9 {
		layer1				= "METAL3"
		layer2				= "METAL3"
		minFringeCap			= 9.36e-05
		nomFringeCap			= 9.24e-05
		maxFringeCap			= 9.1e-05
}

FringeCap	10 {
		layer1				= "METAL4"
		layer2				= "METAL4"
		minFringeCap			= 0.0001143
		nomFringeCap			= 0.0001137
		maxFringeCap			= 0.000113
}

DesignRule	{
		layer1				= "via1Blockage"
		layer2				= "VIA"
		minSpacing			= 0
}

DesignRule	{
		layer1				= "via2Blockage"
		layer2				= "VIA2"
		minSpacing			= 0
}

PRRule		{
		rowSpacingTopTop		= 0.96
		rowSpacingTopBot		= 0.48
		rowSpacingBotBot		= 0.96
		abuttableTopTop			= 1
		abuttableTopBot			= 0
		abuttableBotBot			= 1
}

CapTable	"poly_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.67778e-05, 3.75e-05, 4.46002e-05, 4.88508e-05, 5.12452e-05, 5.255e-05, 5.3246e-05, 5.36153e-05, 5.38077e-05, 5.39107e-05, 5.39648e-05, 5.39948e-05, 5.40109e-05, 5.40203e-05, 5.4026e-05, 5.40297e-05, 
			3.68327e-05, 4.80823e-05, 5.55043e-05, 5.99394e-05, 6.24382e-05, 6.37984e-05, 6.45263e-05, 6.491e-05, 6.51127e-05, 6.52194e-05, 6.52777e-05, 6.53084e-05, 6.53255e-05, 6.53356e-05, 6.53419e-05, 6.53459e-05, 
			4.72603e-05, 5.86833e-05, 6.61946e-05, 7.06808e-05, 7.3207e-05, 7.45832e-05, 7.53194e-05, 7.5707e-05, 7.59132e-05, 7.60223e-05, 7.60801e-05, 7.61114e-05, 7.61292e-05, 7.61397e-05, 7.61464e-05, 7.6149e-05, 
			5.78513e-05, 6.9325e-05, 7.68605e-05, 8.13565e-05, 8.38883e-05, 8.52679e-05, 8.60047e-05, 8.63945e-05, 8.66e-05, 8.67109e-05, 8.67681e-05, 8.68006e-05, 8.68187e-05, 8.68298e-05, 8.68368e-05, 8.6842e-05, 
			6.84485e-05, 7.99048e-05, 8.74214e-05, 9.18987e-05, 9.44224e-05, 9.57937e-05, 9.65284e-05, 9.69163e-05, 9.7124e-05, 9.72321e-05, 9.72901e-05, 9.73226e-05, 9.73417e-05, 9.73532e-05, 9.73607e-05, 9.73663e-05
		)
}

CapTable	"poly_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.27858e-05, 4.56732e-05, 5.41306e-05, 5.91657e-05, 6.19937e-05, 6.35304e-05, 6.43521e-05, 6.47877e-05, 6.50189e-05, 6.5139e-05, 6.52014e-05, 6.52306e-05, 6.52449e-05, 6.52512e-05, 6.52541e-05, 6.52554e-05, 
			4.53003e-05, 5.87953e-05, 6.76199e-05, 7.28635e-05, 7.58101e-05, 7.74121e-05, 7.82697e-05, 7.87261e-05, 7.89648e-05, 7.90897e-05, 7.91513e-05, 7.91824e-05, 7.91965e-05, 7.92027e-05, 7.92056e-05, 7.9207e-05, 
			5.82393e-05, 7.19233e-05, 8.08396e-05, 8.61416e-05, 8.91186e-05, 9.07404e-05, 9.16068e-05, 9.20684e-05, 9.23093e-05, 9.24316e-05, 9.24952e-05, 9.25253e-05, 9.25387e-05, 9.25448e-05, 9.25477e-05, 9.25521e-05, 
			7.13631e-05, 8.50902e-05, 9.40383e-05, 9.93429e-05, 0.000102329, 0.000103953, 0.000104824, 0.000105283, 0.000105524, 0.000105645, 0.000105707, 0.000105735, 0.000105748, 0.000105754, 0.000105757, 0.000105758, 
			8.44815e-05, 9.81898e-05, 0.000107101, 0.000112393, 0.000115367, 0.00011699, 0.000117853, 0.00011831, 0.000118544, 0.000118667, 0.000118727, 0.000118754, 0.000118766, 0.000118772, 0.000118775, 0.000118776
		)
}

CapTable	"poly_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000103689, 4.59218e-05, 2.31212e-05, 1.19695e-05, 6.2421e-06, 3.26164e-06, 1.70489e-06, 8.9002e-07, 4.63394e-07, 2.40318e-07, 1.23751e-07, 6.3636e-08, 3.31558e-08, 1.74627e-08, 8.894e-09, 3.90452e-09, 
			0.00010808, 4.79014e-05, 2.41078e-05, 1.24811e-05, 6.50966e-06, 3.40246e-06, 1.77804e-06, 9.27934e-07, 4.83452e-07, 2.50928e-07, 1.30051e-07, 6.82338e-08, 3.7035e-08, 2.06906e-08, 1.15431e-08, 6.08826e-09, 
			0.000109114, 4.83894e-05, 2.43628e-05, 1.26136e-05, 6.58036e-06, 3.43836e-06, 1.79676e-06, 9.3763e-07, 4.88476e-07, 2.54078e-07, 1.32725e-07, 7.1324e-08, 4.01508e-08, 2.3462e-08, 1.38895e-08, 7.92334e-09, 
			0.000109226, 4.84728e-05, 2.43962e-05, 1.26346e-05, 6.58974e-06, 3.44308e-06, 1.79827e-06, 9.38542e-07, 4.88966e-07, 2.5505e-07, 1.34859e-07, 7.43754e-08, 4.32706e-08, 2.62182e-08, 1.61994e-08, 9.95508e-09, 
			0.00010856, 4.82314e-05, 2.42836e-05, 1.25803e-05, 6.56156e-06, 3.42728e-06, 1.7906e-06, 9.34714e-07, 4.88002e-07, 2.55928e-07, 1.3786e-07, 7.84402e-08, 4.73206e-08, 2.98394e-08, 1.93337e-08, 1.26546e-08
		)
}

CapTable	"poly_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.96956e-05, 4.07417e-05, 4.89677e-05, 5.49251e-05, 5.91687e-05, 6.21595e-05, 6.4263e-05, 6.57383e-05, 6.67724e-05, 6.75e-05, 6.80067e-05, 6.83651e-05, 6.8617e-05, 6.87939e-05, 6.89175e-05, 6.90052e-05, 
			3.91225e-05, 5.07354e-05, 5.94949e-05, 6.59036e-05, 7.0502e-05, 7.37679e-05, 7.60741e-05, 7.76986e-05, 7.88425e-05, 7.96434e-05, 8.02092e-05, 8.06067e-05, 8.08861e-05, 8.10829e-05, 8.122e-05, 8.1316e-05, 
			4.90023e-05, 6.08781e-05, 6.99161e-05, 7.65698e-05, 8.13691e-05, 8.4791e-05, 8.72149e-05, 8.89279e-05, 9.01305e-05, 9.09802e-05, 9.15793e-05, 9.19998e-05, 9.22959e-05, 9.25043e-05, 9.26494e-05, 9.27519e-05, 
			5.91449e-05, 7.11793e-05, 8.03873e-05, 8.71917e-05, 9.21166e-05, 9.5637e-05, 9.81354e-05, 9.99021e-05, 0.00010115, 0.000102029, 0.000102649, 0.000103084, 0.000103392, 0.000103607, 0.000103757, 0.000103863, 
			6.94026e-05, 8.15149e-05, 9.0819e-05, 9.77079e-05, 0.000102705, 0.000106282, 0.000108825, 0.000110627, 0.000111899, 0.000112797, 0.000113429, 0.000113872, 0.000114186, 0.000114405, 0.00011456, 0.000114666
		)
}

CapTable	"poly_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.26952e-05, 1.74895e-05, 2.11565e-05, 2.38719e-05, 2.58318e-05, 2.72301e-05, 2.82165e-05, 2.89109e-05, 2.94011e-05, 2.97437e-05, 2.99886e-05, 3.01584e-05, 3.02774e-05, 3.03605e-05, 3.04189e-05, 3.04575e-05, 
			1.64291e-05, 2.14594e-05, 2.53983e-05, 2.83452e-05, 3.04922e-05, 3.20311e-05, 3.31254e-05, 3.39002e-05, 3.44463e-05, 3.4835e-05, 3.51062e-05, 3.52968e-05, 3.54302e-05, 3.55231e-05, 3.55881e-05, 3.56318e-05, 
			2.03063e-05, 2.54989e-05, 2.95913e-05, 3.26718e-05, 3.49279e-05, 3.65521e-05, 3.77105e-05, 3.85327e-05, 3.91173e-05, 3.95278e-05, 3.98167e-05, 4.00196e-05, 4.01613e-05, 4.02597e-05, 4.03283e-05, 4.03739e-05, 
			2.43129e-05, 2.96057e-05, 3.38007e-05, 3.69667e-05, 3.92922e-05, 4.09735e-05, 4.21766e-05, 4.30299e-05, 4.36345e-05, 4.40612e-05, 4.43615e-05, 4.45732e-05, 4.47187e-05, 4.48214e-05, 4.48906e-05, 4.49369e-05, 
			2.8387e-05, 3.37491e-05, 3.80028e-05, 4.12211e-05, 4.35901e-05, 4.53057e-05, 4.65316e-05, 4.74043e-05, 4.80224e-05, 4.84585e-05, 4.87652e-05, 4.89813e-05, 4.91304e-05, 4.92331e-05, 4.93012e-05, 4.93475e-05
		)
}

CapTable	"poly_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000114787, 5.96898e-05, 3.68258e-05, 2.4051e-05, 1.61345e-05, 1.09884e-05, 7.55146e-06, 5.2192e-06, 3.61798e-06, 2.51102e-06, 1.74119e-06, 1.20434e-06, 8.29298e-07, 5.67278e-07, 3.84458e-07, 2.57612e-07, 
			0.000123405, 6.49682e-05, 4.03418e-05, 2.64742e-05, 1.78268e-05, 1.2175e-05, 8.38452e-06, 5.8022e-06, 4.02516e-06, 2.79364e-06, 1.93656e-06, 1.33847e-06, 9.2068e-07, 6.29036e-07, 4.25882e-07, 2.85232e-07, 
			0.000127699, 6.7822e-05, 4.23206e-05, 2.78664e-05, 1.8811e-05, 1.28699e-05, 8.87364e-06, 6.14442e-06, 4.26316e-06, 2.95796e-06, 2.04898e-06, 1.41464e-06, 9.71762e-07, 6.62988e-07, 4.4835e-07, 3.00214e-07, 
			0.000130202, 6.9585e-05, 4.3557e-05, 2.87466e-05, 1.94372e-05, 1.33125e-05, 9.18396e-06, 6.36098e-06, 4.4122e-06, 3.05944e-06, 2.11716e-06, 1.45952e-06, 1.00118e-06, 6.81838e-07, 4.60666e-07, 3.0842e-07, 
			0.000131221, 7.0501e-05, 4.42442e-05, 2.9253e-05, 1.98009e-05, 1.3571e-05, 9.36618e-06, 6.4869e-06, 4.49838e-06, 3.11764e-06, 2.15596e-06, 1.48517e-06, 1.018e-06, 6.93414e-07, 4.6915e-07, 3.15058e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.18932e-05, 4.33463e-05, 5.18461e-05, 5.80918e-05, 6.26751e-05, 6.60519e-05, 6.85586e-05, 7.04357e-05, 7.18544e-05, 7.29331e-05, 7.37598e-05, 7.43972e-05, 7.48897e-05, 7.52686e-05, 7.55665e-05, 7.5798e-05, 
			4.14242e-05, 5.3292e-05, 6.2279e-05, 6.8989e-05, 7.39808e-05, 7.77043e-05, 8.04978e-05, 8.26093e-05, 8.42158e-05, 8.54455e-05, 8.63939e-05, 8.71254e-05, 8.76894e-05, 8.81326e-05, 8.84763e-05, 8.87441e-05, 
			5.12709e-05, 6.33101e-05, 7.25536e-05, 7.95371e-05, 8.47853e-05, 8.87344e-05, 9.17229e-05, 9.39942e-05, 9.57325e-05, 9.70685e-05, 9.81005e-05, 9.88955e-05, 9.952e-05, 0.000100004, 0.000100381, 0.000100675, 
			6.13059e-05, 7.34377e-05, 8.28533e-05, 9.00273e-05, 9.54597e-05, 9.95781e-05, 0.000102708, 0.000105101, 0.000106938, 0.000108356, 0.000109448, 0.000110301, 0.000110965, 0.000111482, 0.000111885, 0.000112198, 
			7.13942e-05, 8.3575e-05, 9.31015e-05, 0.000100405, 0.000105971, 0.000110208, 0.000113445, 0.000115927, 0.000117837, 0.000119311, 0.000120458, 0.000121348, 0.000122042, 0.000122583, 0.000123006, 0.000123335
		)
}

CapTable	"poly_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			7.88718e-06, 1.07513e-05, 1.29427e-05, 1.45892e-05, 1.58155e-05, 1.6729e-05, 1.74128e-05, 1.79283e-05, 1.8318e-05, 1.86168e-05, 1.88458e-05, 1.9022e-05, 1.91585e-05, 1.92678e-05, 1.93493e-05, 1.94127e-05, 
			1.0022e-05, 1.29878e-05, 1.53176e-05, 1.70998e-05, 1.84484e-05, 1.94671e-05, 2.02391e-05, 2.08242e-05, 2.12733e-05, 2.16181e-05, 2.18829e-05, 2.20886e-05, 2.22526e-05, 2.23743e-05, 2.24713e-05, 2.25457e-05, 
			1.22127e-05, 1.52347e-05, 1.76456e-05, 1.95131e-05, 2.09427e-05, 2.20328e-05, 2.28633e-05, 2.35002e-05, 2.39888e-05, 2.43662e-05, 2.4659e-05, 2.48907e-05, 2.50635e-05, 2.52005e-05, 2.53071e-05, 2.539e-05, 
			1.44407e-05, 1.75023e-05, 1.99719e-05, 2.19029e-05, 2.33925e-05, 2.45341e-05, 2.54119e-05, 2.60854e-05, 2.66059e-05, 2.70088e-05, 2.73259e-05, 2.75669e-05, 2.77552e-05, 2.79022e-05, 2.80166e-05, 2.81061e-05, 
			1.66896e-05, 1.97808e-05, 2.22931e-05, 2.42696e-05, 2.58005e-05, 2.69833e-05, 2.78927e-05, 2.85955e-05, 2.914e-05, 2.95654e-05, 2.98909e-05, 3.01465e-05, 3.03441e-05, 3.04986e-05, 3.06187e-05, 3.07126e-05
		)
}

CapTable	"poly_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000116715, 6.25224e-05, 4.02672e-05, 2.778e-05, 1.9884e-05, 1.45686e-05, 1.08467e-05, 8.16784e-06, 6.20042e-06, 4.73274e-06, 3.62502e-06, 2.7812e-06, 2.13436e-06, 1.63572e-06, 1.25033e-06, 9.5164e-07, 
			0.000126339, 6.88942e-05, 4.48874e-05, 3.12612e-05, 2.25518e-05, 1.66296e-05, 1.24451e-05, 9.4105e-06, 7.16686e-06, 5.48444e-06, 4.20924e-06, 3.23502e-06, 2.48596e-06, 1.90811e-06, 1.46039e-06, 1.11321e-06, 
			0.000131711, 7.28362e-05, 4.79028e-05, 3.36028e-05, 2.4382e-05, 1.80628e-05, 1.35678e-05, 1.02886e-05, 7.85266e-06, 6.01932e-06, 4.62548e-06, 3.55784e-06, 2.73648e-06, 2.10126e-06, 1.60897e-06, 1.22684e-06, 
			0.000135311, 7.5648e-05, 5.00998e-05, 3.53358e-05, 2.57498e-05, 1.91408e-05, 1.4415e-05, 1.09525e-05, 8.3717e-06, 6.4236e-06, 4.93912e-06, 3.80074e-06, 2.92326e-06, 2.2443e-06, 1.71783e-06, 1.30896e-06, 
			0.000137395, 7.75412e-05, 5.16534e-05, 3.65944e-05, 2.67564e-05, 1.99408e-05, 1.5048e-05, 1.14516e-05, 8.76336e-06, 6.72994e-06, 5.17862e-06, 3.98676e-06, 3.06746e-06, 2.3557e-06, 1.80361e-06, 1.3748e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.32838e-05, 4.50468e-05, 5.37365e-05, 6.0121e-05, 6.4826e-05, 6.83238e-05, 7.09561e-05, 7.29615e-05, 7.45098e-05, 7.57189e-05, 7.66732e-05, 7.7434e-05, 7.80439e-05, 7.85362e-05, 7.89369e-05, 7.92641e-05, 
			4.29894e-05, 5.50975e-05, 6.42365e-05, 7.10665e-05, 7.61771e-05, 8.00309e-05, 8.29672e-05, 8.5231e-05, 8.69953e-05, 8.83849e-05, 8.94901e-05, 9.03741e-05, 9.10877e-05, 9.16671e-05, 9.21391e-05, 9.2526e-05, 
			5.29536e-05, 6.51687e-05, 7.45251e-05, 8.16124e-05, 8.69795e-05, 9.10705e-05, 9.4218e-05, 9.66658e-05, 9.85875e-05, 0.000100111, 0.000101328, 0.000102307, 0.000103101, 0.000103747, 0.000104276, 0.000104709, 
			6.30487e-05, 7.52983e-05, 8.47959e-05, 9.20617e-05, 9.76173e-05, 0.000101887, 0.000105198, 0.00010779, 0.000109837, 0.000111468, 0.000112776, 0.000113834, 0.000114692, 0.000115394, 0.000115969, 0.00011644, 
			7.3156e-05, 8.5406e-05, 9.49915e-05, 0.000102381, 0.000108075, 0.000112482, 0.000115919, 0.000118624, 0.000120771, 0.000122487, 0.00012387, 0.00012499, 0.000125903, 0.000126649, 0.000127262, 0.000127767
		)
}

CapTable	"poly_C_TOP_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.52102e-06, 7.48738e-06, 8.98535e-06, 1.011e-05, 1.09517e-05, 1.15845e-05, 1.20638e-05, 1.24324e-05, 1.2718e-05, 1.2942e-05, 1.31193e-05, 1.32596e-05, 1.33733e-05, 1.34657e-05, 1.35402e-05, 1.3601e-05, 
			6.96864e-06, 8.98913e-06, 1.05703e-05, 1.17815e-05, 1.27039e-05, 1.34076e-05, 1.39496e-05, 1.43703e-05, 1.47e-05, 1.49609e-05, 1.51677e-05, 1.53342e-05, 1.54695e-05, 1.55784e-05, 1.56677e-05, 1.57408e-05, 
			8.44145e-06, 1.04853e-05, 1.21129e-05, 1.33776e-05, 1.43525e-05, 1.51061e-05, 1.56921e-05, 1.61509e-05, 1.65132e-05, 1.68003e-05, 1.7031e-05, 1.72177e-05, 1.73686e-05, 1.74915e-05, 1.75925e-05, 1.76753e-05, 
			9.92651e-06, 1.19849e-05, 1.36449e-05, 1.49481e-05, 1.59637e-05, 1.67557e-05, 1.73757e-05, 1.78649e-05, 1.82519e-05, 1.85621e-05, 1.88124e-05, 1.90143e-05, 1.91788e-05, 1.93132e-05, 1.94234e-05, 1.95154e-05, 
			1.14166e-05, 1.34848e-05, 1.51673e-05, 1.64997e-05, 1.75462e-05, 1.83669e-05, 1.90137e-05, 1.95254e-05, 1.99339e-05, 2.02627e-05, 2.05274e-05, 2.07423e-05, 2.09177e-05, 2.10623e-05, 2.11808e-05, 2.12778e-05
		)
}

CapTable	"poly_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00011745, 6.36328e-05, 4.16742e-05, 2.93912e-05, 2.1613e-05, 1.63445e-05, 1.26155e-05, 9.8903e-06, 7.8489e-06, 6.28952e-06, 5.0792e-06, 4.12788e-06, 3.37194e-06, 2.766e-06, 2.27668e-06, 1.87934e-06, 
			0.000127439, 7.04274e-05, 4.67572e-05, 3.3357e-05, 2.4772e-05, 1.88905e-05, 1.46832e-05, 1.15787e-05, 9.23374e-06, 7.4292e-06, 6.02022e-06, 4.90666e-06, 4.01778e-06, 3.3025e-06, 2.72318e-06, 2.25118e-06, 
			0.000133223, 7.4821e-05, 5.0247e-05, 3.618e-05, 2.7078e-05, 2.07844e-05, 1.62439e-05, 1.28683e-05, 1.03013e-05, 8.315e-06, 6.75616e-06, 5.51888e-06, 4.52756e-06, 3.72766e-06, 3.0778e-06, 2.54736e-06, 
			0.000137273, 7.81098e-05, 5.29312e-05, 3.83972e-05, 2.8916e-05, 2.23108e-05, 1.75129e-05, 1.39241e-05, 1.1181e-05, 9.0482e-06, 7.36772e-06, 6.02914e-06, 4.9539e-06, 4.08372e-06, 3.37554e-06, 2.79624e-06, 
			0.000139826, 8.04862e-05, 5.49672e-05, 4.0125e-05, 3.03702e-05, 2.3532e-05, 1.8537e-05, 1.47826e-05, 1.19001e-05, 9.65046e-06, 7.8719e-06, 6.4517e-06, 5.30768e-06, 4.38006e-06, 3.62372e-06, 3.00412e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.75462e-05, 5.04978e-05, 5.99918e-05, 6.69323e-05, 7.20344e-05, 7.58314e-05, 7.87013e-05, 8.09073e-05, 8.26315e-05, 8.40011e-05, 8.51052e-05, 8.60077e-05, 8.67548e-05, 8.73807e-05, 8.79108e-05, 8.83645e-05, 
			4.81292e-05, 6.1346e-05, 7.12492e-05, 7.86146e-05, 8.4116e-05, 8.82722e-05, 9.14574e-05, 9.39369e-05, 9.58972e-05, 9.74702e-05, 9.87491e-05, 9.98035e-05, 0.000100682, 0.000101423, 0.000102054, 0.000102597, 
			5.88934e-05, 7.21178e-05, 8.21792e-05, 8.9765e-05, 9.5505e-05, 9.98932e-05, 0.000103293, 0.000105967, 0.000108101, 0.000109826, 0.000111241, 0.000112414, 0.000113398, 0.000114233, 0.000114946, 0.000115563, 
			6.96994e-05, 8.28536e-05, 9.29878e-05, 0.00010071, 0.000106615, 0.000111173, 0.000114737, 0.000117563, 0.000119836, 0.000121687, 0.000123214, 0.000124487, 0.000125562, 0.000126478, 0.000127265, 0.000127949, 
			8.04568e-05, 9.35214e-05, 0.000103683, 0.000111494, 0.000117519, 0.000122206, 0.000125899, 0.000128848, 0.000131234, 0.000133189, 0.000134811, 0.000136171, 0.000137323, 0.000138309, 0.00013916, 0.000139902
		)
}

CapTable	"poly_C_LATERAL_15MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000118403, 6.50992e-05, 4.35812e-05, 3.1649e-05, 2.41348e-05, 1.90543e-05, 1.54508e-05, 1.28008e-05, 1.07948e-05, 9.23924e-06, 8.00804e-06, 7.01604e-06, 6.2042e-06, 5.53044e-06, 4.96416e-06, 4.48268e-06, 
			0.000128807, 7.2391e-05, 4.92348e-05, 3.62454e-05, 2.797e-05, 2.23088e-05, 1.82476e-05, 1.52291e-05, 1.29218e-05, 1.11168e-05, 9.67686e-06, 8.50854e-06, 7.54636e-06, 6.74334e-06, 6.06502e-06, 5.48576e-06, 
			0.000135072, 7.73372e-05, 5.33368e-05, 3.9727e-05, 3.0968e-05, 2.49168e-05, 2.05346e-05, 1.72487e-05, 1.47165e-05, 1.2721e-05, 1.11182e-05, 9.80984e-06, 8.72628e-06, 7.81734e-06, 7.04602e-06, 6.38454e-06, 
			0.000139669, 8.12394e-05, 5.66872e-05, 4.2649e-05, 3.35372e-05, 2.71898e-05, 2.25568e-05, 1.90568e-05, 1.63411e-05, 1.41871e-05, 1.2447e-05, 1.10186e-05, 9.82966e-06, 8.8277e-06, 7.97374e-06, 7.2385e-06, 
			0.000142805, 8.42506e-05, 5.93964e-05, 4.50762e-05, 3.57064e-05, 2.9133e-05, 2.43026e-05, 2.06306e-05, 1.77644e-05, 1.54787e-05, 1.36228e-05, 1.20923e-05, 1.08129e-05, 9.73034e-06, 8.80432e-06, 8.00436e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.43928e-05, 1.97214e-05, 2.43215e-05, 2.81345e-05, 3.11885e-05, 3.35761e-05, 3.5402e-05, 3.67793e-05, 3.78109e-05, 3.85889e-05, 3.91427e-05, 3.95503e-05, 3.98544e-05, 4.00768e-05, 4.02387e-05, 4.03569e-05, 
			1.95568e-05, 2.51284e-05, 2.99804e-05, 3.40152e-05, 3.72562e-05, 3.97881e-05, 4.17311e-05, 4.32011e-05, 4.43111e-05, 4.51203e-05, 4.57265e-05, 4.61741e-05, 4.65027e-05, 4.67439e-05, 4.69199e-05, 4.70496e-05, 
			2.50268e-05, 3.07454e-05, 3.57332e-05, 3.98831e-05, 4.32127e-05, 4.58193e-05, 4.78204e-05, 4.93435e-05, 5.04751e-05, 5.13225e-05, 5.1951e-05, 5.24148e-05, 5.2757e-05, 5.30064e-05, 5.31912e-05, 5.33258e-05, 
			3.06623e-05, 3.64725e-05, 4.15349e-05, 4.57415e-05, 4.91195e-05, 5.17747e-05, 5.38026e-05, 5.53407e-05, 5.65003e-05, 5.73636e-05, 5.80052e-05, 5.8479e-05, 5.8829e-05, 5.9087e-05, 5.92752e-05, 5.94155e-05, 
			3.64099e-05, 4.22608e-05, 4.73577e-05, 5.1592e-05, 5.4997e-05, 5.76522e-05, 5.97011e-05, 6.12564e-05, 6.24253e-05, 6.32978e-05, 6.39469e-05, 6.44255e-05, 6.47807e-05, 6.50397e-05, 6.52343e-05, 6.53767e-05
		)
}

CapTable	"metal1_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.69812e-05, 3.72574e-05, 4.58693e-05, 5.28257e-05, 5.82899e-05, 6.24979e-05, 6.56829e-05, 6.80701e-05, 6.9837e-05, 7.11284e-05, 7.20993e-05, 7.28076e-05, 7.33204e-05, 7.36934e-05, 7.39642e-05, 7.41606e-05, 
			3.74246e-05, 4.81004e-05, 5.70826e-05, 6.43576e-05, 7.00872e-05, 7.45077e-05, 7.78573e-05, 8.03688e-05, 8.22342e-05, 8.36219e-05, 8.46393e-05, 8.53842e-05, 8.5928e-05, 8.6324e-05, 8.66119e-05, 8.68212e-05, 
			4.84432e-05, 5.93006e-05, 6.84452e-05, 7.58621e-05, 8.17073e-05, 8.62159e-05, 8.96437e-05, 9.22092e-05, 9.41284e-05, 9.55451e-05, 9.65868e-05, 9.73496e-05, 9.79066e-05, 9.83162e-05, 9.86115e-05, 9.88267e-05, 
			5.97565e-05, 7.06889e-05, 7.99101e-05, 8.73847e-05, 9.32823e-05, 9.78219e-05, 0.00010129, 0.000103893, 0.000105829, 0.000107261, 0.000108314, 0.000109086, 0.000109649, 0.00011006, 0.000110364, 0.000110579, 
			7.12029e-05, 8.2155e-05, 9.13909e-05, 9.88822e-05, 0.000104789, 0.000109355, 0.000112828, 0.000115437, 0.000117379, 0.000118816, 0.000119872, 0.000120647, 0.000121213, 0.000121632, 0.000121929, 0.00012215
		)
}

CapTable	"metal1_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000184437, 9.80182e-05, 6.29052e-05, 4.29908e-05, 3.02026e-05, 2.1507e-05, 1.54331e-05, 1.11206e-05, 8.03612e-06, 5.8177e-06, 4.21502e-06, 3.05706e-06, 2.21916e-06, 1.61283e-06, 1.17405e-06, 8.56498e-07, 
			0.000192614, 0.000103234, 6.6466e-05, 4.55082e-05, 3.20146e-05, 2.28302e-05, 1.64026e-05, 1.18341e-05, 8.5577e-06, 6.19884e-06, 4.49222e-06, 3.2567e-06, 2.36134e-06, 1.71215e-06, 1.24117e-06, 8.99232e-07, 
			0.000195628, 0.000105448, 6.80386e-05, 4.66378e-05, 3.2841e-05, 2.34388e-05, 1.68479e-05, 1.21613e-05, 8.79748e-06, 6.37044e-06, 4.61522e-06, 3.3436e-06, 2.42138e-06, 1.7514e-06, 1.26528e-06, 9.11484e-07, 
			0.000196507, 0.000106366, 6.8734e-05, 4.71648e-05, 3.32322e-05, 2.37314e-05, 1.70644e-05, 1.23183e-05, 8.90874e-06, 6.4484e-06, 4.66782e-06, 3.37696e-06, 2.43998e-06, 1.75904e-06, 1.26276e-06, 9.01524e-07, 
			0.000195828, 0.000106419, 6.88754e-05, 4.72948e-05, 3.3343e-05, 2.38238e-05, 1.71319e-05, 1.23636e-05, 8.93772e-06, 6.46416e-06, 4.67306e-06, 3.37354e-06, 2.4293e-06, 1.74127e-06, 1.24069e-06, 8.74324e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.63537e-05, 2.16946e-05, 2.63925e-05, 3.05509e-05, 3.41992e-05, 3.73653e-05, 4.00777e-05, 4.2377e-05, 4.43072e-05, 4.59171e-05, 4.72474e-05, 4.83441e-05, 4.92414e-05, 4.99751e-05, 5.0569e-05, 5.10608e-05, 
			2.11325e-05, 2.66521e-05, 3.16388e-05, 3.60905e-05, 4.00108e-05, 4.34134e-05, 4.63309e-05, 4.88031e-05, 5.08822e-05, 5.26122e-05, 5.40463e-05, 5.52271e-05, 5.61944e-05, 5.69822e-05, 5.76282e-05, 5.81507e-05, 
			2.62528e-05, 3.19358e-05, 3.71092e-05, 4.1741e-05, 4.58186e-05, 4.93601e-05, 5.23942e-05, 5.49647e-05, 5.71263e-05, 5.89266e-05, 6.04179e-05, 6.16459e-05, 6.26558e-05, 6.34745e-05, 6.4144e-05, 6.46877e-05, 
			3.16341e-05, 3.74368e-05, 4.27349e-05, 4.74778e-05, 5.16533e-05, 5.52774e-05, 5.83796e-05, 6.10113e-05, 6.32207e-05, 6.50628e-05, 6.6585e-05, 6.7845e-05, 6.88731e-05, 6.97142e-05, 7.03989e-05, 7.09553e-05, 
			3.72056e-05, 4.30857e-05, 4.84599e-05, 5.32702e-05, 5.75033e-05, 6.1172e-05, 6.43169e-05, 6.69799e-05, 6.92179e-05, 7.10815e-05, 7.26256e-05, 7.38975e-05, 7.49392e-05, 7.57911e-05, 7.6485e-05, 7.70478e-05
		)
}

CapTable	"metal1_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.19885e-05, 1.6008e-05, 1.95557e-05, 2.26983e-05, 2.54622e-05, 2.78606e-05, 2.99193e-05, 3.16655e-05, 3.31329e-05, 3.43563e-05, 3.53692e-05, 3.62025e-05, 3.68867e-05, 3.74429e-05, 3.78996e-05, 3.82591e-05, 
			1.54345e-05, 1.95633e-05, 2.33134e-05, 2.66723e-05, 2.96336e-05, 3.22102e-05, 3.44207e-05, 3.62981e-05, 3.78748e-05, 3.91913e-05, 4.02809e-05, 4.11787e-05, 4.19145e-05, 4.25167e-05, 4.30008e-05, 4.33985e-05, 
			1.91242e-05, 2.3359e-05, 2.72436e-05, 3.07324e-05, 3.38126e-05, 3.64907e-05, 3.87882e-05, 4.07409e-05, 4.23796e-05, 4.37475e-05, 4.48804e-05, 4.58134e-05, 4.65729e-05, 4.71989e-05, 4.77082e-05, 4.8122e-05, 
			2.30009e-05, 2.73182e-05, 3.12923e-05, 3.48644e-05, 3.80165e-05, 4.07578e-05, 4.31092e-05, 4.51041e-05, 4.67813e-05, 4.81803e-05, 4.93388e-05, 5.02883e-05, 5.10696e-05, 5.17093e-05, 5.22303e-05, 5.26537e-05, 
			2.70134e-05, 3.13881e-05, 3.54195e-05, 3.90424e-05, 4.22371e-05, 4.50136e-05, 4.73949e-05, 4.94151e-05, 5.11123e-05, 5.2526e-05, 5.36946e-05, 5.46609e-05, 5.54534e-05, 5.6101e-05, 5.66286e-05, 5.70574e-05
		)
}

CapTable	"metal1_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000193465, 0.000109767, 7.61498e-05, 5.67128e-05, 4.36486e-05, 3.41822e-05, 2.7036e-05, 2.15126e-05, 1.71832e-05, 1.37578e-05, 1.10356e-05, 8.86272e-06, 7.12518e-06, 5.73396e-06, 4.61798e-06, 3.72404e-06, 
			0.000205152, 0.000117852, 8.20478e-05, 6.11552e-05, 4.70726e-05, 3.68614e-05, 2.91544e-05, 2.31988e-05, 1.853e-05, 1.48385e-05, 1.19028e-05, 9.56022e-06, 7.68608e-06, 6.1851e-06, 4.98196e-06, 4.01576e-06, 
			0.000210876, 0.000122149, 8.52502e-05, 6.35906e-05, 4.89598e-05, 3.83422e-05, 3.03276e-05, 2.41334e-05, 1.92781e-05, 1.54389e-05, 1.23857e-05, 9.94868e-06, 8.00034e-06, 6.43856e-06, 5.18582e-06, 4.18028e-06, 
			0.000213704, 0.000124525, 8.70658e-05, 6.49948e-05, 5.00542e-05, 3.92038e-05, 3.10112e-05, 2.46786e-05, 1.9715e-05, 1.57889e-05, 1.26672e-05, 1.01757e-05, 8.18228e-06, 6.5845e-06, 5.30282e-06, 4.274e-06, 
			0.00021439, 0.000125582, 8.79626e-05, 6.57074e-05, 5.06206e-05, 3.96614e-05, 3.13752e-05, 2.497e-05, 1.99478e-05, 1.59765e-05, 1.28178e-05, 1.02956e-05, 8.27736e-06, 6.65994e-06, 5.36242e-06, 4.32082e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.79187e-05, 2.34856e-05, 2.83011e-05, 3.25433e-05, 3.62904e-05, 3.95857e-05, 4.24703e-05, 4.49832e-05, 4.71625e-05, 4.90445e-05, 5.06648e-05, 5.2059e-05, 5.32538e-05, 5.42771e-05, 5.51546e-05, 5.59052e-05, 
			2.27026e-05, 2.83388e-05, 3.33829e-05, 3.78892e-05, 4.18942e-05, 4.54326e-05, 4.85411e-05, 5.12556e-05, 5.36145e-05, 5.5656e-05, 5.74196e-05, 5.89396e-05, 6.02439e-05, 6.13654e-05, 6.23257e-05, 6.31498e-05, 
			2.77508e-05, 3.34757e-05, 3.86649e-05, 4.33319e-05, 4.74967e-05, 5.11874e-05, 5.44335e-05, 5.72752e-05, 5.97489e-05, 6.18939e-05, 6.37504e-05, 6.53497e-05, 6.67281e-05, 6.79107e-05, 6.89278e-05, 6.97996e-05, 
			3.30022e-05, 3.87962e-05, 4.40844e-05, 4.88578e-05, 5.3129e-05, 5.69187e-05, 6.02587e-05, 6.31867e-05, 6.57396e-05, 6.79555e-05, 6.98757e-05, 7.15343e-05, 7.29612e-05, 7.41911e-05, 7.52461e-05, 7.61528e-05, 
			3.84096e-05, 4.42453e-05, 4.95993e-05, 5.44438e-05, 5.87847e-05, 6.26413e-05, 6.6045e-05, 6.90345e-05, 7.16404e-05, 7.39078e-05, 7.58713e-05, 7.75702e-05, 7.90346e-05, 8.02945e-05, 8.13777e-05, 8.23094e-05
		)
}

CapTable	"metal1_C_TOP_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			7.77272e-06, 1.02308e-05, 1.23709e-05, 1.42623e-05, 1.5937e-05, 1.74161e-05, 1.87162e-05, 1.98513e-05, 2.08378e-05, 2.16928e-05, 2.24316e-05, 2.30655e-05, 2.36113e-05, 2.40801e-05, 2.44807e-05, 2.48238e-05, 
			9.7694e-06, 1.22358e-05, 1.44607e-05, 1.64606e-05, 1.82494e-05, 1.9837e-05, 2.12365e-05, 2.24628e-05, 2.35331e-05, 2.44628e-05, 2.52666e-05, 2.59591e-05, 2.65576e-05, 2.70704e-05, 2.75118e-05, 2.78898e-05, 
			1.18632e-05, 1.43505e-05, 1.66333e-05, 1.87035e-05, 2.05629e-05, 2.2218e-05, 2.36823e-05, 2.49676e-05, 2.60917e-05, 2.70693e-05, 2.79156e-05, 2.86491e-05, 2.92801e-05, 2.98249e-05, 3.02921e-05, 3.06937e-05, 
			1.40308e-05, 1.65418e-05, 1.88668e-05, 2.09848e-05, 2.28918e-05, 2.45951e-05, 2.61045e-05, 2.74307e-05, 2.85918e-05, 2.96041e-05, 3.04824e-05, 3.12424e-05, 3.18991e-05, 3.2464e-05, 3.29508e-05, 3.33699e-05, 
			1.62584e-05, 1.87895e-05, 2.11431e-05, 2.32944e-05, 2.52367e-05, 2.69729e-05, 2.85128e-05, 2.98679e-05, 3.10572e-05, 3.20932e-05, 3.2994e-05, 3.37731e-05, 3.44472e-05, 3.50293e-05, 3.55303e-05, 3.59614e-05
		)
}

CapTable	"metal1_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000195531, 0.000112682, 7.9803e-05, 6.09614e-05, 4.83326e-05, 3.91428e-05, 3.21266e-05, 2.66078e-05, 2.21802e-05, 1.85794e-05, 1.56223e-05, 1.31762e-05, 1.11415e-05, 9.44132e-06, 8.01496e-06, 6.81526e-06, 
			0.000208224, 0.000121825, 8.67844e-05, 6.64842e-05, 5.28114e-05, 4.28354e-05, 3.52064e-05, 2.91966e-05, 2.43684e-05, 2.04362e-05, 1.72024e-05, 1.45232e-05, 1.22912e-05, 1.04234e-05, 8.8551e-06, 7.53388e-06, 
			0.000215014, 0.000127192, 9.10328e-05, 6.99226e-05, 5.56464e-05, 4.52026e-05, 3.72002e-05, 3.08862e-05, 2.58064e-05, 2.16638e-05, 1.8252e-05, 1.54222e-05, 1.30618e-05, 1.10844e-05, 9.42208e-06, 8.02066e-06, 
			0.000218916, 0.000130604, 9.38308e-05, 7.22444e-05, 5.75882e-05, 4.68412e-05, 3.85918e-05, 3.20736e-05, 2.68226e-05, 2.25354e-05, 1.89999e-05, 1.60643e-05, 1.36137e-05, 1.15589e-05, 9.83006e-06, 8.37126e-06, 
			0.000220634, 0.000132631, 9.56256e-05, 7.37788e-05, 5.89016e-05, 4.79718e-05, 3.95622e-05, 3.29076e-05, 2.75404e-05, 2.3153e-05, 1.95327e-05, 1.65237e-05, 1.40092e-05, 1.18992e-05, 1.0123e-05, 8.62318e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.34372e-05, 3.04144e-05, 3.63276e-05, 4.14598e-05, 4.59497e-05, 4.9885e-05, 5.33322e-05, 5.63495e-05, 5.89898e-05, 6.13007e-05, 6.33253e-05, 6.51018e-05, 6.66636e-05, 6.80399e-05, 6.92562e-05, 7.03342e-05, 
			2.9077e-05, 3.59548e-05, 4.19992e-05, 4.73338e-05, 5.20424e-05, 5.61926e-05, 5.98456e-05, 6.30575e-05, 6.58808e-05, 6.83632e-05, 7.05479e-05, 7.24735e-05, 7.41745e-05, 7.56803e-05, 7.70171e-05, 7.8207e-05, 
			3.4881e-05, 4.17044e-05, 4.7799e-05, 5.32272e-05, 5.80456e-05, 6.23118e-05, 6.60828e-05, 6.9412e-05, 7.23504e-05, 7.49436e-05, 7.72358e-05, 7.92628e-05, 8.10616e-05, 8.26602e-05, 8.40845e-05, 8.53572e-05, 
			4.0756e-05, 4.75222e-05, 5.36208e-05, 5.90834e-05, 6.39556e-05, 6.82874e-05, 7.21298e-05, 7.55352e-05, 7.85512e-05, 8.12228e-05, 8.35922e-05, 8.5697e-05, 8.75696e-05, 8.92404e-05, 9.0734e-05, 9.20732e-05, 
			4.6659e-05, 5.33498e-05, 5.9424e-05, 6.48902e-05, 6.97832e-05, 7.41482e-05, 7.80348e-05, 8.149e-05, 8.45608e-05, 8.72904e-05, 8.97202e-05, 9.18836e-05, 9.38164e-05, 9.55446e-05, 9.70956e-05, 9.84905e-05
		)
}

CapTable	"metal1_C_LATERAL_24MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000197299, 0.000115158, 8.29534e-05, 6.47322e-05, 5.26554e-05, 4.39394e-05, 3.73166e-05, 3.21112e-05, 2.79214e-05, 2.4489e-05, 2.16378e-05, 1.92425e-05, 1.7211e-05, 1.54736e-05, 1.39765e-05, 1.26779e-05, 
			0.00021083, 0.000125239, 9.09688e-05, 7.13742e-05, 5.83246e-05, 4.88804e-05, 4.16884e-05, 3.60234e-05, 3.14524e-05, 2.76976e-05, 2.45694e-05, 2.19332e-05, 1.96896e-05, 1.77642e-05, 1.60993e-05, 1.46501e-05, 
			0.000218576, 0.000131643, 9.6325e-05, 7.59778e-05, 6.23694e-05, 5.24892e-05, 4.49452e-05, 3.8987e-05, 3.41666e-05, 3.01954e-05, 2.68772e-05, 2.40722e-05, 2.16774e-05, 1.96158e-05, 1.78275e-05, 1.62658e-05, 
			0.000223552, 0.000136194, 0.000100315, 7.95326e-05, 6.55724e-05, 5.54066e-05, 4.76232e-05, 4.14598e-05, 3.64598e-05, 3.23292e-05, 2.88678e-05, 2.5933e-05, 2.34204e-05, 2.12506e-05, 1.9363e-05, 1.77098e-05, 
			0.000226442, 0.000139443, 0.00010337, 8.23528e-05, 6.81868e-05, 5.78428e-05, 4.98952e-05, 4.3585e-05, 3.84522e-05, 3.42006e-05, 3.06278e-05, 2.75904e-05, 2.49826e-05, 2.27244e-05, 2.07544e-05, 1.90245e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.41382e-05, 4.7308e-05, 5.74556e-05, 6.47359e-05, 6.97007e-05, 7.29683e-05, 7.50708e-05, 7.63997e-05, 7.72367e-05, 7.77603e-05, 7.80855e-05, 7.82873e-05, 7.84117e-05, 7.84868e-05, 7.85337e-05, 7.85622e-05, 
			4.96556e-05, 6.32766e-05, 7.37041e-05, 8.11647e-05, 8.62456e-05, 8.95978e-05, 9.1735e-05, 9.3099e-05, 9.39553e-05, 9.44878e-05, 9.48208e-05, 9.50265e-05, 9.51514e-05, 9.5229e-05, 9.52763e-05, 9.53052e-05, 
			6.57043e-05, 7.94442e-05, 8.99301e-05, 9.74224e-05, 0.000102515, 0.000105869, 0.000108027, 0.000109393, 0.00011025, 0.000110787, 0.000111118, 0.000111321, 0.000111447, 0.000111522, 0.000111569, 0.0001116, 
			8.18815e-05, 9.56221e-05, 0.000106097, 0.000113574, 0.000118663, 0.000122011, 0.000124162, 0.000125525, 0.000126379, 0.000126909, 0.000127238, 0.000127441, 0.000127565, 0.000127641, 0.000127689, 0.000127718, 
			9.80581e-05, 0.00011175, 0.00012217, 0.000129618, 0.00013468, 0.000138, 0.00014014, 0.000141494, 0.000142341, 0.000142869, 0.000143194, 0.000143394, 0.000143517, 0.000143594, 0.000143641, 0.000143669
		)
}

CapTable	"metal1_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.51582e-05, 3.5471e-05, 4.36762e-05, 4.96599e-05, 5.37743e-05, 5.6497e-05, 5.8253e-05, 5.93688e-05, 6.00703e-05, 6.0506e-05, 6.07772e-05, 6.09436e-05, 6.10435e-05, 6.11031e-05, 6.11342e-05, 6.11499e-05, 
			3.62008e-05, 4.68858e-05, 5.53247e-05, 6.14643e-05, 6.56832e-05, 6.84643e-05, 7.02737e-05, 7.14173e-05, 7.21328e-05, 7.25826e-05, 7.28558e-05, 7.30231e-05, 7.31242e-05, 7.31795e-05, 7.32085e-05, 7.32229e-05, 
			4.76767e-05, 5.84596e-05, 6.69509e-05, 7.31214e-05, 7.73516e-05, 8.01527e-05, 8.1956e-05, 8.31022e-05, 8.38239e-05, 8.42665e-05, 8.45394e-05, 8.47061e-05, 8.48009e-05, 8.48529e-05, 8.48796e-05, 8.48899e-05, 
			5.92891e-05, 7.00845e-05, 7.85812e-05, 8.47325e-05, 8.89602e-05, 9.17506e-05, 9.35517e-05, 9.46928e-05, 9.54063e-05, 9.58505e-05, 9.61185e-05, 9.62777e-05, 9.63684e-05, 9.64172e-05, 9.64385e-05, 9.64508e-05, 
			7.09321e-05, 8.1696e-05, 9.01623e-05, 9.62959e-05, 0.000100494, 0.000103271, 0.000105055, 0.000106185, 0.000106895, 0.000107328, 0.000107591, 0.000107745, 0.000107831, 0.000107873, 0.000107896, 0.000107912
		)
}

CapTable	"metal1_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000172931, 8.3834e-05, 4.80242e-05, 2.88352e-05, 1.7592e-05, 1.07907e-05, 6.62518e-06, 4.06046e-06, 2.47804e-06, 1.50169e-06, 8.9928e-07, 5.29132e-07, 3.03788e-07, 1.69111e-07, 9.1075e-08, 4.68814e-08, 
			0.000176739, 8.57896e-05, 4.91372e-05, 2.9488e-05, 1.79802e-05, 1.10199e-05, 6.75532e-06, 4.13066e-06, 2.51292e-06, 1.51462e-06, 9.01352e-07, 5.26438e-07, 3.00414e-07, 1.67498e-07, 9.1194e-08, 4.7944e-08, 
			0.000176831, 8.59522e-05, 4.9229e-05, 2.95292e-05, 1.79959e-05, 1.10169e-05, 6.74358e-06, 4.11334e-06, 2.49226e-06, 1.49582e-06, 8.85146e-07, 5.14424e-07, 2.93468e-07, 1.64683e-07, 9.10386e-08, 4.92064e-08, 
			0.000175878, 8.56194e-05, 4.9037e-05, 2.94136e-05, 1.79123e-05, 1.09555e-05, 6.6947e-06, 4.07468e-06, 2.4629e-06, 1.4734e-06, 8.703e-07, 5.06492e-07, 2.91038e-07, 1.66185e-07, 9.4782e-08, 5.34074e-08, 
			0.000174096, 8.49364e-05, 4.86646e-05, 2.91736e-05, 1.77574e-05, 1.08575e-05, 6.62704e-06, 4.02752e-06, 2.43044e-06, 1.45338e-06, 8.59336e-07, 5.02806e-07, 2.93012e-07, 1.71893e-07, 1.01589e-07, 6.00516e-08
		)
}

CapTable	"metal1_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.66271e-05, 4.99115e-05, 6.04315e-05, 6.85594e-05, 7.47411e-05, 7.93913e-05, 8.28682e-05, 8.54591e-05, 8.73854e-05, 8.88196e-05, 8.98847e-05, 9.06783e-05, 9.12661e-05, 9.17051e-05, 9.20318e-05, 9.22756e-05, 
			5.16638e-05, 6.5302e-05, 7.61782e-05, 8.46449e-05, 9.11273e-05, 9.60339e-05, 9.97196e-05, 0.000102478, 0.000104538, 0.000106074, 0.00010722, 0.000108071, 0.000108707, 0.000109181, 0.000109535, 0.000109798, 
			6.72329e-05, 8.09949e-05, 9.20269e-05, 0.000100658, 0.000107292, 0.000112335, 0.000116133, 0.000118984, 0.000121116, 0.000122711, 0.000123901, 0.000124789, 0.000125452, 0.000125946, 0.000126314, 0.00012659, 
			8.30018e-05, 9.68054e-05, 0.000107919, 0.000116639, 0.00012336, 0.00012848, 0.000132346, 0.000135252, 0.000137429, 0.000139058, 0.000140274, 0.000141184, 0.000141863, 0.00014237, 0.000142748, 0.000143032, 
			9.88698e-05, 0.00011266, 0.000123801, 0.000132564, 0.000139329, 0.000144484, 0.000148389, 0.000151323, 0.000153524, 0.000155173, 0.000156407, 0.000157328, 0.000158017, 0.000158531, 0.000158915, 0.000159203
		)
}

CapTable	"metal1_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.05843e-05, 1.46501e-05, 1.80805e-05, 2.08398e-05, 2.29915e-05, 2.46383e-05, 2.58837e-05, 2.68174e-05, 2.75165e-05, 2.80374e-05, 2.84271e-05, 2.87152e-05, 2.89336e-05, 2.90948e-05, 2.92148e-05, 2.93035e-05, 
			1.44438e-05, 1.86208e-05, 2.21934e-05, 2.50927e-05, 2.73709e-05, 2.91237e-05, 3.04585e-05, 3.14645e-05, 3.22195e-05, 3.27861e-05, 3.32062e-05, 3.35258e-05, 3.37619e-05, 3.39379e-05, 3.40683e-05, 3.41661e-05, 
			1.84477e-05, 2.26937e-05, 2.63457e-05, 2.93222e-05, 3.16682e-05, 3.34793e-05, 3.48642e-05, 3.59103e-05, 3.67007e-05, 3.72902e-05, 3.77331e-05, 3.80643e-05, 3.83107e-05, 3.84964e-05, 3.86331e-05, 3.87358e-05, 
			2.25404e-05, 2.68326e-05, 3.05312e-05, 3.35527e-05, 3.59418e-05, 3.77909e-05, 3.92054e-05, 4.02763e-05, 4.10849e-05, 4.16917e-05, 4.21466e-05, 4.24858e-05, 4.27401e-05, 4.29301e-05, 4.30718e-05, 4.31774e-05, 
			2.66954e-05, 3.10152e-05, 3.47431e-05, 3.77907e-05, 4.02013e-05, 4.20699e-05, 4.34975e-05, 4.45863e-05, 4.54049e-05, 4.60203e-05, 4.64805e-05, 4.68259e-05, 4.70842e-05, 4.72771e-05, 4.7421e-05, 4.75283e-05
		)
}

CapTable	"metal1_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000181151, 9.47124e-05, 6.011e-05, 4.08628e-05, 2.87134e-05, 2.05604e-05, 1.49011e-05, 1.08905e-05, 8.0081e-06, 5.91602e-06, 4.3872e-06, 3.26454e-06, 2.43634e-06, 1.82407e-06, 1.37042e-06, 1.03393e-06, 
			0.000188671, 9.97612e-05, 6.37394e-05, 4.35454e-05, 3.07248e-05, 2.20784e-05, 1.60489e-05, 1.17587e-05, 8.66472e-06, 6.41314e-06, 4.7644e-06, 3.55034e-06, 2.65394e-06, 1.99026e-06, 1.49814e-06, 1.13253e-06, 
			0.000191681, 0.000102203, 6.56124e-05, 4.49808e-05, 3.18298e-05, 2.2927e-05, 1.66994e-05, 1.22566e-05, 9.0453e-06, 6.70432e-06, 4.987e-06, 3.72154e-06, 2.78626e-06, 2.09282e-06, 1.57851e-06, 1.19617e-06, 
			0.000192863, 0.00010349, 6.66656e-05, 4.58242e-05, 3.24902e-05, 2.3441e-05, 1.70977e-05, 1.25645e-05, 9.28308e-06, 6.88796e-06, 5.12908e-06, 3.83222e-06, 2.8726e-06, 2.16112e-06, 1.63277e-06, 1.23996e-06, 
			0.00019259, 0.00010394, 6.71518e-05, 4.6242e-05, 3.28366e-05, 2.37284e-05, 1.73261e-05, 1.27436e-05, 9.42384e-06, 6.99844e-06, 5.21646e-06, 3.90116e-06, 2.92766e-06, 2.20556e-06, 1.66909e-06, 1.27009e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.84825e-05, 5.21173e-05, 6.28506e-05, 7.11588e-05, 7.75353e-05, 8.24258e-05, 8.61828e-05, 8.90791e-05, 9.13254e-05, 9.30786e-05, 9.44568e-05, 9.55455e-05, 9.64098e-05, 9.71009e-05, 9.76556e-05, 9.81028e-05, 
			5.36691e-05, 6.75108e-05, 7.85171e-05, 8.71308e-05, 9.38193e-05, 9.90008e-05, 0.000103018, 0.000106144, 0.000108587, 0.000110511, 0.00011203, 0.000113236, 0.0001142, 0.000114974, 0.000115597, 0.000116099, 
			6.92423e-05, 8.3099e-05, 9.42102e-05, 0.00010298, 0.000109844, 0.000115201, 0.000119385, 0.000122661, 0.000125239, 0.000127275, 0.000128893, 0.000130184, 0.00013122, 0.000132051, 0.000132718, 0.000133267, 
			8.49174e-05, 9.87441e-05, 0.000109908, 0.000118776, 0.000125759, 0.00013124, 0.000135544, 0.000138932, 0.000141606, 0.000143729, 0.00014542, 0.000146774, 0.000147862, 0.000148741, 0.000149448, 0.000150025, 
			0.000100625, 0.000114393, 0.000125578, 0.000134509, 0.000141571, 0.000147138, 0.000151528, 0.000154995, 0.000157742, 0.000159929, 0.000161676, 0.000163075, 0.000164206, 0.000165116, 0.000165855, 0.000166456
		)
}

CapTable	"metal1_C_TOP_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.61432e-06, 9.08572e-06, 1.11516e-05, 1.2811e-05, 1.41255e-05, 1.51494e-05, 1.59465e-05, 1.6568e-05, 1.70539e-05, 1.74355e-05, 1.77355e-05, 1.79732e-05, 1.81639e-05, 1.83159e-05, 1.84384e-05, 1.85371e-05, 
			8.89388e-06, 1.1385e-05, 1.35117e-05, 1.52488e-05, 1.66371e-05, 1.77334e-05, 1.85965e-05, 1.92752e-05, 1.98111e-05, 2.0233e-05, 2.05687e-05, 2.08376e-05, 2.10528e-05, 2.12251e-05, 2.13649e-05, 2.148e-05, 
			1.12137e-05, 1.37162e-05, 1.58738e-05, 1.76537e-05, 1.90895e-05, 2.02328e-05, 2.11389e-05, 2.18559e-05, 2.24235e-05, 2.28768e-05, 2.32374e-05, 2.35267e-05, 2.37591e-05, 2.39477e-05, 2.41061e-05, 2.42255e-05, 
			1.35538e-05, 1.60637e-05, 1.82451e-05, 2.00566e-05, 2.15257e-05, 2.27027e-05, 2.36389e-05, 2.43835e-05, 2.49777e-05, 2.54517e-05, 2.58317e-05, 2.61375e-05, 2.63839e-05, 2.65819e-05, 2.67474e-05, 2.68788e-05, 
			1.59111e-05, 1.84295e-05, 2.0628e-05, 2.2462e-05, 2.39557e-05, 2.51531e-05, 2.61118e-05, 2.68788e-05, 2.74914e-05, 2.79816e-05, 2.83749e-05, 2.86959e-05, 2.8949e-05, 2.91601e-05, 2.93289e-05, 2.94664e-05
		)
}

CapTable	"metal1_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000182767, 9.7113e-05, 6.31618e-05, 4.43652e-05, 3.24582e-05, 2.43678e-05, 1.86317e-05, 1.44449e-05, 1.13227e-05, 8.95486e-06, 7.13474e-06, 5.71928e-06, 4.6083e-06, 3.72916e-06, 3.02902e-06, 2.4681e-06, 
			0.000191271, 0.000103222, 6.78732e-05, 4.81084e-05, 3.54796e-05, 2.68258e-05, 2.06394e-05, 1.60887e-05, 1.26706e-05, 1.00614e-05, 8.0436e-06, 6.46636e-06, 5.22266e-06, 4.23458e-06, 3.44474e-06, 2.8101e-06, 
			0.000195354, 0.000106748, 7.0799e-05, 5.05372e-05, 3.7501e-05, 2.85066e-05, 2.2035e-05, 1.72466e-05, 1.36301e-05, 1.08558e-05, 8.70042e-06, 7.00942e-06, 5.67116e-06, 4.60486e-06, 3.75002e-06, 3.06242e-06, 
			0.000197621, 0.000109084, 7.28376e-05, 5.22848e-05, 3.89784e-05, 2.9749e-05, 2.30762e-05, 1.81159e-05, 1.43542e-05, 1.14573e-05, 9.19964e-06, 7.4227e-06, 6.0131e-06, 4.88742e-06, 3.98354e-06, 3.2546e-06, 
			0.000198391, 0.000110512, 7.4219e-05, 5.35078e-05, 4.0039e-05, 3.06628e-05, 2.38488e-05, 1.87652e-05, 1.48976e-05, 1.19105e-05, 9.57662e-06, 7.73524e-06, 6.272e-06, 5.10116e-06, 4.15984e-06, 3.3997e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.38278e-05, 5.92668e-05, 7.142e-05, 8.08382e-05, 8.81066e-05, 9.37294e-05, 9.81018e-05, 0.000101531, 0.000104245, 0.000106415, 0.000108164, 0.000109589, 0.000110758, 0.000111725, 0.00011253, 0.000113207, 
			6.02262e-05, 7.56714e-05, 8.79838e-05, 9.7654e-05, 0.000105214, 0.000111133, 0.000115791, 0.000119482, 0.000122434, 0.000124815, 0.000126751, 0.000128342, 0.000129656, 0.000130752, 0.000131671, 0.000132448, 
			7.68374e-05, 9.21454e-05, 0.000104467, 0.000114246, 0.000121966, 0.000128069, 0.000132914, 0.000136788, 0.00013991, 0.000142446, 0.000144525, 0.000146242, 0.000147672, 0.000148871, 0.000149882, 0.000150741, 
			9.3328e-05, 0.00010846, 0.000120739, 0.000130559, 0.000138373, 0.000144595, 0.000149571, 0.000153575, 0.000156823, 0.000159479, 0.000161668, 0.000163487, 0.00016501, 0.000166292, 0.000167381, 0.000168311, 
			0.000109668, 0.000124603, 0.000136809, 0.000146635, 0.000154498, 0.000160793, 0.00016586, 0.000169961, 0.000173305, 0.000176054, 0.000178331, 0.000180234, 0.000181833, 0.000183189, 0.000184346, 0.000185338
		)
}

CapTable	"metal1_C_LATERAL_14MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000183764, 9.85682e-05, 6.5029e-05, 4.65518e-05, 3.48604e-05, 2.68896e-05, 2.11932e-05, 1.69837e-05, 1.37926e-05, 1.13233e-05, 9.37956e-06, 7.82722e-06, 6.57198e-06, 5.546e-06, 4.69956e-06, 3.99554e-06, 
			0.000193069, 0.000105598, 7.07412e-05, 5.1346e-05, 3.89608e-05, 3.04376e-05, 2.42892e-05, 1.97046e-05, 1.61991e-05, 1.34641e-05, 1.12946e-05, 9.54912e-06, 8.12776e-06, 6.95806e-06, 5.98656e-06, 5.17312e-06, 
			0.00019808, 0.000110119, 7.47032e-05, 5.48312e-05, 4.20426e-05, 3.31714e-05, 2.67222e-05, 2.1877e-05, 1.81453e-05, 1.5214e-05, 1.28736e-05, 1.09789e-05, 9.4269e-06, 8.14238e-06, 7.06958e-06, 6.16642e-06, 
			0.000201404, 0.000113566, 7.7886e-05, 5.77392e-05, 4.4683e-05, 3.55688e-05, 2.89018e-05, 2.38626e-05, 1.99589e-05, 1.68749e-05, 1.43989e-05, 1.23838e-05, 1.07243e-05, 9.3436e-06, 8.1845e-06, 7.20358e-06, 
			0.00020333, 0.000116194, 8.04938e-05, 6.02e-05, 4.69806e-05, 3.7709e-05, 3.08826e-05, 2.56966e-05, 2.16586e-05, 1.84529e-05, 1.58666e-05, 1.37513e-05, 1.2001e-05, 1.05376e-05, 9.30306e-06, 8.25304e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.03616e-05, 1.41006e-05, 1.7303e-05, 1.9932e-05, 2.2033e-05, 2.36985e-05, 2.4988e-05, 2.59893e-05, 2.67603e-05, 2.73519e-05, 2.7863e-05, 2.81862e-05, 2.84359e-05, 2.86223e-05, 2.87794e-05, 2.88997e-05, 
			1.41969e-05, 1.80259e-05, 2.13532e-05, 2.41216e-05, 2.63696e-05, 2.81472e-05, 2.95423e-05, 3.06258e-05, 3.14646e-05, 3.2158e-05, 3.2632e-05, 3.30004e-05, 3.32809e-05, 3.35064e-05, 3.36769e-05, 3.38111e-05, 
			1.8133e-05, 2.20183e-05, 2.54422e-05, 2.83039e-05, 3.06314e-05, 3.24826e-05, 3.39386e-05, 3.50704e-05, 3.59888e-05, 3.66477e-05, 3.71514e-05, 3.75541e-05, 3.7864e-05, 3.80984e-05, 3.82812e-05, 3.84197e-05, 
			2.2153e-05, 2.61035e-05, 2.95792e-05, 3.25012e-05, 3.48782e-05, 3.67734e-05, 3.83167e-05, 3.94597e-05, 4.03462e-05, 4.10307e-05, 4.15709e-05, 4.19863e-05, 4.23048e-05, 4.25461e-05, 4.27347e-05, 4.28736e-05, 
			2.62584e-05, 3.02432e-05, 3.37632e-05, 3.67228e-05, 3.91326e-05, 4.1096e-05, 4.25944e-05, 4.37531e-05, 4.46761e-05, 4.53886e-05, 4.59385e-05, 4.6358e-05, 4.66815e-05, 4.69286e-05, 4.71183e-05, 4.72632e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.27778e-05, 4.4831e-05, 5.46464e-05, 6.23908e-05, 6.83922e-05, 7.30063e-05, 7.65302e-05, 7.92125e-05, 8.12587e-05, 8.28213e-05, 8.39522e-05, 8.48929e-05, 8.56099e-05, 8.61621e-05, 8.65726e-05, 8.68865e-05, 
			4.63713e-05, 5.86367e-05, 6.87106e-05, 7.6733e-05, 8.30172e-05, 8.78726e-05, 9.16063e-05, 9.44733e-05, 9.66704e-05, 9.83018e-05, 9.96196e-05, 0.000100619, 0.000101388, 0.000101969, 0.000102418, 0.000102753, 
			6.03722e-05, 7.26971e-05, 8.289e-05, 9.10679e-05, 9.74884e-05, 0.000102496, 0.000106354, 0.000109333, 0.000111571, 0.000113351, 0.00011471, 0.000115744, 0.000116536, 0.000117148, 0.000117607, 0.000117961, 
			7.4557e-05, 8.69153e-05, 9.71688e-05, 0.00010543, 0.000111952, 0.00011704, 0.00012093, 0.000123987, 0.000126349, 0.000128153, 0.000129534, 0.000130593, 0.000131405, 0.000132033, 0.000132501, 0.000132869, 
			8.89026e-05, 0.000101259, 0.000111564, 0.000119881, 0.000126473, 0.000131571, 0.00013557, 0.000138678, 0.000141041, 0.000142866, 0.000144267, 0.00014535, 0.000146173, 0.000146803, 0.000147283, 0.000147643
		)
}

CapTable	"metal2_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000187672, 9.86324e-05, 6.34666e-05, 4.39212e-05, 3.15048e-05, 2.30512e-05, 1.70928e-05, 1.27852e-05, 9.62398e-06, 7.27578e-06, 5.52278e-06, 4.19494e-06, 3.19024e-06, 2.4276e-06, 1.84798e-06, 1.40681e-06, 
			0.000195102, 0.000103937, 6.74412e-05, 4.69674e-05, 3.38352e-05, 2.48592e-05, 1.84874e-05, 1.38599e-05, 1.0448e-05, 7.91022e-06, 5.99738e-06, 4.5566e-06, 3.46408e-06, 2.63464e-06, 2.00314e-06, 1.52488e-06, 
			0.000198418, 0.00010676, 6.96558e-05, 4.86922e-05, 3.51882e-05, 2.59064e-05, 1.92994e-05, 1.44826e-05, 1.09302e-05, 8.2693e-06, 6.27364e-06, 4.76388e-06, 3.62004e-06, 2.7506e-06, 2.0928e-06, 1.59229e-06, 
			0.000199847, 0.00010828, 7.0925e-05, 4.97028e-05, 3.59878e-05, 2.65326e-05, 1.97833e-05, 1.48573e-05, 1.12058e-05, 8.4833e-06, 6.43212e-06, 4.88272e-06, 3.70924e-06, 2.81788e-06, 2.14428e-06, 1.63145e-06, 
			0.00020045, 0.000109178, 7.16998e-05, 5.03312e-05, 3.64724e-05, 2.6913e-05, 2.00776e-05, 1.50769e-05, 1.13799e-05, 8.61136e-06, 6.52846e-06, 4.95298e-06, 3.76254e-06, 2.8604e-06, 2.17668e-06, 1.65985e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.20097e-05, 1.57325e-05, 1.89815e-05, 2.18647e-05, 2.44331e-05, 2.67106e-05, 2.87202e-05, 3.0479e-05, 3.20113e-05, 3.3333e-05, 3.44713e-05, 3.54419e-05, 3.62709e-05, 3.69735e-05, 3.75672e-05, 3.80689e-05, 
			1.54371e-05, 1.91794e-05, 2.25689e-05, 2.56362e-05, 2.83939e-05, 3.08538e-05, 3.30278e-05, 3.49368e-05, 3.65972e-05, 3.80319e-05, 3.92687e-05, 4.03269e-05, 4.12271e-05, 4.19915e-05, 4.26387e-05, 4.31813e-05, 
			1.89962e-05, 2.27979e-05, 2.62994e-05, 2.94954e-05, 3.23802e-05, 3.49576e-05, 3.72365e-05, 3.92397e-05, 4.09802e-05, 4.24894e-05, 4.37856e-05, 4.48945e-05, 4.58407e-05, 4.66427e-05, 4.73189e-05, 4.78925e-05, 
			2.26927e-05, 2.656e-05, 3.01534e-05, 3.34415e-05, 3.64123e-05, 3.90667e-05, 4.14186e-05, 4.34783e-05, 4.52754e-05, 4.68273e-05, 4.81638e-05, 4.9306e-05, 5.02778e-05, 5.1109e-05, 5.18037e-05, 5.23949e-05, 
			2.65228e-05, 3.04517e-05, 3.41129e-05, 3.7467e-05, 4.05005e-05, 4.32087e-05, 4.56066e-05, 4.77094e-05, 4.95391e-05, 5.11231e-05, 5.24847e-05, 5.36459e-05, 5.46404e-05, 5.54823e-05, 5.61953e-05, 5.67965e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.35969e-05, 1.79313e-05, 2.17215e-05, 2.50803e-05, 2.80601e-05, 3.06985e-05, 3.30175e-05, 3.50447e-05, 3.68025e-05, 3.83199e-05, 3.96214e-05, 4.07352e-05, 4.16814e-05, 4.24837e-05, 4.31617e-05, 4.37313e-05, 
			1.75089e-05, 2.18734e-05, 2.58257e-05, 2.93894e-05, 3.25815e-05, 3.54184e-05, 3.792e-05, 4.011e-05, 4.20112e-05, 4.36539e-05, 4.50642e-05, 4.62684e-05, 4.72943e-05, 4.81641e-05, 4.88972e-05, 4.95196e-05, 
			2.16118e-05, 2.60395e-05, 3.0116e-05, 3.38188e-05, 3.71482e-05, 4.01124e-05, 4.27291e-05, 4.50187e-05, 4.70098e-05, 4.8729e-05, 5.02057e-05, 5.14669e-05, 5.25386e-05, 5.34489e-05, 5.42199e-05, 5.48661e-05, 
			2.58823e-05, 3.03822e-05, 3.45512e-05, 3.83519e-05, 4.17749e-05, 4.48231e-05, 4.75124e-05, 4.98693e-05, 5.19154e-05, 5.36827e-05, 5.51998e-05, 5.6498e-05, 5.76012e-05, 5.85337e-05, 5.93266e-05, 5.99927e-05, 
			3.03092e-05, 3.48691e-05, 3.91089e-05, 4.29796e-05, 4.64627e-05, 4.95693e-05, 5.231e-05, 5.47066e-05, 5.67919e-05, 5.85889e-05, 6.01327e-05, 6.14568e-05, 6.2575e-05, 6.35266e-05, 6.43329e-05, 6.50127e-05
		)
}

CapTable	"metal2_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000199441, 0.000113424, 7.9784e-05, 6.0625e-05, 4.77998e-05, 3.84522e-05, 3.12992e-05, 2.56628e-05, 2.11386e-05, 1.74669e-05, 1.44609e-05, 1.19897e-05, 9.9494e-06, 8.26166e-06, 6.86396e-06, 5.70496e-06, 
			0.000211138, 0.000122051, 8.63974e-05, 6.58294e-05, 5.19656e-05, 4.18258e-05, 3.40542e-05, 2.79242e-05, 2.30056e-05, 1.90112e-05, 1.57411e-05, 1.30522e-05, 1.08334e-05, 8.9976e-06, 7.47742e-06, 6.21566e-06, 
			0.000217456, 0.000127107, 9.03576e-05, 6.89748e-05, 5.44916e-05, 4.3875e-05, 3.57294e-05, 2.93016e-05, 2.4142e-05, 1.99506e-05, 1.65207e-05, 1.37006e-05, 1.13737e-05, 9.44844e-06, 7.85324e-06, 6.5304e-06, 
			0.000220918, 0.000130156, 9.28054e-05, 7.09336e-05, 5.60758e-05, 4.51632e-05, 3.6783e-05, 3.01694e-05, 2.48582e-05, 2.0545e-05, 1.70154e-05, 1.4112e-05, 1.1717e-05, 9.73526e-06, 8.09368e-06, 6.73244e-06, 
			0.000222916, 0.000132085, 9.43872e-05, 7.22094e-05, 5.71048e-05, 4.6e-05, 3.74684e-05, 3.0734e-05, 2.5325e-05, 2.0933e-05, 1.73386e-05, 1.43813e-05, 1.19426e-05, 9.92506e-06, 8.2528e-06, 6.8658e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.9164e-05, 2.43262e-05, 2.8569e-05, 3.21964e-05, 3.53772e-05, 3.82082e-05, 4.07511e-05, 4.3048e-05, 4.51296e-05, 4.70206e-05, 4.8741e-05, 5.03086e-05, 5.17387e-05, 5.30449e-05, 5.42398e-05, 5.53341e-05, 
			2.3326e-05, 2.81606e-05, 3.23434e-05, 3.60338e-05, 3.93318e-05, 4.23023e-05, 4.49922e-05, 4.74352e-05, 4.96584e-05, 5.16847e-05, 5.35339e-05, 5.52235e-05, 5.67694e-05, 5.81853e-05, 5.94841e-05, 6.06775e-05, 
			2.7381e-05, 3.2022e-05, 3.6162e-05, 3.98826e-05, 4.32458e-05, 4.62992e-05, 4.90774e-05, 5.16105e-05, 5.39233e-05, 5.6037e-05, 5.79712e-05, 5.97431e-05, 6.13683e-05, 6.28611e-05, 6.42343e-05, 6.54992e-05, 
			3.1386e-05, 3.5912e-05, 4.00198e-05, 4.37538e-05, 4.7152e-05, 5.02542e-05, 5.30878e-05, 5.56786e-05, 5.80508e-05, 6.0224e-05, 6.22182e-05, 6.40491e-05, 6.57329e-05, 6.72834e-05, 6.87134e-05, 7.00341e-05, 
			3.5392e-05, 3.98368e-05, 4.39166e-05, 4.76512e-05, 5.10694e-05, 5.41998e-05, 5.70686e-05, 5.96996e-05, 6.2114e-05, 6.43328e-05, 6.6372e-05, 6.82498e-05, 6.99804e-05, 7.15782e-05, 7.30554e-05, 7.44236e-05
		)
}

CapTable	"metal2_C_LATERAL_33MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000204502, 0.000120386, 8.8466e-05, 7.08086e-05, 5.92426e-05, 5.09058e-05, 4.45244e-05, 3.94388e-05, 3.52698e-05, 3.17804e-05, 2.88142e-05, 2.62614e-05, 2.40428e-05, 2.20988e-05, 2.03834e-05, 1.88607e-05, 
			0.00021847, 0.00013142, 9.75956e-05, 7.86032e-05, 6.60412e-05, 5.69306e-05, 4.99296e-05, 4.43366e-05, 3.9744e-05, 3.58956e-05, 3.26204e-05, 2.97988e-05, 2.73434e-05, 2.5189e-05, 2.32852e-05, 2.1592e-05, 
			0.000227224, 0.000138972, 0.000104081, 8.42764e-05, 7.10802e-05, 6.14638e-05, 5.40506e-05, 4.8115e-05, 4.32324e-05, 3.9135e-05, 3.56428e-05, 3.26298e-05, 3.0004e-05, 2.7696e-05, 2.56526e-05, 2.38322e-05, 
			0.0002332, 0.000144533, 0.000109017, 8.86852e-05, 7.5067e-05, 6.51008e-05, 5.73972e-05, 5.12164e-05, 4.61232e-05, 4.1842e-05, 3.81878e-05, 3.50298e-05, 3.22728e-05, 2.98454e-05, 2.76922e-05, 2.57702e-05, 
			0.000237722, 0.000148943, 0.000113025, 9.23258e-05, 7.83946e-05, 6.81702e-05, 6.02494e-05, 5.38814e-05, 4.8625e-05, 4.41992e-05, 4.0415e-05, 3.71392e-05, 3.42746e-05, 3.17478e-05, 2.95026e-05, 2.74944e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.49244e-05, 2.05251e-05, 2.53037e-05, 2.91647e-05, 3.21664e-05, 3.44373e-05, 3.61233e-05, 3.73578e-05, 3.82642e-05, 3.89029e-05, 3.93626e-05, 3.96948e-05, 3.99334e-05, 4.01014e-05, 4.02218e-05, 4.03059e-05, 
			2.09021e-05, 2.6717e-05, 3.17072e-05, 3.57648e-05, 3.8927e-05, 4.13241e-05, 4.31086e-05, 4.44204e-05, 4.53682e-05, 4.60564e-05, 4.65506e-05, 4.69062e-05, 4.71589e-05, 4.73386e-05, 4.74654e-05, 4.75549e-05, 
			2.71368e-05, 3.30724e-05, 3.81799e-05, 4.23279e-05, 4.55671e-05, 4.80255e-05, 4.98568e-05, 5.12013e-05, 5.21813e-05, 5.28897e-05, 5.33979e-05, 5.37649e-05, 5.40234e-05, 5.42086e-05, 5.4339e-05, 5.44317e-05, 
			3.35125e-05, 3.95229e-05, 4.46889e-05, 4.88858e-05, 5.2161e-05, 5.46454e-05, 5.64996e-05, 5.78638e-05, 5.88567e-05, 5.95743e-05, 6.00892e-05, 6.04583e-05, 6.072e-05, 6.09074e-05, 6.10408e-05, 6.11356e-05, 
			3.99987e-05, 4.60475e-05, 5.12458e-05, 5.54624e-05, 5.87604e-05, 6.12632e-05, 6.31262e-05, 6.44993e-05, 6.54956e-05, 6.62166e-05, 6.67348e-05, 6.71057e-05, 6.73695e-05, 6.75585e-05, 6.76939e-05, 6.77914e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.1262e-05, 4.31093e-05, 5.27835e-05, 6.03459e-05, 6.60756e-05, 7.03332e-05, 7.34459e-05, 7.57004e-05, 7.73186e-05, 7.84937e-05, 7.93347e-05, 7.99334e-05, 8.03576e-05, 8.06651e-05, 8.08796e-05, 8.10354e-05, 
			4.48243e-05, 5.69982e-05, 6.69632e-05, 7.47754e-05, 8.07222e-05, 8.51489e-05, 8.83956e-05, 9.07603e-05, 9.24685e-05, 9.36973e-05, 9.45776e-05, 9.52032e-05, 9.56528e-05, 9.59739e-05, 9.62041e-05, 9.63708e-05, 
			5.8898e-05, 7.11772e-05, 8.12485e-05, 8.91689e-05, 9.51931e-05, 9.97035e-05, 0.000103015, 0.000105423, 0.000107167, 0.000108421, 0.000109321, 0.000109959, 0.00011042, 0.00011075, 0.000110989, 0.000111164, 
			7.31765e-05, 8.54891e-05, 9.55917e-05, 0.000103546, 0.000109617, 0.000114155, 0.000117493, 0.000119924, 0.000121677, 0.000122942, 0.00012385, 0.000124501, 0.000124969, 0.000125307, 0.000125553, 0.000125734, 
			8.75955e-05, 9.98849e-05, 0.000110005, 0.000117985, 0.000124061, 0.000128607, 0.000131953, 0.000134382, 0.000136146, 0.000137416, 0.000138328, 0.000138985, 0.00013946, 0.000139805, 0.000140056, 0.000140239
		)
}

CapTable	"metal2_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000185422, 9.54416e-05, 5.95978e-05, 3.96884e-05, 2.72e-05, 1.89185e-05, 1.32738e-05, 9.36776e-06, 6.63924e-06, 4.72138e-06, 3.36772e-06, 2.41082e-06, 1.73404e-06, 1.25349e-06, 9.1357e-07, 6.7171e-07, 
			0.00019154, 9.94588e-05, 6.23756e-05, 4.16638e-05, 2.86208e-05, 1.9947e-05, 1.40228e-05, 9.91034e-06, 7.03428e-06, 5.00926e-06, 3.5798e-06, 2.56958e-06, 1.8533e-06, 1.34545e-06, 9.84464e-07, 7.2629e-07, 
			0.000193572, 0.000101115, 6.35886e-05, 4.25532e-05, 2.92778e-05, 2.0431e-05, 1.43782e-05, 1.01757e-05, 7.23066e-06, 5.15726e-06, 3.69312e-06, 2.65812e-06, 1.92358e-06, 1.40145e-06, 1.02804e-06, 7.58318e-07, 
			0.000193889, 0.000101708, 6.40834e-05, 4.29392e-05, 2.9576e-05, 2.06606e-05, 1.45524e-05, 1.03082e-05, 7.33634e-06, 5.24168e-06, 3.76182e-06, 2.71374e-06, 1.96896e-06, 1.43663e-06, 1.05322e-06, 7.75408e-07, 
			0.000193602, 0.000101878, 6.42802e-05, 4.31056e-05, 2.97076e-05, 2.07658e-05, 1.46408e-05, 1.03857e-05, 7.40044e-06, 5.29736e-06, 3.8102e-06, 2.75428e-06, 2.00054e-06, 1.45945e-06, 1.06908e-06, 7.8657e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.67643e-05, 2.23303e-05, 2.72121e-05, 3.14929e-05, 3.5207e-05, 3.83963e-05, 4.11012e-05, 4.33722e-05, 4.52624e-05, 4.68255e-05, 4.81068e-05, 4.91551e-05, 5.00065e-05, 5.06967e-05, 5.12518e-05, 5.17049e-05, 
			2.22633e-05, 2.79943e-05, 3.31377e-05, 3.76877e-05, 4.16562e-05, 4.50682e-05, 4.79663e-05, 5.04006e-05, 5.24256e-05, 5.41018e-05, 5.54767e-05, 5.66006e-05, 5.75148e-05, 5.82582e-05, 5.88543e-05, 5.93379e-05, 
			2.80806e-05, 3.3951e-05, 3.92654e-05, 4.39809e-05, 4.80963e-05, 5.16349e-05, 5.46411e-05, 5.71645e-05, 5.92677e-05, 6.10043e-05, 6.24315e-05, 6.35928e-05, 6.45451e-05, 6.53136e-05, 6.59349e-05, 6.64354e-05, 
			3.41354e-05, 4.01145e-05, 4.55378e-05, 5.03542e-05, 5.45554e-05, 5.81658e-05, 6.12347e-05, 6.38113e-05, 6.59553e-05, 6.77283e-05, 6.91873e-05, 7.03724e-05, 7.13399e-05, 7.21241e-05, 7.27576e-05, 7.32693e-05, 
			4.03885e-05, 4.64391e-05, 5.19324e-05, 5.68103e-05, 6.1064e-05, 6.47216e-05, 6.7825e-05, 7.04308e-05, 7.25974e-05, 7.4394e-05, 7.5865e-05, 7.70681e-05, 7.80455e-05, 7.88387e-05, 7.94793e-05, 7.99965e-05
		)
}

CapTable	"metal2_C_TOP_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.25019e-05, 1.67447e-05, 2.05007e-05, 2.38085e-05, 2.66936e-05, 2.91735e-05, 3.12837e-05, 3.30587e-05, 3.45367e-05, 3.57591e-05, 3.67646e-05, 3.75856e-05, 3.82548e-05, 3.87975e-05, 3.92386e-05, 3.95871e-05, 
			1.64877e-05, 2.08349e-05, 2.47791e-05, 2.82925e-05, 3.13688e-05, 3.40212e-05, 3.62789e-05, 3.81804e-05, 3.97662e-05, 4.10771e-05, 4.21572e-05, 4.30397e-05, 4.37566e-05, 4.43355e-05, 4.48083e-05, 4.51889e-05, 
			2.07114e-05, 2.5156e-05, 2.92244e-05, 3.28625e-05, 3.60513e-05, 3.88025e-05, 4.11453e-05, 4.31187e-05, 4.47639e-05, 4.61266e-05, 4.72468e-05, 4.81664e-05, 4.89052e-05, 4.95108e-05, 5.00008e-05, 5.03962e-05, 
			2.51156e-05, 2.96351e-05, 3.37874e-05, 3.75026e-05, 4.07586e-05, 4.35712e-05, 4.59629e-05, 4.79767e-05, 4.96585e-05, 5.10472e-05, 5.21859e-05, 5.31233e-05, 5.38855e-05, 5.4504e-05, 5.50044e-05, 5.54083e-05, 
			2.96565e-05, 3.42307e-05, 3.84378e-05, 4.22025e-05, 4.55034e-05, 4.83472e-05, 5.07704e-05, 5.28088e-05, 5.45134e-05, 5.59129e-05, 5.70708e-05, 5.8018e-05, 5.87895e-05, 5.94172e-05, 5.99237e-05, 6.03326e-05
		)
}

CapTable	"metal2_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000196684, 0.000109659, 7.52402e-05, 5.55546e-05, 4.24424e-05, 3.30142e-05, 2.59452e-05, 2.05164e-05, 1.62874e-05, 1.29618e-05, 1.03337e-05, 8.2483e-06, 6.59034e-06, 5.26978e-06, 4.21716e-06, 3.37856e-06, 
			0.000207034, 0.000116979, 8.06302e-05, 5.96408e-05, 4.5599e-05, 3.54846e-05, 2.78948e-05, 2.2065e-05, 1.75222e-05, 1.39501e-05, 1.11261e-05, 8.8857e-06, 7.10462e-06, 5.6863e-06, 4.55544e-06, 3.65324e-06, 
			0.00021206, 0.000120868, 8.35592e-05, 6.18836e-05, 4.73414e-05, 3.68536e-05, 2.89796e-05, 2.29298e-05, 1.82144e-05, 1.45071e-05, 1.15757e-05, 9.2498e-06, 7.40166e-06, 5.92864e-06, 4.75426e-06, 3.81738e-06, 
			0.000214386, 0.000122939, 8.51748e-05, 6.31362e-05, 4.8328e-05, 3.7633e-05, 2.96014e-05, 2.3429e-05, 1.86172e-05, 1.48345e-05, 1.18438e-05, 9.47034e-06, 7.58256e-06, 6.0789e-06, 4.88e-06, 3.92344e-06, 
			0.000215436, 0.00012408, 8.61028e-05, 6.38692e-05, 4.89026e-05, 3.80912e-05, 2.99706e-05, 2.37284e-05, 1.88612e-05, 1.50361e-05, 1.20102e-05, 9.60892e-06, 7.699e-06, 6.17708e-06, 4.96396e-06, 3.99592e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.3912e-05, 3.1079e-05, 3.71276e-05, 4.2314e-05, 4.67948e-05, 5.06765e-05, 5.40438e-05, 5.69679e-05, 5.95104e-05, 6.17249e-05, 6.36578e-05, 6.53498e-05, 6.68355e-05, 6.81446e-05, 6.93023e-05, 7.03304e-05, 
			3.0442e-05, 3.74482e-05, 4.35608e-05, 4.88996e-05, 5.35636e-05, 5.76358e-05, 6.11908e-05, 6.42952e-05, 6.70089e-05, 6.93853e-05, 7.14705e-05, 7.33052e-05, 7.49248e-05, 7.6359e-05, 7.7634e-05, 7.87717e-05, 
			3.7048e-05, 4.39444e-05, 5.0063e-05, 5.5463e-05, 6.02122e-05, 6.43836e-05, 6.8044e-05, 7.1256e-05, 7.40762e-05, 7.65572e-05, 7.87448e-05, 8.0678e-05, 8.2391e-05, 8.3916e-05, 8.5277e-05, 8.64965e-05, 
			4.3695e-05, 5.05022e-05, 5.65994e-05, 6.20152e-05, 6.6804e-05, 7.10296e-05, 7.47532e-05, 7.80338e-05, 8.0927e-05, 8.34822e-05, 8.57436e-05, 8.77508e-05, 8.95368e-05, 9.11312e-05, 9.25612e-05, 9.38461e-05, 
			5.0376e-05, 5.70998e-05, 6.31604e-05, 6.85704e-05, 7.3375e-05, 7.76308e-05, 8.13948e-05, 8.47236e-05, 8.767e-05, 9.02808e-05, 9.26004e-05, 9.46658e-05, 9.65106e-05, 9.81648e-05, 9.96502e-05, 0.000100991
		)
}

CapTable	"metal2_C_LATERAL_23MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000200866, 0.000115565, 8.27224e-05, 6.4395e-05, 5.23848e-05, 4.3794e-05, 3.73116e-05, 3.2244e-05, 2.81818e-05, 2.48638e-05, 2.21134e-05, 1.98054e-05, 1.78483e-05, 1.61735e-05, 1.47285e-05, 1.34721e-05, 
			0.000213312, 0.000125153, 9.05072e-05, 7.09554e-05, 5.80554e-05, 4.87852e-05, 4.17642e-05, 3.62568e-05, 3.1827e-05, 2.8196e-05, 2.5175e-05, 2.26302e-05, 2.04636e-05, 1.86022e-05, 1.69894e-05, 1.55816e-05, 
			0.00022064, 0.000131429, 9.5865e-05, 7.5634e-05, 6.22118e-05, 5.25274e-05, 4.5167e-05, 3.9374e-05, 3.46988e-05, 3.08538e-05, 2.76432e-05, 2.4929e-05, 2.261e-05, 2.061e-05, 1.8871e-05, 1.73475e-05, 
			0.00022537, 0.00013592, 9.98846e-05, 7.92518e-05, 6.5507e-05, 5.55494e-05, 4.79568e-05, 4.19622e-05, 3.7109e-05, 3.31048e-05, 2.97504e-05, 2.69052e-05, 2.44662e-05, 2.23558e-05, 2.05148e-05, 1.88969e-05, 
			0.00022885, 0.000139459, 0.00010316, 8.22676e-05, 6.8292e-05, 5.81382e-05, 5.03742e-05, 4.42264e-05, 3.9235e-05, 3.51042e-05, 3.16336e-05, 2.86812e-05, 2.61424e-05, 2.39392e-05, 2.20118e-05, 2.03128e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.95109e-05, 4.09378e-05, 4.98902e-05, 5.63663e-05, 6.07913e-05, 6.37011e-05, 6.55975e-05, 6.67437e-05, 6.74849e-05, 6.79471e-05, 6.82342e-05, 6.84111e-05, 6.85185e-05, 6.85827e-05, 6.86197e-05, 6.86391e-05, 
			4.35815e-05, 5.53586e-05, 6.45067e-05, 7.11024e-05, 7.56052e-05, 7.85599e-05, 8.04634e-05, 8.16695e-05, 8.24245e-05, 8.28963e-05, 8.31881e-05, 8.33659e-05, 8.34719e-05, 8.35342e-05, 8.35668e-05, 8.3558e-05, 
			5.80594e-05, 6.9901e-05, 7.90808e-05, 8.57332e-05, 9.01983e-05, 9.31715e-05, 9.50834e-05, 9.62914e-05, 9.70501e-05, 9.75194e-05, 9.78093e-05, 9.7983e-05, 9.80858e-05, 9.81461e-05, 9.8141e-05, 9.8133e-05, 
			7.26185e-05, 8.44526e-05, 9.36147e-05, 0.000100221, 0.00010473, 0.000107698, 0.000109606, 0.000110813, 0.000111566, 0.000112031, 0.000112314, 0.000112483, 0.000112584, 0.000112614, 0.000112598, 0.000112591, 
			8.72926e-05, 9.90575e-05, 0.000108225, 0.000114822, 0.000119325, 0.000122287, 0.000124187, 0.000125385, 0.000126129, 0.000126587, 0.000126865, 0.000127031, 0.000127129, 0.000127121, 0.000127106, 0.000127099
		)
}

CapTable	"metal2_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.98167e-05, 4.17242e-05, 5.11544e-05, 5.80149e-05, 6.27192e-05, 6.58258e-05, 6.77857e-05, 6.90804e-05, 6.98697e-05, 7.03572e-05, 7.06581e-05, 7.08385e-05, 7.09412e-05, 7.09944e-05, 7.10192e-05, 7.10299e-05, 
			4.38439e-05, 5.60826e-05, 6.57067e-05, 7.26884e-05, 7.74709e-05, 8.06225e-05, 8.26536e-05, 8.39357e-05, 8.47367e-05, 8.52278e-05, 8.55263e-05, 8.56993e-05, 8.5793e-05, 8.58393e-05, 8.58602e-05, 8.5869e-05, 
			5.8298e-05, 7.0598e-05, 8.02498e-05, 8.72036e-05, 9.20355e-05, 9.5194e-05, 9.72193e-05, 9.85044e-05, 9.92964e-05, 9.9785e-05, 0.000100068, 0.00010023, 0.000100315, 0.000100356, 0.000100377, 0.000100385, 
			7.28515e-05, 8.51522e-05, 9.47845e-05, 0.000101765, 0.000106535, 0.000109683, 0.000111702, 0.00011297, 0.000113751, 0.000114221, 0.000114495, 0.000114648, 0.000114726, 0.000114767, 0.000114783, 0.00011479, 
			8.74256e-05, 9.97379e-05, 0.000109351, 0.000116304, 0.000121065, 0.000124193, 0.000126191, 0.000127439, 0.000128203, 0.00012866, 0.000128924, 0.000129072, 0.000129144, 0.000129178, 0.000129193, 0.0001292
		)
}

CapTable	"metal2_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000176883, 8.4767e-05, 4.82574e-05, 2.88128e-05, 1.74725e-05, 1.06381e-05, 6.47278e-06, 3.91194e-06, 2.33936e-06, 1.37269e-06, 7.79668e-07, 4.20382e-07, 2.09306e-07, 9.1901e-08, 3.01232e-08, 0, 
			0.00017943, 8.60488e-05, 4.89516e-05, 2.91992e-05, 1.76789e-05, 1.07346e-05, 6.49204e-06, 3.88982e-06, 2.29078e-06, 1.31092e-06, 7.1564e-07, 3.62832e-07, 1.62122e-07, 5.34962e-08, 0, 0, 
			0.000179028, 8.5954e-05, 4.88764e-05, 2.91252e-05, 1.75922e-05, 1.06375e-05, 6.39234e-06, 3.78716e-06, 2.19254e-06, 1.22155e-06, 6.41738e-07, 3.0402e-07, 1.15217e-07, 1.39203e-08, 0, 0, 
			0.000177809, 8.54562e-05, 4.85658e-05, 2.88872e-05, 1.74074e-05, 1.04759e-05, 6.2462e-06, 3.65926e-06, 2.08376e-06, 1.13422e-06, 5.71644e-07, 2.47836e-07, 6.87576e-08, 0, 0, 0, 
			0.000176554, 8.49216e-05, 4.82208e-05, 2.86298e-05, 1.71844e-05, 1.02872e-05, 6.09042e-06, 3.5342e-06, 1.98514e-06, 1.05583e-06, 5.09e-07, 1.97057e-07, 2.5656e-08, 0, 0, 0
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.17011e-05, 4.31494e-05, 5.24397e-05, 5.97809e-05, 6.54894e-05, 6.9876e-05, 7.3221e-05, 7.57605e-05, 7.76808e-05, 7.91316e-05, 8.0227e-05, 8.10518e-05, 8.16715e-05, 8.21408e-05, 8.2495e-05, 8.27607e-05, 
			4.51788e-05, 5.69107e-05, 6.64822e-05, 7.40988e-05, 8.00547e-05, 8.46575e-05, 8.81845e-05, 9.08695e-05, 9.29089e-05, 9.44518e-05, 9.56189e-05, 9.6498e-05, 9.71632e-05, 9.76655e-05, 9.80432e-05, 9.83289e-05, 
			5.911e-05, 7.09307e-05, 8.06241e-05, 8.83719e-05, 9.44547e-05, 9.91697e-05, 0.000102793, 0.000105557, 0.000107654, 0.000109251, 0.000110458, 0.00011137, 0.000112059, 0.000112579, 0.000112971, 0.000113265, 
			7.32253e-05, 8.50771e-05, 9.48318e-05, 0.00010265, 0.000108799, 0.000113576, 0.000117252, 0.000120063, 0.000122197, 0.000123821, 0.000125051, 0.000125979, 0.000126681, 0.00012721, 0.000127609, 0.000127907, 
			8.7503e-05, 9.93748e-05, 0.000109167, 0.000117028, 0.000123221, 0.00012803, 0.000131738, 0.000134573, 0.000136732, 0.000138372, 0.000139614, 0.000140553, 0.000141261, 0.000141795, 0.000142196, 0.000142499
		)
}

CapTable	"metal2_C_TOP_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.15155e-05, 1.5836e-05, 1.95627e-05, 2.26383e-05, 2.50966e-05, 2.70224e-05, 2.85099e-05, 2.96483e-05, 3.05163e-05, 3.11751e-05, 3.16741e-05, 3.20516e-05, 3.23399e-05, 3.2555e-05, 3.27171e-05, 3.28391e-05, 
			1.58708e-05, 2.03087e-05, 2.41822e-05, 2.7403e-05, 2.99965e-05, 3.20373e-05, 3.36222e-05, 3.48425e-05, 3.5774e-05, 3.64842e-05, 3.70236e-05, 3.74339e-05, 3.77424e-05, 3.79753e-05, 3.81507e-05, 3.82827e-05, 
			2.03992e-05, 2.49055e-05, 2.88627e-05, 3.21665e-05, 3.48327e-05, 3.69399e-05, 3.85804e-05, 3.9846e-05, 4.08194e-05, 4.15559e-05, 4.21168e-05, 4.25419e-05, 4.28634e-05, 4.31062e-05, 4.32889e-05, 4.34262e-05, 
			2.50249e-05, 2.95833e-05, 3.3592e-05, 3.69456e-05, 3.96558e-05, 4.18025e-05, 4.34749e-05, 4.47644e-05, 4.57584e-05, 4.65131e-05, 4.70868e-05, 4.75217e-05, 4.78506e-05, 4.80987e-05, 4.82866e-05, 4.84266e-05, 
			2.97322e-05, 3.43232e-05, 3.83665e-05, 4.17506e-05, 4.44906e-05, 4.66628e-05, 4.83534e-05, 4.96592e-05, 5.06607e-05, 5.14249e-05, 5.20058e-05, 5.24462e-05, 5.2779e-05, 5.30312e-05, 5.32198e-05, 5.33609e-05
		)
}

CapTable	"metal2_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000187444, 9.82476e-05, 6.29486e-05, 4.32938e-05, 3.0798e-05, 2.23236e-05, 1.63691e-05, 1.20952e-05, 8.9839e-06, 6.69728e-06, 5.00586e-06, 3.74862e-06, 2.81058e-06, 2.10924e-06, 1.58395e-06, 1.19021e-06, 
			0.000194377, 0.000103021, 6.64176e-05, 4.58902e-05, 3.27668e-05, 2.38252e-05, 1.75153e-05, 1.297e-05, 9.65214e-06, 7.20802e-06, 5.39646e-06, 4.04812e-06, 3.04136e-06, 2.28818e-06, 1.72408e-06, 1.3014e-06, 
			0.000197149, 0.00010534, 6.82102e-05, 4.72776e-05, 3.38406e-05, 2.46554e-05, 1.81571e-05, 1.34654e-05, 1.00344e-05, 7.50402e-06, 5.62636e-06, 4.2277e-06, 3.18308e-06, 2.40158e-06, 1.8165e-06, 1.37846e-06, 
			0.000198109, 0.000106488, 6.91712e-05, 4.80452e-05, 3.4453e-05, 2.5136e-05, 1.85343e-05, 1.37617e-05, 1.02672e-05, 7.68754e-06, 5.77258e-06, 4.34578e-06, 3.28018e-06, 2.48326e-06, 1.88683e-06, 1.44098e-06, 
			0.000198345, 0.000107088, 6.97192e-05, 4.84984e-05, 3.48106e-05, 2.54214e-05, 1.87626e-05, 1.39441e-05, 1.04139e-05, 7.80666e-06, 5.87084e-06, 4.42854e-06, 3.35164e-06, 2.54646e-06, 1.94485e-06, 1.49553e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.92344e-05, 5.27166e-05, 6.35208e-05, 7.20366e-05, 7.87178e-05, 8.39688e-05, 8.81178e-05, 9.14204e-05, 9.40717e-05, 9.62208e-05, 9.79782e-05, 9.94283e-05, 0.000100637, 0.000101651, 0.000102509, 0.00010324, 
			5.45228e-05, 6.79718e-05, 7.88624e-05, 8.7551e-05, 9.44554e-05, 9.99488e-05, 0.000104342, 0.00010788, 0.000110752, 0.000113104, 0.000115047, 0.000116664, 0.000118022, 0.000119171, 0.000120151, 0.000120989, 
			7.0049e-05, 8.33304e-05, 9.41874e-05, 0.000102936, 0.000109957, 0.000115598, 0.000120152, 0.000123852, 0.000126882, 0.000129382, 0.000131462, 0.000133207, 0.000134679, 0.000135933, 0.000137006, 0.000137929, 
			8.5608e-05, 9.87356e-05, 0.000109545, 0.000118323, 0.000125419, 0.000131166, 0.00013584, 0.000139663, 0.000142814, 0.000145431, 0.00014762, 0.000149465, 0.00015103, 0.000152366, 0.000153514, 0.000154504, 
			0.000101214, 0.000114222, 0.000124996, 0.000133795, 0.000140954, 0.000146784, 0.000151551, 0.000155472, 0.000158721, 0.000161431, 0.000163707, 0.000165634, 0.000167272, 0.000168675, 0.000169883, 0.000170928
		)
}

CapTable	"metal2_C_LATERAL_13MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000190524, 0.000102797, 6.88072e-05, 5.01784e-05, 3.83882e-05, 3.03192e-05, 2.45172e-05, 2.01976e-05, 1.68953e-05, 1.43162e-05, 1.22658e-05, 1.06107e-05, 9.25694e-06, 8.1367e-06, 7.20014e-06, 6.40996e-06, 
			0.000199238, 0.000109522, 7.43276e-05, 5.4862e-05, 4.24286e-05, 3.38382e-05, 2.76006e-05, 2.29112e-05, 1.92918e-05, 1.64391e-05, 1.41515e-05, 1.22899e-05, 1.07557e-05, 9.4775e-06, 8.40214e-06, 7.48978e-06, 
			0.000203936, 0.000113837, 7.81286e-05, 5.82234e-05, 4.54074e-05, 3.64822e-05, 2.99502e-05, 2.5001e-05, 2.11522e-05, 1.80969e-05, 1.56302e-05, 1.36105e-05, 1.19366e-05, 1.05347e-05, 9.3501e-06, 8.34104e-06, 
			0.000206838, 0.00011692, 8.09784e-05, 6.08016e-05, 4.77318e-05, 3.85648e-05, 3.18124e-05, 2.6664e-05, 2.26362e-05, 1.94207e-05, 1.68112e-05, 1.46643e-05, 1.28774e-05, 1.13755e-05, 1.01022e-05, 9.0147e-06, 
			0.000208972, 0.000119361, 8.32842e-05, 6.2913e-05, 4.96366e-05, 4.028e-05, 3.33536e-05, 2.80456e-05, 2.3873e-05, 2.0527e-05, 1.78006e-05, 1.55494e-05, 1.36698e-05, 1.20856e-05, 1.07395e-05, 9.58798e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.25147e-05, 1.67152e-05, 1.98338e-05, 2.20462e-05, 2.35887e-05, 2.46556e-05, 2.53896e-05, 2.59393e-05, 2.62603e-05, 2.6484e-05, 2.66528e-05, 2.67699e-05, 2.68504e-05, 2.69047e-05, 2.69423e-05, 2.6966e-05, 
			1.76873e-05, 2.20697e-05, 2.54027e-05, 2.78036e-05, 2.94969e-05, 3.07444e-05, 3.15254e-05, 3.2062e-05, 3.24596e-05, 3.27354e-05, 3.29272e-05, 3.30595e-05, 3.31492e-05, 3.32101e-05, 3.3253e-05, 3.32795e-05, 
			2.30193e-05, 2.75084e-05, 3.09432e-05, 3.34366e-05, 3.525e-05, 3.64599e-05, 3.73058e-05, 3.79103e-05, 3.83306e-05, 3.8623e-05, 3.88254e-05, 3.89641e-05, 3.90592e-05, 3.91236e-05, 3.91675e-05, 3.91986e-05, 
			2.84659e-05, 3.30206e-05, 3.65812e-05, 3.9089e-05, 4.08652e-05, 4.21412e-05, 4.30335e-05, 4.36556e-05, 4.4089e-05, 4.43888e-05, 4.45963e-05, 4.47398e-05, 4.48383e-05, 4.49051e-05, 4.49508e-05, 4.49825e-05, 
			3.39912e-05, 3.86148e-05, 4.20954e-05, 4.46356e-05, 4.64592e-05, 4.77428e-05, 4.86403e-05, 4.92664e-05, 4.97036e-05, 5.00051e-05, 5.02137e-05, 5.03582e-05, 5.04577e-05, 5.05265e-05, 5.05733e-05, 5.06064e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.64761e-05, 6.1553e-05, 7.21878e-05, 7.94776e-05, 8.44293e-05, 8.77909e-05, 9.00869e-05, 9.16141e-05, 9.27365e-05, 9.3504e-05, 9.4026e-05, 9.43883e-05, 9.46395e-05, 9.48135e-05, 9.49335e-05, 9.50154e-05, 
			6.74977e-05, 8.29795e-05, 9.41167e-05, 0.000101876, 0.000107221, 0.000110821, 0.000113397, 0.000115178, 0.000116384, 0.000117224, 0.000117807, 0.000118212, 0.000118493, 0.000118687, 0.000118819, 0.000118909, 
			8.90057e-05, 0.000104639, 0.000116005, 0.000123981, 0.000129474, 0.000133333, 0.000136001, 0.000137836, 0.00013911, 0.000139994, 0.000140608, 0.000141034, 0.000141328, 0.00014153, 0.000141667, 0.000141757, 
			0.000110847, 0.000126566, 0.000137982, 0.000146142, 0.000151824, 0.000155728, 0.000158442, 0.000160325, 0.000161632, 0.00016254, 0.000163169, 0.000163603, 0.000163901, 0.000164105, 0.000164242, 0.00016433, 
			0.000132772, 0.000148385, 0.000159912, 0.000168072, 0.000173746, 0.000177685, 0.000180416, 0.000182315, 0.000183633, 0.000184547, 0.000185179, 0.000185614, 0.000185912, 0.000186114, 0.000186248, 0.000186332
		)
}

CapTable	"metal3_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000120213, 6.08218e-05, 3.65204e-05, 2.33192e-05, 1.5362e-05, 1.03115e-05, 7.0065e-06, 4.8026e-06, 3.30322e-06, 2.27998e-06, 1.57618e-06, 1.09084e-06, 7.56108e-07, 5.2579e-07, 3.6824e-07, 2.61626e-07, 
			0.00012709, 6.56158e-05, 3.98996e-05, 2.57164e-05, 1.70631e-05, 1.15226e-05, 7.8566e-06, 5.39398e-06, 3.72144e-06, 2.5736e-06, 1.78377e-06, 1.23948e-06, 8.64846e-07, 6.07928e-07, 4.33014e-07, 3.15458e-07, 
			0.000129656, 6.77986e-05, 4.15288e-05, 2.69164e-05, 1.793e-05, 1.21361e-05, 8.29416e-06, 5.70366e-06, 3.93836e-06, 2.72802e-06, 1.89555e-06, 1.32286e-06, 9.29798e-07, 6.61398e-07, 4.79492e-07, 3.58366e-07, 
			0.000130876, 6.89654e-05, 4.24328e-05, 2.7564e-05, 1.83958e-05, 1.24708e-05, 8.5305e-06, 5.87042e-06, 4.05702e-06, 2.81418e-06, 1.96067e-06, 1.37518e-06, 9.7466e-07, 7.0191e-07, 5.18188e-07, 3.97512e-07, 
			0.00012983, 6.89892e-05, 4.26126e-05, 2.77444e-05, 1.85458e-05, 1.25852e-05, 8.62268e-06, 5.94262e-06, 4.11444e-06, 2.86286e-06, 2.00534e-06, 1.41783e-06, 1.01631e-06, 7.43542e-07, 5.61696e-07, 4.436e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.21768e-05, 2.75494e-05, 3.18463e-05, 3.54931e-05, 3.86821e-05, 4.15142e-05, 4.40509e-05, 4.63345e-05, 4.83967e-05, 5.02629e-05, 5.19541e-05, 5.34885e-05, 5.48818e-05, 5.61479e-05, 5.72992e-05, 5.83467e-05, 
			2.68822e-05, 3.20652e-05, 3.64798e-05, 4.03488e-05, 4.37944e-05, 4.68905e-05, 4.96875e-05, 5.22225e-05, 5.4525e-05, 5.66193e-05, 5.85259e-05, 6.02633e-05, 6.18473e-05, 6.3292e-05, 6.46106e-05, 6.58143e-05, 
			3.16004e-05, 3.6695e-05, 4.1177e-05, 4.51764e-05, 4.87798e-05, 5.20448e-05, 5.50114e-05, 5.7714e-05, 6.01795e-05, 6.24305e-05, 6.44869e-05, 6.63667e-05, 6.80856e-05, 6.96579e-05, 7.10965e-05, 7.2413e-05, 
			3.63949e-05, 4.1447e-05, 4.59776e-05, 5.00696e-05, 5.37854e-05, 5.71726e-05, 6.02654e-05, 6.30934e-05, 6.56822e-05, 6.8053e-05, 7.02251e-05, 7.22151e-05, 7.4039e-05, 7.5711e-05, 7.72438e-05, 7.86491e-05, 
			4.12406e-05, 4.62566e-05, 5.0811e-05, 5.49604e-05, 5.87518e-05, 6.2222e-05, 6.54042e-05, 6.83224e-05, 7.1002e-05, 7.34628e-05, 7.57214e-05, 7.77956e-05, 7.97004e-05, 8.14498e-05, 8.30568e-05, 8.45318e-05
		)
}

CapTable	"metal3_C_LATERAL_42MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000143909, 8.96356e-05, 6.7534e-05, 5.4627e-05, 4.58152e-05, 3.92642e-05, 3.41326e-05, 2.99714e-05, 2.65148e-05, 2.35924e-05, 2.1089e-05, 1.89222e-05, 1.70316e-05, 1.53711e-05, 1.39047e-05, 1.26039e-05, 
			0.000159515, 0.000101826, 7.74922e-05, 6.30212e-05, 5.30446e-05, 4.55846e-05, 3.9719e-05, 3.49496e-05, 3.09786e-05, 2.76146e-05, 2.47272e-05, 2.22232e-05, 2.0034e-05, 1.81077e-05, 1.64032e-05, 1.48883e-05, 
			0.000168778, 0.000109732, 8.4198e-05, 6.88166e-05, 5.81202e-05, 5.00792e-05, 4.37324e-05, 3.85564e-05, 3.4236e-05, 3.05678e-05, 2.7413e-05, 2.46718e-05, 2.2271e-05, 2.01546e-05, 1.82788e-05, 1.66089e-05, 
			0.000175343, 0.000115548, 8.92404e-05, 7.32284e-05, 6.20276e-05, 5.35694e-05, 4.68706e-05, 4.13926e-05, 3.68098e-05, 3.2911e-05, 2.95516e-05, 2.6628e-05, 2.40632e-05, 2.17988e-05, 1.9789e-05, 1.79974e-05, 
			0.000178669, 0.000119388, 9.2824e-05, 7.64776e-05, 6.49702e-05, 5.6242e-05, 4.93058e-05, 4.36166e-05, 3.8845e-05, 3.47772e-05, 3.12656e-05, 2.82044e-05, 2.55146e-05, 2.31362e-05, 2.10222e-05, 1.91352e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.58755e-05, 2.13013e-05, 2.52951e-05, 2.80731e-05, 2.99373e-05, 3.11713e-05, 3.19997e-05, 3.25074e-05, 3.28526e-05, 3.30767e-05, 3.32199e-05, 3.33132e-05, 3.33722e-05, 3.34108e-05, 3.34356e-05, 3.34527e-05, 
			2.27491e-05, 2.84458e-05, 3.26898e-05, 3.56648e-05, 3.77119e-05, 3.90219e-05, 3.99069e-05, 4.04873e-05, 4.0867e-05, 4.11108e-05, 4.12685e-05, 4.13714e-05, 4.14367e-05, 4.14797e-05, 4.15082e-05, 4.15281e-05, 
			2.98646e-05, 3.56868e-05, 4.00378e-05, 4.31124e-05, 4.51738e-05, 4.65624e-05, 4.74795e-05, 4.80795e-05, 4.84706e-05, 4.87235e-05, 4.88906e-05, 4.89961e-05, 4.9065e-05, 4.91105e-05, 4.91414e-05, 4.91638e-05, 
			3.71282e-05, 4.30408e-05, 4.74128e-05, 5.05108e-05, 5.262e-05, 5.40287e-05, 5.49575e-05, 5.55678e-05, 5.59654e-05, 5.62243e-05, 5.63907e-05, 5.64994e-05, 5.65708e-05, 5.66176e-05, 5.66516e-05, 5.6676e-05, 
			4.4483e-05, 5.03614e-05, 5.47596e-05, 5.78526e-05, 5.99557e-05, 6.13582e-05, 6.22838e-05, 6.28925e-05, 6.32896e-05, 6.3547e-05, 6.37151e-05, 6.3824e-05, 6.38964e-05, 6.39448e-05, 6.39811e-05, 6.40076e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.54161e-05, 6.03777e-05, 7.08727e-05, 7.79297e-05, 8.25835e-05, 8.56217e-05, 8.75813e-05, 8.88922e-05, 8.97317e-05, 9.0278e-05, 9.06366e-05, 9.08683e-05, 9.10196e-05, 9.11147e-05, 9.11751e-05, 9.12102e-05, 
			6.65289e-05, 8.1963e-05, 9.2931e-05, 0.000100387, 0.000105314, 0.00010861, 0.000110747, 0.000112146, 0.000113051, 0.000113649, 0.000114036, 0.000114285, 0.00011445, 0.000114554, 0.000114615, 0.000114651, 
			8.82026e-05, 0.000103785, 0.00011493, 0.000122513, 0.000127612, 0.000130965, 0.000133164, 0.000134607, 0.000135546, 0.00013616, 0.000136555, 0.000136817, 0.000136985, 0.000137087, 0.000137147, 0.000137182, 
			0.0001102, 0.000125809, 0.000137049, 0.000144725, 0.000149863, 0.000153244, 0.000155477, 0.000156933, 0.000157879, 0.000158501, 0.000158908, 0.000159171, 0.000159336, 0.000159434, 0.00015949, 0.000159524, 
			0.000132223, 0.000147784, 0.000158947, 0.000166604, 0.000171732, 0.000175113, 0.000177333, 0.000178781, 0.000179735, 0.000180358, 0.000180763, 0.000181023, 0.000181181, 0.000181273, 0.000181326, 0.000181359
		)
}

CapTable	"metal3_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000118602, 5.864e-05, 3.40692e-05, 2.08722e-05, 1.31122e-05, 8.35398e-06, 5.37096e-06, 3.47136e-06, 2.25368e-06, 1.46933e-06, 9.62528e-07, 6.35502e-07, 4.2421e-07, 2.8848e-07, 2.03294e-07, 1.51121e-07, 
			0.000124425, 6.24312e-05, 3.65802e-05, 2.25522e-05, 1.42381e-05, 9.10514e-06, 5.87014e-06, 3.80566e-06, 2.48198e-06, 1.6272e-06, 1.0755e-06, 7.18622e-07, 4.87354e-07, 3.40298e-07, 2.49812e-07, 1.9388e-07, 
			0.000126034, 6.38102e-05, 3.75562e-05, 2.32426e-05, 1.47102e-05, 9.42856e-06, 6.09354e-06, 3.96254e-06, 2.59438e-06, 1.71148e-06, 1.14043e-06, 7.69952e-07, 5.31972e-07, 3.83504e-07, 2.92624e-07, 2.35246e-07, 
			0.000126494, 6.43802e-05, 3.79952e-05, 2.35462e-05, 1.4923e-05, 9.58432e-06, 6.20546e-06, 4.04818e-06, 2.66156e-06, 1.76473e-06, 1.18426e-06, 8.09572e-07, 5.72156e-07, 4.2645e-07, 3.36384e-07, 2.78044e-07, 
			0.000124895, 6.39866e-05, 3.78784e-05, 2.35114e-05, 1.49253e-05, 9.60476e-06, 6.24122e-06, 4.08852e-06, 2.69942e-06, 1.80201e-06, 1.22188e-06, 8.49992e-07, 6.18626e-07, 4.77238e-07, 3.87888e-07, 3.28402e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.56816e-05, 3.24166e-05, 3.78456e-05, 4.23913e-05, 4.62646e-05, 4.95986e-05, 5.2488e-05, 5.50071e-05, 5.72145e-05, 5.91574e-05, 6.08746e-05, 6.23979e-05, 6.37537e-05, 6.49637e-05, 6.60463e-05, 6.70171e-05, 
			3.21448e-05, 3.87864e-05, 4.43928e-05, 4.91956e-05, 5.33476e-05, 5.69622e-05, 6.01274e-05, 6.29137e-05, 6.53773e-05, 6.75648e-05, 6.95139e-05, 7.12559e-05, 7.28171e-05, 7.42193e-05, 7.54814e-05, 7.6619e-05, 
			3.87042e-05, 4.52596e-05, 5.09206e-05, 5.58396e-05, 6.01434e-05, 6.39262e-05, 6.72678e-05, 7.02334e-05, 7.2874e-05, 7.52356e-05, 7.73522e-05, 7.92538e-05, 8.09668e-05, 8.25126e-05, 8.39093e-05, 8.51731e-05, 
			4.53218e-05, 5.17962e-05, 5.74746e-05, 6.24674e-05, 6.68762e-05, 7.0785e-05, 7.42622e-05, 7.73684e-05, 8.01514e-05, 8.2651e-05, 8.4902e-05, 8.69338e-05, 8.87698e-05, 9.04319e-05, 9.19382e-05, 9.33053e-05, 
			5.1915e-05, 5.83002e-05, 6.39646e-05, 6.8996e-05, 7.34728e-05, 7.7468e-05, 8.10446e-05, 8.42564e-05, 8.71476e-05, 8.97572e-05, 9.21152e-05, 9.42506e-05, 9.61866e-05, 9.79441e-05, 9.95404e-05, 0.000100993
		)
}

CapTable	"metal3_C_LATERAL_32MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000141282, 8.62774e-05, 6.36974e-05, 5.0522e-05, 4.1605e-05, 3.50666e-05, 3.00288e-05, 2.60134e-05, 2.27336e-05, 2.00044e-05, 1.76999e-05, 1.57311e-05, 1.40332e-05, 1.25575e-05, 1.12666e-05, 1.01313e-05, 
			0.000155829, 9.75316e-05, 7.28572e-05, 5.82494e-05, 4.82804e-05, 4.09246e-05, 3.52242e-05, 3.06546e-05, 2.6901e-05, 2.37594e-05, 2.1092e-05, 1.88013e-05, 1.68159e-05, 1.50823e-05, 1.35592e-05, 1.22145e-05, 
			0.000164218, 0.000104761, 7.90554e-05, 6.36694e-05, 5.30786e-05, 4.52118e-05, 3.90782e-05, 3.41336e-05, 3.005e-05, 2.66154e-05, 2.36858e-05, 2.11592e-05, 1.8961e-05, 1.70347e-05, 1.5337e-05, 1.38337e-05, 
			0.000170183, 0.00011017, 8.38344e-05, 6.79186e-05, 5.68908e-05, 4.8649e-05, 4.21878e-05, 3.69536e-05, 3.26116e-05, 2.8945e-05, 2.5806e-05, 2.30902e-05, 2.07202e-05, 1.86381e-05, 1.67988e-05, 1.51667e-05, 
			0.000173174, 0.000113837, 8.73534e-05, 7.1173e-05, 5.98802e-05, 5.1391e-05, 4.47014e-05, 3.92556e-05, 3.47184e-05, 3.08728e-05, 2.75698e-05, 2.47034e-05, 2.21954e-05, 1.99869e-05, 1.80316e-05, 1.62931e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.18862e-05, 2.95164e-05, 3.4963e-05, 3.85547e-05, 4.08117e-05, 4.21876e-05, 4.30111e-05, 4.34976e-05, 4.37792e-05, 4.39408e-05, 4.40317e-05, 4.40824e-05, 4.41073e-05, 4.41026e-05, 4.41025e-05, 4.41041e-05, 
			3.20598e-05, 4.00791e-05, 4.58076e-05, 4.95941e-05, 5.19667e-05, 5.34171e-05, 5.42848e-05, 5.47924e-05, 5.50883e-05, 5.52578e-05, 5.53492e-05, 5.53972e-05, 5.5406e-05, 5.5403e-05, 5.5404e-05, 5.5404e-05, 
			4.26186e-05, 5.07676e-05, 5.6577e-05, 6.0405e-05, 6.28099e-05, 6.42755e-05, 6.51489e-05, 6.56611e-05, 6.59558e-05, 6.61191e-05, 6.62062e-05, 6.62516e-05, 6.625e-05, 6.6245e-05, 6.6246e-05, 6.6248e-05, 
			5.336e-05, 6.15542e-05, 6.73852e-05, 7.12245e-05, 7.36309e-05, 7.50949e-05, 7.5966e-05, 7.64695e-05, 7.67549e-05, 7.69121e-05, 7.69953e-05, 7.70391e-05, 7.7035e-05, 7.703e-05, 7.7031e-05, 7.7034e-05, 
			6.41558e-05, 7.23254e-05, 7.81138e-05, 8.19177e-05, 8.42979e-05, 8.57389e-05, 8.65882e-05, 8.70777e-05, 8.73539e-05, 8.75059e-05, 8.75868e-05, 8.76314e-05, 8.7628e-05, 8.7625e-05, 8.7627e-05, 8.7628e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.4172e-05, 5.9062e-05, 6.93016e-05, 7.58985e-05, 7.99868e-05, 8.24574e-05, 8.39271e-05, 8.47839e-05, 8.52717e-05, 8.55407e-05, 8.56742e-05, 8.5729e-05, 8.57492e-05, 8.57544e-05, 8.57545e-05, 8.57529e-05, 
			6.55976e-05, 8.10059e-05, 9.164e-05, 9.85052e-05, 0.000102771, 0.000105345, 0.000106863, 0.000107742, 0.000108227, 0.000108476, 0.000108595, 0.000108643, 0.000108659, 0.000108662, 0.000108661, 0.000108663, 
			8.76342e-05, 0.000103164, 0.000113883, 0.000120802, 0.000125087, 0.00012766, 0.000129169, 0.000130019, 0.000130474, 0.000130708, 0.000130814, 0.000130855, 0.000130868, 0.000130876, 0.000130875, 0.000130873, 
			0.000109964, 0.000125508, 0.000136231, 0.000143135, 0.000147396, 0.000149933, 0.000151392, 0.000152213, 0.000152653, 0.000152871, 0.000152966, 0.000153002, 0.000153014, 0.000153023, 0.000153022, 0.000153015, 
			0.000132294, 0.000147711, 0.00015832, 0.000165142, 0.000169313, 0.000171779, 0.0001732, 0.000173994, 0.000174416, 0.000174619, 0.000174706, 0.000174739, 0.000174758, 0.000174761, 0.000174754, 0.000174753
		)
}

CapTable	"metal3_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000115363, 5.44576e-05, 2.96394e-05, 1.67118e-05, 9.48552e-06, 5.34798e-06, 2.9608e-06, 1.58854e-06, 8.09104e-07, 3.77528e-07, 1.52068e-07, 4.556e-08, 5.25212e-10, 0, 0, 0, 
			0.000119314, 5.6626e-05, 3.08124e-05, 1.73157e-05, 9.7633e-06, 5.4419e-06, 2.9602e-06, 1.54462e-06, 7.54712e-07, 3.32184e-07, 1.20766e-07, 2.47504e-08, 0, 0, 0, 0, 
			0.000119399, 5.67814e-05, 3.0828e-05, 1.7251e-05, 9.65314e-06, 5.31952e-06, 2.84508e-06, 1.45292e-06, 6.91232e-07, 2.91934e-07, 9.78296e-08, 1.14109e-08, 0, 0, 0, 0, 
			0.000118716, 5.64548e-05, 3.05598e-05, 1.70095e-05, 9.44912e-06, 5.1581e-06, 2.73102e-06, 1.37748e-06, 6.4408e-07, 2.66922e-07, 8.77034e-08, 7.9135e-09, 0, 0, 0, 0, 
			0.000116293, 5.54256e-05, 2.99562e-05, 1.66033e-05, 9.18308e-06, 4.9911e-06, 2.63184e-06, 1.32033e-06, 6.1409e-07, 2.57098e-07, 8.81606e-08, 1.05672e-08, 0, 0, 0, 0
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			3.19608e-05, 4.11282e-05, 4.84208e-05, 5.42969e-05, 5.90566e-05, 6.29355e-05, 6.6122e-05, 6.8764e-05, 7.09773e-05, 7.28505e-05, 7.44515e-05, 7.58319e-05, 7.70314e-05, 7.80807e-05, 7.90037e-05, 7.98193e-05, 
			4.19144e-05, 5.11002e-05, 5.86184e-05, 6.47722e-05, 6.9825e-05, 7.39998e-05, 7.74776e-05, 8.04018e-05, 8.2887e-05, 8.50181e-05, 8.68618e-05, 8.84705e-05, 8.98824e-05, 9.11291e-05, 9.22352e-05, 9.32196e-05, 
			5.2017e-05, 6.10792e-05, 6.86116e-05, 7.48554e-05, 8.0048e-05, 8.43932e-05, 8.80578e-05, 9.1176e-05, 9.38554e-05, 9.61784e-05, 9.82077e-05, 9.99923e-05, 0.000101572, 0.000102975, 0.000104228, 0.000105349, 
			6.20979e-05, 7.10072e-05, 7.85052e-05, 8.4795e-05, 9.00862e-05, 9.45622e-05, 9.8377e-05, 0.000101657, 0.0001045, 0.000106985, 0.000109172, 0.000111108, 0.000112831, 0.000114369, 0.000115748, 0.000116986, 
			7.20228e-05, 8.07568e-05, 8.81886e-05, 9.44914e-05, 9.98446e-05, 0.000104414, 0.000108343, 0.00011175, 0.000114726, 0.000117345, 0.000119662, 0.000121725, 0.00012357, 0.000125224, 0.000126712, 0.000128053
		)
}

CapTable	"metal3_C_LATERAL_22MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000136932, 8.08238e-05, 5.76492e-05, 4.42656e-05, 3.54056e-05, 2.90924e-05, 2.43756e-05, 2.07286e-05, 1.78316e-05, 1.54795e-05, 1.35345e-05, 1.19018e-05, 1.05139e-05, 9.3218e-06, 8.28924e-06, 7.38858e-06, 
			0.000149752, 9.06718e-05, 6.56836e-05, 5.10878e-05, 4.1341e-05, 3.43322e-05, 2.90434e-05, 2.49102e-05, 2.1591e-05, 1.88669e-05, 1.65912e-05, 1.46625e-05, 1.30086e-05, 1.15769e-05, 1.03278e-05, 9.23144e-06, 
			0.000156907, 9.70168e-05, 7.12504e-05, 5.60536e-05, 4.5806e-05, 3.83678e-05, 3.27002e-05, 2.8228e-05, 2.46026e-05, 2.16006e-05, 1.90723e-05, 1.69137e-05, 1.50503e-05, 1.34277e-05, 1.20048e-05, 1.07501e-05, 
			0.000162122, 0.000101954, 7.57458e-05, 6.0141e-05, 4.95338e-05, 4.17678e-05, 3.58e-05, 3.10516e-05, 2.71726e-05, 2.39378e-05, 2.1196e-05, 1.88416e-05, 1.67994e-05, 1.50133e-05, 1.34411e-05, 1.20501e-05, 
			0.000164752, 0.000105466, 7.92404e-05, 6.34496e-05, 5.26224e-05, 4.46318e-05, 3.84438e-05, 3.34822e-05, 2.94004e-05, 2.59754e-05, 2.30566e-05, 2.0538e-05, 1.8344e-05, 1.64179e-05, 1.47168e-05, 1.32073e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			5.44088e-05, 7.06064e-05, 7.95149e-05, 8.39274e-05, 8.60123e-05, 8.69748e-05, 8.74146e-05, 8.76155e-05, 8.77057e-05, 8.77478e-05, 8.77611e-05, 8.77603e-05, 8.77605e-05, 8.77609e-05, 8.77613e-05, 8.77617e-05, 
			8.31754e-05, 9.95164e-05, 0.000108455, 0.000112916, 0.000115027, 0.000116002, 0.000116447, 0.000116651, 0.000116747, 0.000116795, 0.000116804, 0.000116803, 0.000116803, 0.000116804, 0.000116804, 0.000116804, 
			0.000112026, 0.000128269, 0.000137203, 0.000141635, 0.000143735, 0.000144705, 0.00014515, 0.000145358, 0.000145461, 0.000145517, 0.000145517, 0.000145516, 0.000145516, 0.000145516, 0.000145518, 0.000145518, 
			0.000141014, 0.000157207, 0.000166102, 0.000170518, 0.000172601, 0.000173564, 0.000174011, 0.000174228, 0.000174342, 0.000174402, 0.000174397, 0.000174395, 0.000174395, 0.000174395, 0.000174395, 0.000174395, 
			0.000169752, 0.000185743, 0.000194511, 0.000198871, 0.000200927, 0.000201879, 0.000202328, 0.000202557, 0.000202686, 0.000202748, 0.000202742, 0.00020274, 0.000202739, 0.000202739, 0.00020274, 0.00020274
		)
}

CapTable	"metal3_C_TOP_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.30316e-05, 5.70792e-05, 6.50672e-05, 6.90847e-05, 7.0983e-05, 7.1852e-05, 7.2237e-05, 7.23884e-05, 7.24409e-05, 7.24566e-05, 7.24609e-05, 7.24617e-05, 7.24615e-05, 7.24611e-05, 7.24607e-05, 7.24603e-05, 
			6.51596e-05, 7.93646e-05, 8.74638e-05, 9.15165e-05, 9.34266e-05, 9.42882e-05, 9.46545e-05, 9.47935e-05, 9.48395e-05, 9.48538e-05, 9.4858e-05, 9.48589e-05, 9.48588e-05, 9.48584e-05, 9.48579e-05, 9.48575e-05, 
			8.74748e-05, 0.000101654, 0.000109671, 0.000113679, 0.000115549, 0.000116383, 0.000116726, 0.000116851, 0.000116893, 0.000116907, 0.000116912, 0.000116913, 0.000116913, 0.000116913, 0.000116912, 0.000116912, 
			0.000109838, 0.000123943, 0.000131889, 0.000135844, 0.00013768, 0.000138484, 0.000138803, 0.000138916, 0.000138955, 0.000138969, 0.000138974, 0.000138976, 0.000138976, 0.000138976, 0.000138976, 0.000138976, 
			0.000132189, 0.000146096, 0.000153888, 0.000157755, 0.000159532, 0.000160288, 0.000160574, 0.000160676, 0.000160715, 0.00016073, 0.000160736, 0.000160738, 0.000160739, 0.000160739, 0.000160739, 0.000160739
		)
}

CapTable	"metal3_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			9.95546e-05, 3.87644e-05, 1.68399e-05, 7.4439e-06, 3.2717e-06, 1.4032e-06, 5.72398e-07, 2.18072e-07, 7.54134e-08, 1.76202e-08, 0, 0, 0, 0, 0, 0, 
			9.9946e-05, 3.8991e-05, 1.69367e-05, 7.46242e-06, 3.25394e-06, 1.37985e-06, 5.61108e-07, 2.17868e-07, 7.60292e-08, 1.29603e-08, 0, 0, 0, 0, 0, 0, 
			9.87962e-05, 3.85916e-05, 1.67221e-05, 7.34562e-06, 3.18878e-06, 1.35e-06, 5.55018e-07, 2.21194e-07, 7.55008e-08, 4.58588e-09, 0, 0, 0, 0, 0, 0, 
			9.7808e-05, 3.82086e-05, 1.65268e-05, 7.2322e-06, 3.13318e-06, 1.3309e-06, 5.59032e-07, 2.28362e-07, 7.42482e-08, 0, 0, 0, 0, 0, 0, 0, 
			9.54942e-05, 3.73988e-05, 1.61827e-05, 7.06576e-06, 3.0604e-06, 1.31937e-06, 5.77774e-07, 2.46102e-07, 7.75054e-08, 0, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			6.6564e-05, 8.5537e-05, 9.7952e-05, 0.00010621, 0.000111864, 0.000115856, 0.000118754, 0.000120909, 0.000122544, 0.000123805, 0.000124791, 0.000125571, 0.000126191, 0.00012669, 0.000127094, 0.000127423, 
			9.61892e-05, 0.0001151, 0.000127935, 0.000136771, 0.000143007, 0.000147528, 0.000150883, 0.000153425, 0.000155381, 0.00015691, 0.000158116, 0.000159076, 0.000159846, 0.000160468, 0.000160973, 0.000161386, 
			0.000125781, 0.000144591, 0.000157656, 0.000166837, 0.000173445, 0.000178312, 0.000181973, 0.000184774, 0.00018695, 0.000188661, 0.000190017, 0.000191101, 0.000191972, 0.000192678, 0.000193253, 0.000193724, 
			0.000155597, 0.000174371, 0.000187599, 0.000197027, 0.000203887, 0.000208991, 0.000212861, 0.000215841, 0.000218168, 0.000220003, 0.000221461, 0.00022263, 0.000223573, 0.000224338, 0.000224961, 0.000225473, 
			0.000185253, 0.000203843, 0.000217102, 0.000226655, 0.000233659, 0.0002389, 0.000242894, 0.000245982, 0.000248401, 0.000250313, 0.000251837, 0.00025306, 0.000254049, 0.000254852, 0.000255509, 0.00025605
		)
}

CapTable	"metal3_C_LATERAL_12MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000118466, 6.124e-05, 3.8851e-05, 2.6926e-05, 1.9668e-05, 1.48902e-05, 1.15735e-05, 9.18084e-06, 7.40406e-06, 6.05512e-06, 5.01322e-06, 4.19744e-06, 3.55162e-06, 3.0356e-06, 2.61998e-06, 2.28276e-06, 
			0.000127414, 6.85332e-05, 4.47926e-05, 3.17794e-05, 2.36458e-05, 1.81635e-05, 1.42802e-05, 1.14312e-05, 9.28648e-06, 7.64018e-06, 6.35742e-06, 5.34606e-06, 4.54098e-06, 3.89494e-06, 3.37282e-06, 2.9481e-06, 
			0.00013261, 7.33446e-05, 4.88878e-05, 3.52276e-05, 2.653e-05, 2.05784e-05, 1.63102e-05, 1.31477e-05, 1.07486e-05, 8.8962e-06, 7.4464e-06, 6.29942e-06, 5.38398e-06, 4.6478e-06, 4.0517e-06, 3.56596e-06, 
			0.000136358, 7.68904e-05, 5.19546e-05, 3.78272e-05, 2.8738e-05, 2.2458e-05, 1.79194e-05, 1.45367e-05, 1.19591e-05, 9.96234e-06, 8.39562e-06, 7.15376e-06, 6.16094e-06, 5.36126e-06, 4.71268e-06, 4.18314e-06, 
			0.000137668, 7.90674e-05, 5.40664e-05, 3.97122e-05, 3.03958e-05, 2.39184e-05, 1.92134e-05, 1.56934e-05, 1.30014e-05, 1.09119e-05, 9.26992e-06, 7.9666e-06, 6.92312e-06, 6.08118e-06, 5.39682e-06, 4.8365e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.7502e-05, 2.15654e-05, 2.50698e-05, 2.83158e-05, 3.14032e-05, 3.43557e-05, 3.71715e-05, 3.98405e-05, 4.23547e-05, 4.47094e-05, 4.69031e-05, 4.89375e-05, 5.0817e-05, 5.2547e-05, 5.4135e-05, 5.55889e-05, 
			2.0324e-05, 2.4317e-05, 2.80344e-05, 3.15648e-05, 3.49388e-05, 3.81568e-05, 4.12128e-05, 4.40978e-05, 4.68068e-05, 4.93377e-05, 5.1692e-05, 5.3873e-05, 5.58868e-05, 5.77402e-05, 5.94417e-05, 6.10001e-05, 
			2.3476e-05, 2.75786e-05, 3.14832e-05, 3.5211e-05, 3.87672e-05, 4.21488e-05, 4.53486e-05, 4.83626e-05, 5.11869e-05, 5.3822e-05, 5.62709e-05, 5.85388e-05, 6.0632e-05, 6.25588e-05, 6.43282e-05, 6.59494e-05, 
			2.7019e-05, 3.1235e-05, 3.52728e-05, 3.9128e-05, 4.27978e-05, 4.6279e-05, 4.95678e-05, 5.26592e-05, 5.55538e-05, 5.82529e-05, 6.07604e-05, 6.30819e-05, 6.52252e-05, 6.71985e-05, 6.90112e-05, 7.06727e-05, 
			3.0858e-05, 3.51732e-05, 3.92994e-05, 4.32344e-05, 4.69762e-05, 5.05204e-05, 5.3864e-05, 5.7006e-05, 5.9945e-05, 6.26858e-05, 6.52316e-05, 6.759e-05, 6.97666e-05, 7.17718e-05, 7.36144e-05, 7.53046e-05
		)
}

CapTable	"metal4_C_LATERAL_51MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.00023398, 0.000139775, 0.000103713, 8.31422e-05, 6.92098e-05, 5.8877e-05, 5.0791e-05, 4.42422e-05, 3.88124e-05, 3.42344e-05, 3.03266e-05, 2.69594e-05, 2.40366e-05, 2.14852e-05, 1.92475e-05, 1.72775e-05, 
			0.000252348, 0.000152994, 0.000113709, 9.10052e-05, 7.55832e-05, 6.41702e-05, 5.5273e-05, 4.80958e-05, 4.21666e-05, 3.71832e-05, 3.29396e-05, 2.92902e-05, 2.6127e-05, 2.33684e-05, 2.09506e-05, 1.88228e-05, 
			0.000262526, 0.000160587, 0.00011953, 9.5635e-05, 7.93738e-05, 6.73492e-05, 5.79904e-05, 5.04542e-05, 4.42386e-05, 3.90212e-05, 3.4583e-05, 3.07688e-05, 2.74646e-05, 2.45838e-05, 2.20588e-05, 1.98365e-05, 
			0.00026818, 0.000165101, 0.000123091, 9.8516e-05, 8.17802e-05, 6.9403e-05, 5.97712e-05, 5.20208e-05, 4.56322e-05, 4.02724e-05, 3.57144e-05, 3.17982e-05, 2.84054e-05, 2.5447e-05, 2.28536e-05, 2.05704e-05, 
			0.00027183, 0.000168043, 0.000125473, 0.000100488, 8.34478e-05, 7.08456e-05, 6.1041e-05, 5.3153e-05, 4.6652e-05, 4.11982e-05, 3.65604e-05, 3.2575e-05, 2.9122e-05, 2.611e-05, 2.3469e-05, 2.11426e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.9384e-05, 2.41644e-05, 2.834e-05, 3.22068e-05, 3.58572e-05, 3.93079e-05, 4.25516e-05, 4.558e-05, 4.83883e-05, 5.09763e-05, 5.33491e-05, 5.55142e-05, 5.74828e-05, 5.92667e-05, 6.08789e-05, 6.23327e-05, 
			2.2996e-05, 2.77784e-05, 3.22316e-05, 3.64346e-05, 4.0408e-05, 4.415e-05, 4.76518e-05, 5.09102e-05, 5.39242e-05, 5.66977e-05, 5.92386e-05, 6.15571e-05, 6.36655e-05, 6.55775e-05, 6.73069e-05, 6.8868e-05, 
			2.7028e-05, 3.19672e-05, 3.6641e-05, 4.10596e-05, 4.52262e-05, 4.91372e-05, 5.27874e-05, 5.61766e-05, 5.9308e-05, 6.21877e-05, 6.48256e-05, 6.7233e-05, 6.94231e-05, 7.14105e-05, 7.32095e-05, 7.48349e-05, 
			3.1509e-05, 3.65806e-05, 4.1397e-05, 4.59448e-05, 5.02244e-05, 5.42312e-05, 5.7968e-05, 6.14334e-05, 6.46348e-05, 6.75776e-05, 7.02744e-05, 7.27366e-05, 7.49786e-05, 7.70132e-05, 7.88569e-05, 8.05243e-05, 
			3.6309e-05, 4.14834e-05, 4.63854e-05, 5.10096e-05, 5.53552e-05, 5.94212e-05, 6.32098e-05, 6.67238e-05, 6.99686e-05, 7.29534e-05, 7.56894e-05, 7.8188e-05, 8.04648e-05, 8.2533e-05, 8.4408e-05, 8.61044e-05
		)
}

CapTable	"metal4_C_LATERAL_41MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.00023253, 0.000137898, 0.000101486, 8.06362e-05, 6.64938e-05, 5.60148e-05, 4.78398e-05, 4.12502e-05, 3.58198e-05, 3.1274e-05, 2.7424e-05, 2.4135e-05, 2.13056e-05, 1.88586e-05, 1.6733e-05, 1.488e-05, 
			0.000250392, 0.000150632, 0.000111025, 8.80814e-05, 7.2492e-05, 6.0974e-05, 5.20248e-05, 4.48388e-05, 3.89358e-05, 3.40064e-05, 2.98388e-05, 2.62822e-05, 2.32248e-05, 2.0581e-05, 1.82843e-05, 1.62814e-05, 
			0.00026009, 0.000157791, 0.000116465, 9.23824e-05, 7.60018e-05, 6.39138e-05, 5.45376e-05, 4.70204e-05, 4.0853e-05, 3.5707e-05, 3.13584e-05, 2.7648e-05, 2.44582e-05, 2.1699e-05, 1.9301e-05, 1.72085e-05, 
			0.000265314, 0.000161941, 0.000119725, 9.50162e-05, 7.82066e-05, 6.58028e-05, 5.6182e-05, 4.84726e-05, 4.21492e-05, 3.68734e-05, 3.24146e-05, 2.86094e-05, 2.53364e-05, 2.25042e-05, 2.0041e-05, 1.789e-05, 
			0.00026861, 0.000164597, 0.000121878, 9.68064e-05, 7.97298e-05, 6.71298e-05, 5.73582e-05, 4.95272e-05, 4.31034e-05, 3.77426e-05, 3.32106e-05, 2.9341e-05, 2.60112e-05, 2.3128e-05, 2.0619e-05, 1.84266e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			2.2044e-05, 2.78644e-05, 3.29842e-05, 3.76922e-05, 4.20788e-05, 4.61572e-05, 4.99211e-05, 5.33657e-05, 5.64936e-05, 5.93138e-05, 6.18418e-05, 6.40969e-05, 6.61004e-05, 6.78749e-05, 6.94425e-05, 7.08249e-05, 
			2.6903e-05, 3.2816e-05, 3.82872e-05, 4.33838e-05, 4.81224e-05, 5.25058e-05, 5.65312e-05, 6.02032e-05, 6.35303e-05, 6.65294e-05, 6.92192e-05, 7.16221e-05, 7.37616e-05, 7.5661e-05, 7.73441e-05, 7.88332e-05, 
			3.2294e-05, 3.84108e-05, 4.41274e-05, 4.94478e-05, 5.43784e-05, 5.89214e-05, 6.3083e-05, 6.68736e-05, 7.03076e-05, 7.3404e-05, 7.61838e-05, 7.86706e-05, 8.08882e-05, 8.28619e-05, 8.4615e-05, 8.61692e-05, 
			3.8198e-05, 4.44558e-05, 5.03092e-05, 5.57444e-05, 6.0769e-05, 6.53914e-05, 6.96226e-05, 7.34758e-05, 7.69682e-05, 8.01206e-05, 8.29542e-05, 8.5493e-05, 8.77612e-05, 8.97829e-05, 9.15821e-05, 9.31811e-05, 
			4.4432e-05, 5.07788e-05, 5.66994e-05, 6.21918e-05, 6.72654e-05, 7.1931e-05, 7.62012e-05, 8.00924e-05, 8.36218e-05, 8.68098e-05, 8.96802e-05, 9.22546e-05, 9.45582e-05, 9.66152e-05, 9.84478e-05, 0.000100079
		)
}

CapTable	"metal4_C_LATERAL_31MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000230482, 0.000135294, 9.84758e-05, 7.73248e-05, 6.29672e-05, 5.2351e-05, 4.41096e-05, 3.7516e-05, 3.2134e-05, 2.76796e-05, 2.3955e-05, 2.08166e-05, 1.81563e-05, 1.58904e-05, 1.39528e-05, 1.22903e-05, 
			0.00024762, 0.000147394, 0.000107453, 8.42752e-05, 6.85396e-05, 5.69522e-05, 4.79998e-05, 4.08658e-05, 3.50594e-05, 3.02612e-05, 2.62518e-05, 2.28724e-05, 2.00048e-05, 1.75588e-05, 1.54629e-05, 1.36602e-05, 
			0.00025671, 0.000154038, 0.000112459, 8.82192e-05, 7.17636e-05, 5.96696e-05, 5.0344e-05, 4.29234e-05, 3.68884e-05, 3.1902e-05, 2.77332e-05, 2.42164e-05, 2.12288e-05, 1.86761e-05, 1.6485e-05, 1.45968e-05, 
			0.000261432, 0.000157789, 0.000115405, 9.06156e-05, 7.3797e-05, 6.14416e-05, 5.19154e-05, 4.43362e-05, 3.81708e-05, 3.30734e-05, 2.88078e-05, 2.5205e-05, 2.21398e-05, 1.95171e-05, 1.72619e-05, 1.53149e-05, 
			0.000264352, 0.000160156, 0.000117345, 9.22572e-05, 7.52236e-05, 6.2713e-05, 5.30668e-05, 4.53896e-05, 3.91402e-05, 3.39692e-05, 2.96378e-05, 2.59754e-05, 2.28558e-05, 2.01828e-05, 1.78812e-05, 1.58914e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			2.9605e-05, 3.8515e-05, 4.61904e-05, 5.29024e-05, 5.8801e-05, 6.3984e-05, 6.85238e-05, 7.24852e-05, 7.59276e-05, 7.89096e-05, 8.14841e-05, 8.37007e-05, 8.56056e-05, 8.72401e-05, 8.86413e-05, 8.98416e-05, 
			3.836e-05, 4.74908e-05, 5.55638e-05, 6.26798e-05, 6.89448e-05, 7.445e-05, 7.92734e-05, 8.34874e-05, 8.71568e-05, 9.03424e-05, 9.31004e-05, 9.54841e-05, 9.75412e-05, 9.9313e-05, 0.000100839, 0.000102153, 
			4.7767e-05, 5.7076e-05, 6.53492e-05, 7.2655e-05, 7.90938e-05, 8.47566e-05, 8.9726e-05, 9.40752e-05, 9.78696e-05, 0.000101173, 0.000104041, 0.000106526, 0.000108678, 0.000110539, 0.000112146, 0.000113535, 
			5.7642e-05, 6.70124e-05, 7.53604e-05, 8.27456e-05, 8.92628e-05, 9.50038e-05, 0.000100053, 0.000104479, 0.000108351, 0.000111729, 0.00011467, 0.000117226, 0.000119445, 0.000121369, 0.000123037, 0.000124484, 
			6.7758e-05, 7.71496e-05, 8.5519e-05, 9.29388e-05, 9.95006e-05, 0.000105292, 0.000110393, 0.000114876, 0.000118805, 0.000122241, 0.000125238, 0.00012785, 0.000130122, 0.000132097, 0.000133813, 0.000135304
		)
}

CapTable	"metal4_C_LATERAL_21MIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.00022507, 0.000128512, 9.09306e-05, 6.94696e-05, 5.5109e-05, 4.4684e-05, 3.67502e-05, 3.05298e-05, 2.55544e-05, 2.15184e-05, 1.82108e-05, 1.54792e-05, 1.32095e-05, 1.13147e-05, 9.72644e-06, 8.39058e-06, 
			0.00024033, 0.00013917, 9.88342e-05, 7.56232e-05, 6.00772e-05, 4.881e-05, 4.02496e-05, 3.35436e-05, 2.81792e-05, 2.38236e-05, 2.02476e-05, 1.72869e-05, 1.48198e-05, 1.2753e-05, 1.1014e-05, 9.54536e-06, 
			0.000248104, 0.000144932, 0.000103267, 7.9199e-05, 6.30622e-05, 5.13664e-05, 4.2478e-05, 3.55098e-05, 2.99284e-05, 2.53884e-05, 2.1653e-05, 1.85526e-05, 1.59618e-05, 1.3785e-05, 1.19476e-05, 1.03908e-05, 
			0.000252046, 0.000148242, 0.000105987, 8.14984e-05, 6.50732e-05, 5.31552e-05, 4.40832e-05, 3.69606e-05, 3.12454e-05, 2.6587e-05, 2.27454e-05, 1.9549e-05, 1.6871e-05, 1.46146e-05, 1.27047e-05, 1.10815e-05, 
			0.00025461, 0.000150476, 0.000107926, 8.32102e-05, 6.66024e-05, 5.45398e-05, 4.53458e-05, 3.81154e-05, 3.23032e-05, 2.75564e-05, 2.3634e-05, 2.03632e-05, 1.76169e-05, 1.52978e-05, 1.33302e-05, 1.16541e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			5.606e-05, 7.36978e-05, 8.68044e-05, 9.67356e-05, 0.000104466, 0.000110605, 0.000115539, 0.000119527, 0.000122761, 0.000125384, 0.000127514, 0.000129244, 0.00013065, 0.000131796, 0.000132728, 0.000133491, 
			7.9564e-05, 9.71662e-05, 0.000110555, 0.000120894, 0.000129059, 0.000135611, 0.00014092, 0.000145242, 0.000148768, 0.000151646, 0.000153995, 0.000155914, 0.000157483, 0.000158767, 0.000159819, 0.000160684, 
			0.000103418, 0.000120987, 0.000134518, 0.000145077, 0.000153485, 0.000160275, 0.000165804, 0.000170327, 0.000174033, 0.000177069, 0.000179559, 0.000181601, 0.000183277, 0.000184654, 0.000185788, 0.000186723, 
			0.000127561, 0.000145069, 0.000158665, 0.000169352, 0.000177896, 0.000184827, 0.000190496, 0.000195148, 0.000198972, 0.000202117, 0.000204703, 0.000206832, 0.000208585, 0.000210029, 0.000211221, 0.000212207, 
			0.000151923, 0.000169409, 0.000183044, 0.000193806, 0.00020245, 0.000209477, 0.000215239, 0.000219982, 0.00022389, 0.000227111, 0.000229767, 0.000231959, 0.000233767, 0.000235262, 0.000236499, 0.000237526
		)
}

CapTable	"metal4_C_LATERALMIN" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000209862, 0.000111851, 7.45136e-05, 5.40174e-05, 4.0875e-05, 3.17142e-05, 2.50058e-05, 1.99406e-05, 1.60393e-05, 1.29941e-05, 1.05944e-05, 8.6896e-06, 7.1688e-06, 5.9484e-06, 4.96448e-06, 4.1677e-06, 
			0.00022174, 0.000120587, 8.12232e-05, 5.9338e-05, 4.51808e-05, 3.52526e-05, 2.79456e-05, 2.24026e-05, 1.81142e-05, 1.47514e-05, 1.20892e-05, 9.966e-06, 8.2627e-06, 6.88922e-06, 5.77652e-06, 4.87106e-06, 
			0.00022813, 0.000125657, 8.5267e-05, 6.26466e-05, 4.7932e-05, 3.75684e-05, 2.99118e-05, 2.40824e-05, 1.95563e-05, 1.59945e-05, 1.31646e-05, 1.08995e-05, 9.07578e-06, 7.59974e-06, 6.3995e-06, 5.41916e-06, 
			0.000231596, 0.00012878, 8.78948e-05, 6.48622e-05, 4.98396e-05, 3.92208e-05, 3.13452e-05, 2.53312e-05, 2.06482e-05, 1.6952e-05, 1.40066e-05, 1.16421e-05, 9.73254e-06, 8.18228e-06, 6.91778e-06, 5.88168e-06, 
			0.000234026, 0.000130965, 8.97944e-05, 6.65134e-05, 5.1271e-05, 4.0476e-05, 3.24526e-05, 2.6311e-05, 2.15172e-05, 1.77248e-05, 1.46957e-05, 1.22583e-05, 1.02851e-05, 8.67916e-06, 7.36594e-06, 6.28716e-06
		)
}

CapTable	"poly_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.77817e-05, 3.88046e-05, 4.57419e-05, 4.96464e-05, 5.17125e-05, 5.27698e-05, 5.3303e-05, 5.35694e-05, 5.37012e-05, 5.37676e-05, 5.38013e-05, 5.38189e-05, 5.38287e-05, 5.38345e-05, 5.38381e-05, 5.38405e-05, 
			3.84759e-05, 4.99791e-05, 5.71908e-05, 6.12439e-05, 6.33886e-05, 6.44892e-05, 6.5043e-05, 6.5319e-05, 6.54573e-05, 6.55266e-05, 6.55619e-05, 6.55805e-05, 6.55911e-05, 6.55973e-05, 6.56014e-05, 6.56023e-05, 
			4.94918e-05, 6.11331e-05, 6.84074e-05, 7.24962e-05, 7.46613e-05, 7.57705e-05, 7.6329e-05, 7.66078e-05, 7.6748e-05, 7.68178e-05, 7.68539e-05, 7.68731e-05, 7.68839e-05, 7.68907e-05, 7.68956e-05, 7.68982e-05, 
			6.06394e-05, 7.23096e-05, 7.95984e-05, 8.36932e-05, 8.5859e-05, 8.69691e-05, 8.75285e-05, 8.78082e-05, 8.79477e-05, 8.8018e-05, 8.80547e-05, 8.80747e-05, 8.80859e-05, 8.80915e-05, 8.80967e-05, 8.80997e-05, 
			7.17728e-05, 8.34168e-05, 9.06806e-05, 9.47539e-05, 9.69095e-05, 9.80132e-05, 9.85699e-05, 9.88489e-05, 9.89867e-05, 9.90572e-05, 9.90943e-05, 9.91142e-05, 9.91252e-05, 9.91331e-05, 9.91378e-05, 9.91423e-05
		)
}

CapTable	"poly_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.78155e-05, 5.23052e-05, 6.12561e-05, 6.62489e-05, 6.88756e-05, 7.02171e-05, 7.08941e-05, 7.12321e-05, 7.14001e-05, 7.14831e-05, 7.15228e-05, 7.15402e-05, 7.15473e-05, 7.15503e-05, 7.15516e-05, 7.15521e-05, 
			5.27725e-05, 6.78197e-05, 7.70932e-05, 8.22543e-05, 8.49735e-05, 8.63665e-05, 8.70674e-05, 8.74173e-05, 8.7591e-05, 8.76763e-05, 8.77159e-05, 8.77328e-05, 8.77397e-05, 8.77428e-05, 8.77441e-05, 8.77476e-05, 
			6.81018e-05, 8.32925e-05, 9.26254e-05, 9.78266e-05, 0.000100571, 0.000101974, 0.00010268, 0.000103032, 0.000103206, 0.000103291, 0.000103329, 0.000103345, 0.000103352, 0.000103355, 0.000103356, 0.000103357, 
			8.35924e-05, 9.87948e-05, 0.000108138, 0.000113345, 0.000116089, 0.000117491, 0.000118197, 0.000118548, 0.000118722, 0.000118805, 0.000118841, 0.000118856, 0.000118863, 0.00011887, 0.000118871, 0.000118872, 
			9.9035e-05, 0.000114193, 0.000123505, 0.000128683, 0.000131414, 0.000132809, 0.000133511, 0.00013386, 0.000134032, 0.000134112, 0.000134146, 0.000134161, 0.000134172, 0.000134175, 0.000134177, 0.000134177
		)
}

CapTable	"poly_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000100353, 4.24942e-05, 2.0327e-05, 9.97066e-06, 4.9219e-06, 2.43408e-06, 1.2029e-06, 5.93502e-07, 2.9171e-07, 1.42275e-07, 6.89502e-08, 3.39486e-08, 1.70301e-08, 8.24148e-09, 3.30688e-09, 3.56518e-10, 
			0.00010396, 4.40522e-05, 2.1071e-05, 1.03388e-05, 5.10592e-06, 2.52426e-06, 1.24763e-06, 6.1567e-07, 3.02696e-07, 1.48129e-07, 7.32302e-08, 3.77432e-08, 2.02442e-08, 1.08822e-08, 5.47994e-09, 2.06154e-09, 
			0.000104622, 4.43604e-05, 2.12312e-05, 1.04202e-05, 5.1447e-06, 2.54346e-06, 1.25703e-06, 6.20184e-07, 3.05022e-07, 1.5022e-07, 7.6131e-08, 4.08998e-08, 2.30702e-08, 1.32513e-08, 7.43852e-09, 3.79472e-09, 
			0.000104571, 4.43706e-05, 2.12316e-05, 1.04188e-05, 5.14398e-06, 2.54288e-06, 1.25646e-06, 6.1976e-07, 3.05274e-07, 1.51966e-07, 7.93144e-08, 4.43086e-08, 2.60754e-08, 1.55524e-08, 9.2971e-09, 5.29236e-09, 
			0.00010385, 4.41142e-05, 2.11084e-05, 1.03651e-05, 5.1175e-06, 2.5298e-06, 1.25008e-06, 6.17074e-07, 3.05294e-07, 1.54777e-07, 8.37434e-08, 4.87876e-08, 2.97876e-08, 1.88986e-08, 1.21465e-08, 7.73796e-09
		)
}

CapTable	"poly_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.06468e-05, 4.21307e-05, 5.05524e-05, 5.65565e-05, 6.07528e-05, 6.366e-05, 6.56636e-05, 6.70411e-05, 6.79918e-05, 6.86392e-05, 6.90876e-05, 6.93964e-05, 6.96084e-05, 6.97546e-05, 6.98543e-05, 6.99229e-05, 
			4.06578e-05, 5.26882e-05, 6.16548e-05, 6.81024e-05, 7.26474e-05, 7.58122e-05, 7.80047e-05, 7.95149e-05, 8.0559e-05, 8.12776e-05, 8.17735e-05, 8.21142e-05, 8.23489e-05, 8.25094e-05, 8.26205e-05, 8.26953e-05, 
			5.10794e-05, 6.3397e-05, 7.26437e-05, 7.93242e-05, 8.40582e-05, 8.73676e-05, 8.96686e-05, 9.12543e-05, 9.23519e-05, 9.31099e-05, 9.36314e-05, 9.39911e-05, 9.42386e-05, 9.44079e-05, 9.45238e-05, 9.46034e-05, 
			6.17872e-05, 7.42586e-05, 8.36686e-05, 9.04993e-05, 9.53487e-05, 9.87447e-05, 0.000101109, 0.000102748, 0.00010388, 0.000104662, 0.000105201, 0.000105572, 0.000105827, 0.000106001, 0.000106122, 0.000106204, 
			7.26121e-05, 8.51544e-05, 9.46492e-05, 0.000101556, 0.000106467, 0.000109917, 0.000112318, 0.000113984, 0.000115136, 0.000115931, 0.000116479, 0.000116856, 0.000117115, 0.000117293, 0.000117415, 0.000117498
		)
}

CapTable	"poly_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.34774e-05, 1.85903e-05, 2.24826e-05, 2.53141e-05, 2.73232e-05, 2.87257e-05, 2.96984e-05, 3.03711e-05, 3.08324e-05, 3.11553e-05, 3.13752e-05, 3.15261e-05, 3.16294e-05, 3.16995e-05, 3.17465e-05, 3.17775e-05, 
			1.75046e-05, 2.29184e-05, 2.70892e-05, 3.01604e-05, 3.23546e-05, 3.39001e-05, 3.4977e-05, 3.57278e-05, 3.6243e-05, 3.65997e-05, 3.68453e-05, 3.70138e-05, 3.71288e-05, 3.72065e-05, 3.72582e-05, 3.72929e-05, 
			2.1743e-05, 2.7308e-05, 3.16305e-05, 3.48442e-05, 3.71478e-05, 3.87748e-05, 3.99103e-05, 4.07063e-05, 4.12545e-05, 4.1633e-05, 4.18935e-05, 4.20719e-05, 4.21932e-05, 4.22747e-05, 4.23296e-05, 4.2363e-05, 
			2.60958e-05, 3.17708e-05, 3.62018e-05, 3.94929e-05, 4.18657e-05, 4.35493e-05, 4.47236e-05, 4.55432e-05, 4.61111e-05, 4.65032e-05, 4.67727e-05, 4.69568e-05, 4.70815e-05, 4.7166e-05, 4.7219e-05, 4.72536e-05, 
			3.05061e-05, 3.62622e-05, 4.07548e-05, 4.40941e-05, 4.6511e-05, 4.82181e-05, 4.94178e-05, 5.02533e-05, 5.08322e-05, 5.12316e-05, 5.15056e-05, 5.16923e-05, 5.18195e-05, 5.19014e-05, 5.19554e-05, 5.19895e-05
		)
}

CapTable	"poly_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000113688, 5.8348e-05, 3.5452e-05, 2.27704e-05, 1.5007e-05, 1.00313e-05, 6.761e-06, 4.57776e-06, 3.10584e-06, 2.10654e-06, 1.42515e-06, 9.59516e-07, 6.41174e-07, 4.23894e-07, 2.76226e-07, 1.76631e-07, 
			0.00012195, 6.33394e-05, 3.8728e-05, 2.49902e-05, 1.6528e-05, 1.10757e-05, 7.47728e-06, 5.06726e-06, 3.43898e-06, 2.3317e-06, 1.57624e-06, 1.05999e-06, 7.07334e-07, 4.67068e-07, 3.04272e-07, 1.9485e-07, 
			0.000125967, 6.5976e-05, 4.05298e-05, 2.62326e-05, 1.7388e-05, 1.16696e-05, 7.8851e-06, 5.3454e-06, 3.62658e-06, 2.4571e-06, 1.65907e-06, 1.11401e-06, 7.42148e-07, 4.8939e-07, 3.18608e-07, 2.04564e-07, 
			0.000128255, 6.75676e-05, 4.16236e-05, 2.69968e-05, 1.79186e-05, 1.2035e-05, 8.13504e-06, 5.514e-06, 3.73868e-06, 2.5304e-06, 1.70608e-06, 1.14355e-06, 7.60456e-07, 5.00628e-07, 3.26058e-07, 2.09662e-07, 
			0.000129108, 6.83474e-05, 4.22e-05, 2.74148e-05, 1.82113e-05, 1.22384e-05, 8.27272e-06, 5.6061e-06, 3.79922e-06, 2.56954e-06, 1.73107e-06, 1.15955e-06, 7.7088e-07, 5.08412e-07, 3.32212e-07, 2.15108e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.28583e-05, 4.46756e-05, 5.33453e-05, 5.96416e-05, 6.4213e-05, 6.75506e-05, 7.00074e-05, 7.18321e-05, 7.32018e-05, 7.42348e-05, 7.502e-05, 7.56194e-05, 7.60784e-05, 7.643e-05, 7.67021e-05, 7.69126e-05, 
			4.29046e-05, 5.51426e-05, 6.43092e-05, 7.10766e-05, 7.60603e-05, 7.9743e-05, 8.2483e-05, 8.4539e-05, 8.60887e-05, 8.72657e-05, 8.81643e-05, 8.88517e-05, 8.93778e-05, 8.97854e-05, 9.00995e-05, 9.03424e-05, 
			5.32641e-05, 6.56775e-05, 7.51058e-05, 8.21522e-05, 8.73946e-05, 9.13035e-05, 9.42356e-05, 9.64453e-05, 9.81206e-05, 9.93975e-05, 0.000100374, 0.000101123, 0.0001017, 0.000102146, 0.00010249, 0.000102756, 
			6.38116e-05, 7.63217e-05, 8.59287e-05, 9.31687e-05, 9.85971e-05, 0.000102673, 0.000105743, 0.000108069, 0.000109838, 0.000111191, 0.000112225, 0.000113023, 0.000113638, 0.000114113, 0.000114479, 0.000114761, 
			7.44215e-05, 8.69855e-05, 9.67083e-05, 0.000104081, 0.000109643, 0.000113835, 0.000117007, 0.000119417, 0.000121255, 0.00012266, 0.000123742, 0.000124574, 0.000125216, 0.000125711, 0.000126095, 0.000126391
		)
}

CapTable	"poly_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.21374e-06, 1.12084e-05, 1.34811e-05, 1.5172e-05, 1.64196e-05, 1.73407e-05, 1.80252e-05, 1.85373e-05, 1.89212e-05, 1.92132e-05, 1.94354e-05, 1.96056e-05, 1.97368e-05, 1.98392e-05, 1.99165e-05, 1.99755e-05, 
			1.04742e-05, 1.35756e-05, 1.5993e-05, 1.78252e-05, 1.91991e-05, 2.02285e-05, 2.10019e-05, 2.15839e-05, 2.20265e-05, 2.23641e-05, 2.26218e-05, 2.28204e-05, 2.2975e-05, 2.30917e-05, 2.31827e-05, 2.32519e-05, 
			1.27909e-05, 1.59515e-05, 1.84542e-05, 2.03754e-05, 2.18338e-05, 2.29359e-05, 2.37683e-05, 2.44014e-05, 2.4884e-05, 2.52535e-05, 2.5538e-05, 2.57579e-05, 2.59251e-05, 2.60546e-05, 2.61544e-05, 2.62314e-05, 
			1.51456e-05, 1.83485e-05, 2.09131e-05, 2.29009e-05, 2.44201e-05, 2.55744e-05, 2.64542e-05, 2.71244e-05, 2.76378e-05, 2.8032e-05, 2.83375e-05, 2.85706e-05, 2.87497e-05, 2.88884e-05, 2.89954e-05, 2.90786e-05, 
			1.75239e-05, 2.07595e-05, 2.33695e-05, 2.54036e-05, 2.6965e-05, 2.81605e-05, 2.90725e-05, 2.97707e-05, 3.03077e-05, 3.07215e-05, 3.10376e-05, 3.12827e-05, 3.14704e-05, 3.16159e-05, 3.17281e-05, 3.18146e-05
		)
}

CapTable	"poly_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00011593, 6.1634e-05, 3.94076e-05, 2.70034e-05, 1.92055e-05, 1.39866e-05, 1.03534e-05, 7.7542e-06, 5.85666e-06, 4.45078e-06, 3.3973e-06, 2.60106e-06, 1.99541e-06, 1.53253e-06, 1.17767e-06, 9.04958e-07, 
			0.000125339, 6.78548e-05, 4.39008e-05, 3.03672e-05, 2.17626e-05, 1.59445e-05, 1.18581e-05, 8.91212e-06, 6.74884e-06, 5.13824e-06, 3.92694e-06, 3.00894e-06, 2.30918e-06, 1.77385e-06, 1.36276e-06, 1.04674e-06, 
			0.000130573, 7.1692e-05, 4.6821e-05, 3.26174e-05, 2.35056e-05, 1.72966e-05, 1.29061e-05, 9.72428e-06, 7.3774e-06, 5.624e-06, 4.30174e-06, 3.29772e-06, 2.53158e-06, 1.94451e-06, 1.49359e-06, 1.14666e-06, 
			0.000134076, 7.44208e-05, 4.89382e-05, 3.42734e-05, 2.48008e-05, 1.83076e-05, 1.36938e-05, 1.03366e-05, 7.85198e-06, 5.99132e-06, 4.58522e-06, 3.5161e-06, 2.69936e-06, 2.07308e-06, 1.59185e-06, 1.22141e-06, 
			0.000136074, 7.6231e-05, 5.04102e-05, 3.54536e-05, 2.5734e-05, 1.90408e-05, 1.42676e-05, 1.07833e-05, 8.19876e-06, 6.2596e-06, 4.79262e-06, 3.67548e-06, 2.82164e-06, 2.1666e-06, 1.66315e-06, 1.27574e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.43793e-05, 4.65669e-05, 5.5472e-05, 6.19423e-05, 6.66636e-05, 7.01451e-05, 7.27456e-05, 7.47153e-05, 7.62273e-05, 7.74017e-05, 7.83231e-05, 7.90538e-05, 7.96367e-05, 8.01044e-05, 8.04825e-05, 8.07892e-05, 
			4.46159e-05, 5.71494e-05, 6.65112e-05, 7.34348e-05, 7.85697e-05, 8.24112e-05, 8.53187e-05, 8.75462e-05, 8.92729e-05, 9.06243e-05, 9.16941e-05, 9.25454e-05, 9.3228e-05, 9.37785e-05, 9.42252e-05, 9.45878e-05, 
			5.51015e-05, 6.77393e-05, 7.73258e-05, 8.45152e-05, 8.99124e-05, 9.3996e-05, 9.71171e-05, 9.95287e-05, 0.000101412, 0.000102896, 0.000104075, 0.000105019, 0.000105779, 0.000106393, 0.000106892, 0.0001073, 
			6.57145e-05, 7.839e-05, 8.81235e-05, 9.54997e-05, 0.000101091, 0.000105358, 0.000108644, 0.0001112, 0.000113208, 0.000114799, 0.000116067, 0.000117086, 0.000117909, 0.000118575, 0.000119119, 0.000119564, 
			7.63364e-05, 8.9015e-05, 9.88414e-05, 0.000106348, 0.000112084, 0.000116489, 0.000119902, 0.000122573, 0.000124679, 0.000126353, 0.000127695, 0.000128774, 0.000129648, 0.000130359, 0.000130939, 0.000131411
		)
}

CapTable	"poly_C_TOP_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.72651e-06, 7.77691e-06, 9.32723e-06, 1.04803e-05, 1.13353e-05, 1.19726e-05, 1.24532e-05, 1.28198e-05, 1.31024e-05, 1.33227e-05, 1.34965e-05, 1.36332e-05, 1.3743e-05, 1.38317e-05, 1.39029e-05, 1.39608e-05, 
			7.25212e-06, 9.3598e-06, 1.09968e-05, 1.22398e-05, 1.31783e-05, 1.38902e-05, 1.44341e-05, 1.4854e-05, 1.51811e-05, 1.54387e-05, 1.56415e-05, 1.58039e-05, 1.59349e-05, 1.60404e-05, 1.61256e-05, 1.61958e-05, 
			8.80249e-06, 1.09349e-05, 1.26206e-05, 1.39198e-05, 1.49146e-05, 1.56776e-05, 1.62667e-05, 1.67254e-05, 1.70859e-05, 1.73697e-05, 1.75961e-05, 1.77782e-05, 1.79248e-05, 1.80434e-05, 1.81409e-05, 1.82199e-05, 
			1.03641e-05, 1.25126e-05, 1.42333e-05, 1.55747e-05, 1.66116e-05, 1.74141e-05, 1.80387e-05, 1.85285e-05, 1.89135e-05, 1.92203e-05, 1.94662e-05, 1.96638e-05, 1.98234e-05, 1.99539e-05, 2.00598e-05, 2.01456e-05, 
			1.19304e-05, 1.4091e-05, 1.58376e-05, 1.72094e-05, 1.82781e-05, 1.91111e-05, 1.97636e-05, 2.02753e-05, 2.06823e-05, 2.10073e-05, 2.12679e-05, 2.14778e-05, 2.16489e-05, 2.17877e-05, 2.19003e-05, 2.19963e-05
		)
}

CapTable	"poly_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000116656, 6.27252e-05, 4.07848e-05, 2.85724e-05, 2.08796e-05, 1.56945e-05, 1.20413e-05, 9.38296e-06, 7.40024e-06, 5.89218e-06, 4.72708e-06, 3.81564e-06, 3.09492e-06, 2.52034e-06, 2.05912e-06, 1.68661e-06, 
			0.000126452, 6.93958e-05, 4.577e-05, 3.24494e-05, 2.3953e-05, 1.81576e-05, 1.40292e-05, 1.09958e-05, 8.71402e-06, 6.96598e-06, 5.60742e-06, 4.53868e-06, 3.69012e-06, 3.01112e-06, 2.4642e-06, 2.02138e-06, 
			0.000132125, 7.37158e-05, 4.91956e-05, 3.5209e-05, 2.6195e-05, 1.99874e-05, 1.55272e-05, 1.22249e-05, 9.72444e-06, 7.7982e-06, 6.29346e-06, 5.10518e-06, 4.15838e-06, 3.39832e-06, 2.78458e-06, 2.28672e-06, 
			0.000136108, 7.69524e-05, 5.18282e-05, 3.73726e-05, 2.79776e-05, 2.1458e-05, 1.67412e-05, 1.32278e-05, 1.05537e-05, 8.4839e-06, 6.86106e-06, 5.5752e-06, 4.54758e-06, 3.72082e-06, 3.05198e-06, 2.5084e-06, 
			0.000138615, 7.9285e-05, 5.3818e-05, 3.90516e-05, 2.93814e-05, 2.26288e-05, 1.7716e-05, 1.40391e-05, 1.12278e-05, 9.04428e-06, 7.32654e-06, 5.96196e-06, 4.86886e-06, 3.9877e-06, 3.27362e-06, 2.69214e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.87684e-05, 5.21708e-05, 6.189e-05, 6.89169e-05, 7.40354e-05, 7.78166e-05, 8.06589e-05, 8.28344e-05, 8.45295e-05, 8.58725e-05, 8.69533e-05, 8.78356e-05, 8.85654e-05, 8.91766e-05, 8.96942e-05, 9.01374e-05, 
			4.99078e-05, 6.35694e-05, 7.36982e-05, 8.11552e-05, 8.66792e-05, 9.08244e-05, 9.39863e-05, 9.64383e-05, 9.83701e-05, 9.9917e-05, 0.000101174, 0.000102207, 0.000103068, 0.000103794, 0.000104413, 0.000104945, 
			6.12114e-05, 7.48692e-05, 8.5157e-05, 9.28416e-05, 9.861e-05, 0.000102994, 0.000106374, 0.000109023, 0.000111131, 0.000112832, 0.000114224, 0.000115377, 0.000116345, 0.000117165, 0.000117866, 0.000118473, 
			7.25438e-05, 8.61254e-05, 9.64886e-05, 0.000104316, 0.000110256, 0.000114815, 0.000118364, 0.000121169, 0.000123417, 0.000125246, 0.000126752, 0.000128009, 0.000129067, 0.000129969, 0.000130745, 0.000131418, 
			8.38184e-05, 9.7307e-05, 0.000107701, 0.000115622, 0.000121687, 0.000126381, 0.000130063, 0.000132992, 0.000135358, 0.000137292, 0.000138895, 0.000140238, 0.000141375, 0.000142348, 0.000143189, 0.000143921
		)
}

CapTable	"poly_C_LATERAL_15NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000117677, 6.42972e-05, 4.2823e-05, 3.09752e-05, 2.35504e-05, 1.85512e-05, 1.50166e-05, 1.24238e-05, 1.04649e-05, 8.94798e-06, 7.74866e-06, 6.78304e-06, 5.99306e-06, 5.33744e-06, 4.78622e-06, 4.31724e-06, 
			0.000127928, 7.15106e-05, 4.84278e-05, 3.55338e-05, 2.73518e-05, 2.17736e-05, 1.77827e-05, 1.48227e-05, 1.25639e-05, 1.0799e-05, 9.39242e-06, 8.25178e-06, 7.3126e-06, 6.52868e-06, 5.86624e-06, 5.30006e-06, 
			0.000134126, 7.64308e-05, 5.2516e-05, 3.90034e-05, 3.0337e-05, 2.43672e-05, 2.0054e-05, 1.6826e-05, 1.4342e-05, 1.23866e-05, 1.08172e-05, 9.53664e-06, 8.47618e-06, 7.58644e-06, 6.83098e-06, 6.18258e-06, 
			0.000138703, 8.03316e-05, 5.58674e-05, 4.19246e-05, 3.29024e-05, 2.66338e-05, 2.20678e-05, 1.86243e-05, 1.59556e-05, 1.3841e-05, 1.21335e-05, 1.07324e-05, 9.56614e-06, 8.5829e-06, 7.74436e-06, 7.02174e-06, 
			0.000141842, 8.335e-05, 5.85824e-05, 4.43542e-05, 3.50708e-05, 2.85734e-05, 2.3808e-05, 2.01908e-05, 1.73704e-05, 1.51231e-05, 1.32991e-05, 1.17952e-05, 1.05378e-05, 9.47336e-06, 8.56226e-06, 7.77444e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.52842e-05, 2.10436e-05, 2.59657e-05, 2.9994e-05, 3.31664e-05, 3.56003e-05, 3.74258e-05, 3.87757e-05, 3.97653e-05, 4.04902e-05, 4.10014e-05, 4.1376e-05, 4.16448e-05, 4.18381e-05, 4.19759e-05, 4.20744e-05, 
			2.09475e-05, 2.69596e-05, 3.2145e-05, 3.6397e-05, 3.97533e-05, 4.23283e-05, 4.42655e-05, 4.57131e-05, 4.67584e-05, 4.75239e-05, 4.80815e-05, 4.8485e-05, 4.87755e-05, 4.8985e-05, 4.91356e-05, 4.9244e-05, 
			2.69171e-05, 3.30845e-05, 3.84092e-05, 4.27716e-05, 4.62134e-05, 4.88578e-05, 5.08539e-05, 5.23265e-05, 5.3414e-05, 5.42075e-05, 5.47847e-05, 5.5202e-05, 5.55035e-05, 5.57223e-05, 5.58798e-05, 5.59913e-05, 
			3.30673e-05, 3.93233e-05, 4.47138e-05, 4.91296e-05, 5.2614e-05, 5.52962e-05, 5.73101e-05, 5.88125e-05, 5.99179e-05, 6.0726e-05, 6.13136e-05, 6.17404e-05, 6.20502e-05, 6.22718e-05, 6.24362e-05, 6.25541e-05, 
			3.93196e-05, 4.5611e-05, 5.10336e-05, 5.54768e-05, 5.89742e-05, 6.1663e-05, 6.36946e-05, 6.52061e-05, 6.63209e-05, 6.71357e-05, 6.77296e-05, 6.81617e-05, 6.84739e-05, 6.87031e-05, 6.8868e-05, 6.8989e-05
		)
}

CapTable	"metal1_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.81378e-05, 3.89194e-05, 4.78889e-05, 5.5032e-05, 6.05488e-05, 6.47195e-05, 6.78146e-05, 7.00881e-05, 7.17372e-05, 7.29266e-05, 7.37933e-05, 7.44098e-05, 7.485e-05, 7.51636e-05, 7.53867e-05, 7.55456e-05, 
			3.92881e-05, 5.05066e-05, 5.98452e-05, 6.72956e-05, 7.30647e-05, 7.74311e-05, 8.06727e-05, 8.3048e-05, 8.48002e-05, 8.60593e-05, 8.69666e-05, 8.76172e-05, 8.80824e-05, 8.84144e-05, 8.86513e-05, 8.88207e-05, 
			5.10443e-05, 6.24399e-05, 7.19294e-05, 7.9514e-05, 8.53804e-05, 8.98214e-05, 9.31315e-05, 9.55678e-05, 9.73447e-05, 9.86309e-05, 9.95571e-05, 0.000100221, 0.000100697, 0.000101036, 0.000101279, 0.000101458, 
			6.30803e-05, 7.45471e-05, 8.41014e-05, 9.17264e-05, 9.76404e-05, 0.000102114, 0.000105454, 0.000107911, 0.000109703, 0.000111, 0.000111935, 0.000112606, 0.000113086, 0.000113435, 0.000113677, 0.000113854, 
			7.5242e-05, 8.67168e-05, 9.62704e-05, 0.000103904, 0.000109827, 0.000114309, 0.000117653, 0.000120115, 0.000121909, 0.000123209, 0.000124146, 0.000124819, 0.000125307, 0.000125648, 0.000125897, 0.000126074
		)
}

CapTable	"metal1_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000182524, 9.5941e-05, 6.07704e-05, 4.092e-05, 2.82878e-05, 1.98032e-05, 1.39606e-05, 9.87824e-06, 7.00746e-06, 4.97824e-06, 3.54032e-06, 2.52016e-06, 1.79619e-06, 1.28229e-06, 9.17394e-07, 6.58042e-07, 
			0.000190165, 0.000100735, 6.39928e-05, 4.31644e-05, 2.988e-05, 2.09466e-05, 1.47858e-05, 1.04759e-05, 7.43538e-06, 5.28584e-06, 3.75894e-06, 2.67384e-06, 1.90206e-06, 1.35264e-06, 9.61058e-07, 6.81274e-07, 
			0.000192807, 0.000102663, 6.53404e-05, 4.41164e-05, 3.05662e-05, 2.14458e-05, 1.51436e-05, 1.07347e-05, 7.6213e-06, 5.41562e-06, 3.84916e-06, 2.73496e-06, 1.94151e-06, 1.37569e-06, 9.71234e-07, 6.80666e-07, 
			0.000193421, 0.00010338, 6.58858e-05, 4.4531e-05, 3.08696e-05, 2.16688e-05, 1.53079e-05, 1.08485e-05, 7.70014e-06, 5.46802e-06, 3.88138e-06, 2.7516e-06, 1.94583e-06, 1.36921e-06, 9.56782e-07, 6.59886e-07, 
			0.000192568, 0.000103303, 6.5933e-05, 4.45892e-05, 3.09268e-05, 2.1721e-05, 1.53424e-05, 1.08699e-05, 7.71014e-06, 5.4683e-06, 3.87342e-06, 2.73634e-06, 1.92307e-06, 1.34185e-06, 9.24006e-07, 6.2402e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.72292e-05, 2.2969e-05, 2.80146e-05, 3.24552e-05, 3.63177e-05, 3.96309e-05, 4.24346e-05, 4.47797e-05, 4.67227e-05, 4.83185e-05, 4.96234e-05, 5.06815e-05, 5.15374e-05, 5.2227e-05, 5.27895e-05, 5.32238e-05, 
			2.24406e-05, 2.84007e-05, 3.37609e-05, 3.85102e-05, 4.26497e-05, 4.62007e-05, 4.92078e-05, 5.17256e-05, 5.38102e-05, 5.55251e-05, 5.69257e-05, 5.80647e-05, 5.89805e-05, 5.9725e-05, 6.03221e-05, 6.08002e-05, 
			2.80368e-05, 3.41761e-05, 3.97346e-05, 4.46656e-05, 4.89623e-05, 5.26481e-05, 5.57691e-05, 5.83789e-05, 6.05431e-05, 6.23224e-05, 6.37755e-05, 6.49579e-05, 6.59115e-05, 6.66824e-05, 6.73022e-05, 6.77994e-05, 
			3.39035e-05, 4.01712e-05, 4.58515e-05, 5.089e-05, 5.52811e-05, 5.90436e-05, 6.22308e-05, 6.48953e-05, 6.71042e-05, 6.89204e-05, 7.0411e-05, 7.16103e-05, 7.25878e-05, 7.33743e-05, 7.40079e-05, 7.45159e-05, 
			3.99624e-05, 4.63015e-05, 5.20535e-05, 5.71563e-05, 6.1597e-05, 6.54034e-05, 6.86246e-05, 7.13192e-05, 7.35482e-05, 7.53884e-05, 7.68896e-05, 7.81096e-05, 7.90974e-05, 7.98939e-05, 8.05342e-05, 8.10485e-05
		)
}

CapTable	"metal1_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.22332e-05, 1.64132e-05, 2.01054e-05, 2.33604e-05, 2.61987e-05, 2.86363e-05, 3.07041e-05, 3.24361e-05, 3.38721e-05, 3.50543e-05, 3.60188e-05, 3.68033e-05, 3.74379e-05, 3.79473e-05, 3.83484e-05, 3.86863e-05, 
			1.58704e-05, 2.01807e-05, 2.40865e-05, 2.7562e-05, 3.05997e-05, 3.32121e-05, 3.54284e-05, 3.72856e-05, 3.88266e-05, 4.00947e-05, 4.11313e-05, 4.19732e-05, 4.26586e-05, 4.32037e-05, 4.36442e-05, 4.39985e-05, 
			1.97692e-05, 2.41961e-05, 2.82378e-05, 3.18424e-05, 3.49947e-05, 3.77045e-05, 4.00035e-05, 4.19319e-05, 4.35299e-05, 4.48458e-05, 4.59206e-05, 4.6793e-05, 4.75016e-05, 4.80707e-05, 4.85294e-05, 4.88974e-05, 
			2.38615e-05, 2.83718e-05, 3.25027e-05, 3.61886e-05, 3.94073e-05, 4.21772e-05, 4.45246e-05, 4.64925e-05, 4.81246e-05, 4.94685e-05, 5.05587e-05, 5.14567e-05, 5.21777e-05, 5.27621e-05, 5.32291e-05, 5.36051e-05, 
			2.80886e-05, 3.26545e-05, 3.68405e-05, 4.05721e-05, 4.38312e-05, 4.66312e-05, 4.90054e-05, 5.09936e-05, 5.26481e-05, 5.40001e-05, 5.51086e-05, 5.60113e-05, 5.6742e-05, 5.73313e-05, 5.78053e-05, 5.81856e-05
		)
}

CapTable	"metal1_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000192067, 0.000108249, 7.4507e-05, 5.49964e-05, 4.19186e-05, 3.24928e-05, 2.54274e-05, 2.0013e-05, 1.58087e-05, 1.25174e-05, 9.9273e-06, 7.8835e-06, 6.26684e-06, 4.98714e-06, 3.9732e-06, 3.1676e-06, 
			0.000203352, 0.000115968, 8.00786e-05, 5.91528e-05, 4.50936e-05, 3.49562e-05, 2.73588e-05, 2.15358e-05, 1.70152e-05, 1.34752e-05, 1.069e-05, 8.49106e-06, 6.75086e-06, 5.37328e-06, 4.28066e-06, 3.41326e-06, 
			0.00020873, 0.000119965, 8.30266e-05, 6.1374e-05, 4.6801e-05, 3.62864e-05, 2.84034e-05, 2.23622e-05, 1.7671e-05, 1.39978e-05, 1.11069e-05, 8.8241e-06, 7.01786e-06, 5.58688e-06, 4.45144e-06, 3.55022e-06, 
			0.000211274, 0.000122106, 8.46518e-05, 6.26234e-05, 4.77696e-05, 3.70442e-05, 2.90016e-05, 2.28372e-05, 1.80492e-05, 1.42991e-05, 1.13483e-05, 9.01698e-06, 7.1725e-06, 5.70964e-06, 4.55002e-06, 3.62904e-06, 
			0.000211738, 0.00012299, 8.5413e-05, 6.32286e-05, 4.82518e-05, 3.74334e-05, 2.9312e-05, 2.30852e-05, 1.82467e-05, 1.44585e-05, 1.14758e-05, 9.1191e-06, 7.25356e-06, 5.77478e-06, 4.60146e-06, 3.66992e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.88516e-05, 2.48237e-05, 2.99956e-05, 3.45326e-05, 3.85083e-05, 4.1974e-05, 4.49769e-05, 4.75649e-05, 4.97853e-05, 5.16823e-05, 5.32986e-05, 5.46738e-05, 5.58435e-05, 5.6834e-05, 5.76756e-05, 5.83888e-05, 
			2.40928e-05, 3.01709e-05, 3.5595e-05, 4.04121e-05, 4.46581e-05, 4.83745e-05, 5.16051e-05, 5.43971e-05, 5.67984e-05, 5.8857e-05, 6.06156e-05, 6.21144e-05, 6.33916e-05, 6.44773e-05, 6.54005e-05, 6.61848e-05, 
			2.96322e-05, 3.58179e-05, 4.13979e-05, 4.63801e-05, 5.07894e-05, 5.46588e-05, 5.80296e-05, 6.09487e-05, 6.34644e-05, 6.56257e-05, 6.74746e-05, 6.9055e-05, 7.04012e-05, 7.1549e-05, 7.25246e-05, 7.33554e-05, 
			3.53935e-05, 4.16532e-05, 4.73329e-05, 5.24231e-05, 5.69396e-05, 6.09086e-05, 6.43722e-05, 6.73783e-05, 6.99744e-05, 7.22044e-05, 7.41184e-05, 7.57538e-05, 7.71501e-05, 7.83402e-05, 7.93544e-05, 8.02134e-05, 
			4.13128e-05, 4.76139e-05, 5.33592e-05, 5.85184e-05, 6.31027e-05, 6.7139e-05, 7.06675e-05, 7.37322e-05, 7.63822e-05, 7.86625e-05, 8.06201e-05, 8.22962e-05, 8.37268e-05, 8.49476e-05, 8.59909e-05, 8.68738e-05
		)
}

CapTable	"metal1_C_TOP_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			7.88538e-06, 1.04305e-05, 1.26484e-05, 1.46028e-05, 1.63233e-05, 1.78308e-05, 1.9142e-05, 2.02756e-05, 2.12507e-05, 2.2087e-05, 2.28019e-05, 2.34104e-05, 2.39271e-05, 2.43684e-05, 2.47419e-05, 2.50591e-05, 
			9.98515e-06, 1.25479e-05, 1.48586e-05, 1.69263e-05, 1.87623e-05, 2.03781e-05, 2.17887e-05, 2.30137e-05, 2.40716e-05, 2.49796e-05, 2.5758e-05, 2.6424e-05, 2.69909e-05, 2.74742e-05, 2.78851e-05, 2.82349e-05, 
			1.21898e-05, 1.47797e-05, 1.71499e-05, 1.92891e-05, 2.11952e-05, 2.28778e-05, 2.43528e-05, 2.56357e-05, 2.67454e-05, 2.76999e-05, 2.85216e-05, 2.92237e-05, 2.98236e-05, 3.03358e-05, 3.07722e-05, 3.11431e-05, 
			1.44705e-05, 1.70868e-05, 1.95005e-05, 2.16857e-05, 2.36396e-05, 2.53696e-05, 2.68888e-05, 2.82111e-05, 2.93562e-05, 3.03462e-05, 3.11967e-05, 3.19253e-05, 3.25494e-05, 3.30821e-05, 3.35362e-05, 3.39281e-05, 
			1.68122e-05, 1.94483e-05, 2.18904e-05, 2.41098e-05, 2.60981e-05, 2.78592e-05, 2.94071e-05, 3.07594e-05, 3.19314e-05, 3.29445e-05, 3.38157e-05, 3.45629e-05, 3.52034e-05, 3.57525e-05, 3.62177e-05, 3.66205e-05
		)
}

CapTable	"metal1_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000194182, 0.000111248, 7.8268e-05, 5.93586e-05, 4.67054e-05, 3.75304e-05, 3.05614e-05, 2.51128e-05, 2.0771e-05, 1.72653e-05, 1.44076e-05, 1.20617e-05, 1.01244e-05, 8.51764e-06, 7.17972e-06, 6.06272e-06, 
			0.00020651, 0.000120065, 8.49584e-05, 6.46226e-05, 5.09536e-05, 4.10164e-05, 3.34542e-05, 2.75312e-05, 2.2803e-05, 1.89784e-05, 1.58554e-05, 1.32866e-05, 1.11615e-05, 9.39652e-06, 7.92438e-06, 6.6933e-06, 
			0.000212996, 0.000125166, 8.89792e-05, 6.78648e-05, 5.36174e-05, 4.32324e-05, 3.53126e-05, 2.90986e-05, 2.41302e-05, 2.01044e-05, 1.68118e-05, 1.40993e-05, 1.18532e-05, 9.98422e-06, 8.4242e-06, 7.11846e-06, 
			0.000216646, 0.000128368, 9.16006e-05, 7.00372e-05, 5.54298e-05, 4.47568e-05, 3.6602e-05, 3.01936e-05, 2.50614e-05, 2.08974e-05, 1.74869e-05, 1.46749e-05, 1.23425e-05, 1.04007e-05, 8.77836e-06, 7.41852e-06, 
			0.000218166, 0.000130233, 9.32604e-05, 7.14568e-05, 5.66442e-05, 4.57998e-05, 3.74934e-05, 3.09554e-05, 2.57124e-05, 2.1454e-05, 1.79622e-05, 1.50799e-05, 1.26878e-05, 1.06939e-05, 9.02744e-06, 7.62966e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.43354e-05, 3.1721e-05, 3.79836e-05, 4.33984e-05, 4.81038e-05, 5.21937e-05, 5.57449e-05, 5.88256e-05, 6.14981e-05, 6.38176e-05, 6.58341e-05, 6.75905e-05, 6.91246e-05, 7.04686e-05, 7.16498e-05, 7.26919e-05, 
			3.041e-05, 3.7712e-05, 4.41122e-05, 4.97284e-05, 5.46488e-05, 5.89496e-05, 6.27026e-05, 6.5974e-05, 6.88266e-05, 7.13151e-05, 7.34893e-05, 7.5393e-05, 7.70643e-05, 7.85357e-05, 7.98354e-05, 8.09874e-05, 
			3.667e-05, 4.39158e-05, 5.03602e-05, 5.60606e-05, 6.10834e-05, 6.54946e-05, 6.93616e-05, 7.27476e-05, 7.57122e-05, 7.83104e-05, 8.05906e-05, 8.25958e-05, 8.43634e-05, 8.59273e-05, 8.73134e-05, 8.85472e-05, 
			4.2999e-05, 5.01728e-05, 5.6607e-05, 6.23312e-05, 6.73982e-05, 7.18686e-05, 7.58026e-05, 7.92608e-05, 8.2301e-05, 8.49762e-05, 8.73334e-05, 8.94146e-05, 9.12562e-05, 9.28906e-05, 9.43465e-05, 9.56467e-05, 
			4.9341e-05, 5.64242e-05, 6.2819e-05, 6.85342e-05, 7.36132e-05, 7.81092e-05, 8.20826e-05, 8.5589e-05, 8.86822e-05, 9.14138e-05, 9.38292e-05, 9.59698e-05, 9.78706e-05, 9.95636e-05, 0.000101076, 0.000102432
		)
}

CapTable	"metal1_C_LATERAL_24NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000196068, 0.000113896, 8.16424e-05, 6.33956e-05, 5.1324e-05, 4.26404e-05, 3.607e-05, 3.09304e-05, 2.68142e-05, 2.34592e-05, 2.06858e-05, 1.83669e-05, 1.64085e-05, 1.47403e-05, 1.33081e-05, 1.20696e-05, 
			0.00020933, 0.000123764, 8.94918e-05, 6.99126e-05, 5.69022e-05, 4.75174e-05, 4.03994e-05, 3.4817e-05, 3.03332e-05, 2.66666e-05, 2.36252e-05, 2.10726e-05, 1.89085e-05, 1.70579e-05, 1.54628e-05, 1.40781e-05, 
			0.000216878, 0.00013002, 9.47448e-05, 7.44484e-05, 6.09066e-05, 5.11064e-05, 4.36514e-05, 3.77874e-05, 3.30628e-05, 2.91866e-05, 2.59604e-05, 2.32432e-05, 2.09316e-05, 1.89477e-05, 1.72316e-05, 1.57368e-05, 
			0.000221718, 0.000134485, 9.8688e-05, 7.79858e-05, 6.41138e-05, 5.40434e-05, 4.63604e-05, 4.02992e-05, 3.5401e-05, 3.13698e-05, 2.80036e-05, 2.51594e-05, 2.27318e-05, 2.06414e-05, 1.88275e-05, 1.72423e-05, 
			0.000224532, 0.000137699, 0.000101738, 8.08238e-05, 6.67618e-05, 5.65248e-05, 4.86854e-05, 4.2483e-05, 3.74558e-05, 3.33062e-05, 2.98308e-05, 2.68852e-05, 2.43634e-05, 2.21854e-05, 2.02896e-05, 1.86282e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			3.9486e-05, 5.44337e-05, 6.54704e-05, 7.30408e-05, 7.79708e-05, 8.10739e-05, 8.29924e-05, 8.41449e-05, 8.48446e-05, 8.52632e-05, 8.55142e-05, 8.56627e-05, 8.57488e-05, 8.58e-05, 8.58295e-05, 8.58463e-05, 
			5.79994e-05, 7.33413e-05, 8.46096e-05, 9.23236e-05, 9.73448e-05, 0.000100501, 0.000102447, 0.000103629, 0.000104342, 0.000104768, 0.000105021, 0.00010517, 0.000105258, 0.00010531, 0.000105338, 0.000105355, 
			7.6982e-05, 9.24006e-05, 0.000103702, 0.000111442, 0.000116454, 0.000119618, 0.000121564, 0.000122746, 0.000123457, 0.000123883, 0.000124135, 0.000124282, 0.000124368, 0.00012442, 0.00012445, 0.000124467, 
			9.60372e-05, 0.000111432, 0.000122721, 0.000130417, 0.00013543, 0.000138581, 0.000140523, 0.0001417, 0.000142406, 0.000142827, 0.000143077, 0.000143222, 0.000143306, 0.000143357, 0.000143387, 0.000143405, 
			0.000115061, 0.00013039, 0.000141618, 0.000149288, 0.000154269, 0.000157396, 0.000159323, 0.00016049, 0.00016119, 0.000161608, 0.000161852, 0.000161997, 0.000162084, 0.000162134, 0.000162165, 0.000162183
		)
}

CapTable	"metal1_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.63828e-05, 3.72191e-05, 4.55998e-05, 5.1477e-05, 5.53541e-05, 5.78073e-05, 5.93166e-05, 6.02459e-05, 6.08028e-05, 6.11375e-05, 6.13319e-05, 6.14455e-05, 6.15102e-05, 6.15423e-05, 6.15575e-05, 6.15643e-05, 
			3.82138e-05, 4.93895e-05, 5.79696e-05, 6.39794e-05, 6.7938e-05, 7.04421e-05, 7.19922e-05, 7.29377e-05, 7.35019e-05, 7.38388e-05, 7.40358e-05, 7.41498e-05, 7.42096e-05, 7.42368e-05, 7.42531e-05, 7.42593e-05, 
			5.04276e-05, 6.16788e-05, 7.02945e-05, 7.63097e-05, 8.02812e-05, 8.27925e-05, 8.43463e-05, 8.52877e-05, 8.58517e-05, 8.61845e-05, 8.63767e-05, 8.64837e-05, 8.65397e-05, 8.65639e-05, 8.65765e-05, 8.65822e-05, 
			6.27446e-05, 7.40019e-05, 8.2601e-05, 8.86129e-05, 9.25667e-05, 9.50719e-05, 9.66102e-05, 9.75443e-05, 9.81015e-05, 9.84321e-05, 9.86154e-05, 9.87213e-05, 9.87737e-05, 9.87954e-05, 9.88071e-05, 9.88124e-05, 
			7.511e-05, 8.63102e-05, 9.48807e-05, 0.00010086, 0.000104791, 0.000107262, 0.00010879, 0.000109717, 0.000110266, 0.000110586, 0.000110768, 0.000110865, 0.00011091, 0.000110933, 0.000110944, 0.000110949
		)
}

CapTable	"metal1_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000168752, 7.95372e-05, 4.41198e-05, 2.55782e-05, 1.50381e-05, 8.8768e-06, 5.237e-06, 3.07722e-06, 1.79456e-06, 1.03327e-06, 5.83866e-07, 3.20766e-07, 1.70038e-07, 8.67418e-08, 4.20394e-08, 1.83823e-08, 
			0.000171693, 8.10112e-05, 4.49378e-05, 2.6039e-05, 1.52982e-05, 9.01898e-06, 5.30826e-06, 3.10762e-06, 1.80342e-06, 1.03139e-06, 5.77874e-07, 3.15358e-07, 1.67595e-07, 8.69816e-08, 4.34714e-08, 2.02618e-08, 
			0.000171445, 8.09936e-05, 4.49224e-05, 2.60146e-05, 1.52707e-05, 8.98762e-06, 5.27598e-06, 3.0781e-06, 1.77714e-06, 1.01066e-06, 5.637e-07, 3.07816e-07, 1.65234e-07, 8.78398e-08, 4.5876e-08, 2.31046e-08, 
			0.000170381, 8.05988e-05, 4.4697e-05, 2.58772e-05, 1.5175e-05, 8.91694e-06, 5.22534e-06, 3.0408e-06, 1.7512e-06, 9.9409e-07, 5.55742e-07, 3.06198e-07, 1.68227e-07, 9.308e-08, 5.16742e-08, 2.87154e-08, 
			0.00016857, 7.99068e-05, 4.43214e-05, 2.56398e-05, 1.50213e-05, 8.8289e-06, 5.16574e-06, 3.00166e-06, 1.72768e-06, 9.82438e-07, 5.5249e-07, 3.09932e-07, 1.76094e-07, 1.01947e-07, 6.03542e-08, 3.66736e-08
		)
}

CapTable	"metal1_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.20064e-05, 5.70699e-05, 6.8581e-05, 7.71785e-05, 8.35179e-05, 8.81529e-05, 9.15314e-05, 9.39876e-05, 9.57741e-05, 9.70749e-05, 9.8025e-05, 9.87139e-05, 9.92179e-05, 9.95873e-05, 9.98571e-05, 0.000100055, 
			5.99859e-05, 7.5353e-05, 8.72032e-05, 9.61378e-05, 0.000102777, 0.000107669, 0.000111254, 0.000113877, 0.000115789, 0.00011719, 0.000118208, 0.000118954, 0.000119501, 0.0001199, 0.000120192, 0.000120406, 
			7.84322e-05, 9.39036e-05, 0.000105909, 0.000115014, 0.000121814, 0.000126842, 0.000130541, 0.000133253, 0.00013524, 0.000136691, 0.000137753, 0.000138531, 0.000139101, 0.000139518, 0.000139823, 0.000140046, 
			9.70405e-05, 0.000112545, 0.000124635, 0.000133834, 0.000140725, 0.000145837, 0.0001496, 0.00015237, 0.000154398, 0.000155884, 0.000156973, 0.000157771, 0.000158354, 0.000158781, 0.000159095, 0.000159324, 
			0.000115734, 0.000131215, 0.000143333, 0.000152581, 0.000159519, 0.000164668, 0.000168474, 0.000171271, 0.000173325, 0.000174831, 0.000175934, 0.000176742, 0.000177334, 0.000177768, 0.000178085, 0.000178317
		)
}

CapTable	"metal1_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.08942e-05, 1.51321e-05, 1.86418e-05, 2.13935e-05, 2.34807e-05, 2.50365e-05, 2.6181e-05, 2.70224e-05, 2.76377e-05, 2.80873e-05, 2.84137e-05, 2.86572e-05, 2.88327e-05, 2.8961e-05, 2.90546e-05, 2.91229e-05, 
			1.49679e-05, 1.93194e-05, 2.29694e-05, 2.58612e-05, 2.80746e-05, 2.97336e-05, 3.09641e-05, 3.1871e-05, 3.25387e-05, 3.30251e-05, 3.33871e-05, 3.36495e-05, 3.38417e-05, 3.39821e-05, 3.40848e-05, 3.41605e-05, 
			1.91818e-05, 2.35998e-05, 2.73294e-05, 3.02968e-05, 3.25769e-05, 3.42948e-05, 3.55738e-05, 3.65186e-05, 3.72142e-05, 3.77282e-05, 3.81038e-05, 3.8379e-05, 3.85806e-05, 3.8728e-05, 3.88356e-05, 3.89151e-05, 
			2.34753e-05, 2.79413e-05, 3.17181e-05, 3.47312e-05, 3.7053e-05, 3.88058e-05, 4.0118e-05, 4.10831e-05, 4.17974e-05, 4.23228e-05, 4.27086e-05, 4.29916e-05, 4.31999e-05, 4.33514e-05, 4.34607e-05, 4.35422e-05, 
			2.7833e-05, 3.23262e-05, 3.61316e-05, 3.91692e-05, 4.15119e-05, 4.3283e-05, 4.46059e-05, 4.55867e-05, 4.63106e-05, 4.68433e-05, 4.72347e-05, 4.7523e-05, 4.7733e-05, 4.78865e-05, 4.79984e-05, 4.80795e-05
		)
}

CapTable	"metal1_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000177444, 9.0927e-05, 5.65592e-05, 3.7691e-05, 2.59694e-05, 1.82386e-05, 1.29676e-05, 9.29702e-06, 6.70516e-06, 4.85682e-06, 3.52932e-06, 2.5709e-06, 1.87636e-06, 1.37167e-06, 1.00429e-06, 7.36554e-07, 
			0.000184273, 9.55786e-05, 5.99164e-05, 4.0161e-05, 2.7803e-05, 1.96031e-05, 1.39814e-05, 1.00485e-05, 7.26086e-06, 5.2672e-06, 3.83162e-06, 2.79316e-06, 2.03948e-06, 1.49123e-06, 1.09184e-06, 8.0056e-07, 
			0.000187007, 9.78506e-05, 6.16602e-05, 4.14868e-05, 2.88096e-05, 2.03622e-05, 1.45499e-05, 1.0473e-05, 7.5763e-06, 5.50008e-06, 4.00304e-06, 2.91894e-06, 2.13154e-06, 1.55851e-06, 1.141e-06, 8.36516e-07, 
			0.000188071, 9.90496e-05, 6.26384e-05, 4.2261e-05, 2.94048e-05, 2.08146e-05, 1.48901e-05, 1.07273e-05, 7.76464e-06, 5.63874e-06, 4.10442e-06, 2.99264e-06, 2.1846e-06, 1.59666e-06, 1.16853e-06, 8.56268e-07, 
			0.000187755, 9.94528e-05, 6.3079e-05, 4.26334e-05, 2.97058e-05, 2.10576e-05, 1.50755e-05, 1.08653e-05, 7.8663e-06, 5.71272e-06, 4.15764e-06, 3.03014e-06, 2.2111e-06, 1.61503e-06, 1.18095e-06, 8.64862e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.39498e-05, 5.93809e-05, 7.11161e-05, 7.99025e-05, 8.64612e-05, 9.1364e-05, 9.50486e-05, 9.78359e-05, 9.99637e-05, 0.0001016, 0.000102871, 0.000103863, 0.000104644, 0.000105263, 0.000105754, 0.000106147, 
			6.20941e-05, 7.76719e-05, 8.96599e-05, 9.87607e-05, 0.000105638, 0.000110843, 0.000114797, 0.000117818, 0.000120146, 0.000121949, 0.000123358, 0.000124465, 0.00012534, 0.000126036, 0.00012659, 0.000127037, 
			8.05534e-05, 9.61169e-05, 0.000108208, 0.000117478, 0.000124546, 0.000129939, 0.000134067, 0.000137247, 0.000139709, 0.000141627, 0.000143134, 0.000144323, 0.000145266, 0.000146012, 0.000146616, 0.000147099, 
			9.9071e-05, 0.000114593, 0.000126745, 0.000136123, 0.000143323, 0.000148851, 0.000153108, 0.000156399, 0.000158961, 0.000160966, 0.000162546, 0.000163794, 0.000164791, 0.000165581, 0.000166218, 0.00016673, 
			0.000117617, 0.000133068, 0.000145246, 0.000154696, 0.000161988, 0.000167606, 0.000171952, 0.000175329, 0.000177964, 0.000180033, 0.000181666, 0.000182963, 0.000183992, 0.00018482, 0.000185483, 0.000186017
		)
}

CapTable	"metal1_C_TOP_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.7524e-06, 9.30367e-06, 1.13981e-05, 1.30465e-05, 1.43142e-05, 1.52814e-05, 1.60182e-05, 1.65825e-05, 1.70164e-05, 1.73528e-05, 1.76135e-05, 1.7819e-05, 1.7981e-05, 1.81093e-05, 1.82122e-05, 1.8294e-05, 
			9.14608e-06, 1.17163e-05, 1.38717e-05, 1.55955e-05, 1.69424e-05, 1.79815e-05, 1.87832e-05, 1.94037e-05, 1.98838e-05, 2.02594e-05, 2.05545e-05, 2.07875e-05, 2.09723e-05, 2.11195e-05, 2.12381e-05, 2.13315e-05, 
			1.15704e-05, 1.41533e-05, 1.63426e-05, 1.81106e-05, 1.95041e-05, 2.05914e-05, 2.14374e-05, 2.20934e-05, 2.26073e-05, 2.30119e-05, 2.33303e-05, 2.35826e-05, 2.37837e-05, 2.3951e-05, 2.40766e-05, 2.41804e-05, 
			1.40128e-05, 1.66046e-05, 1.88195e-05, 2.06206e-05, 2.20498e-05, 2.31704e-05, 2.40459e-05, 2.47325e-05, 2.52704e-05, 2.56952e-05, 2.60314e-05, 2.62998e-05, 2.65112e-05, 2.66869e-05, 2.68251e-05, 2.69353e-05, 
			1.64731e-05, 1.90756e-05, 2.13094e-05, 2.31345e-05, 2.45856e-05, 2.57292e-05, 2.66284e-05, 2.7335e-05, 2.78917e-05, 2.83324e-05, 2.86818e-05, 2.89593e-05, 2.91858e-05, 2.93647e-05, 2.95086e-05, 2.96254e-05
		)
}

CapTable	"metal1_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000179118, 9.34254e-05, 5.97228e-05, 4.1289e-05, 2.97726e-05, 2.20576e-05, 1.66612e-05, 1.27716e-05, 9.90394e-06, 7.75168e-06, 6.11288e-06, 4.84968e-06, 3.86596e-06, 3.09392e-06, 2.48336e-06, 1.99804e-06, 
			0.000186985, 9.91928e-05, 6.42104e-05, 4.48568e-05, 3.26404e-05, 2.43742e-05, 1.85367e-05, 1.4292e-05, 1.11376e-05, 8.75346e-06, 6.92662e-06, 5.51066e-06, 4.40342e-06, 3.53074e-06, 2.83846e-06, 2.2867e-06, 
			0.000190843, 0.000102596, 6.70456e-05, 4.72036e-05, 3.45808e-05, 2.59734e-05, 1.98513e-05, 1.5371e-05, 1.20213e-05, 9.4762e-06, 7.51712e-06, 5.99272e-06, 4.79648e-06, 3.85044e-06, 3.09896e-06, 2.4983e-06, 
			0.000193035, 0.000104878, 6.90334e-05, 4.88972e-05, 3.60002e-05, 2.71546e-05, 2.08302e-05, 1.61786e-05, 1.26859e-05, 1.00219e-05, 7.96404e-06, 6.35824e-06, 5.09514e-06, 4.09422e-06, 3.29702e-06, 2.65936e-06, 
			0.000193781, 0.000106279, 7.0382e-05, 5.00816e-05, 3.70168e-05, 2.8022e-05, 2.15544e-05, 1.67795e-05, 1.31828e-05, 1.0431e-05, 8.30018e-06, 6.63378e-06, 5.31996e-06, 4.27772e-06, 3.44646e-06, 2.78046e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.91886e-05, 6.62778e-05, 7.9238e-05, 8.89304e-05, 9.61764e-05, 0.000101624, 0.000105761, 0.000108938, 0.000111408, 0.000113353, 0.000114902, 0.000116152, 0.000117171, 0.000118009, 0.000118706, 0.00011929, 
			6.85762e-05, 8.5596e-05, 9.8686e-05, 0.000108628, 0.00011617, 0.00012192, 0.000126344, 0.000129783, 0.000132488, 0.000134641, 0.000136374, 0.000137785, 0.000138944, 0.000139907, 0.000140715, 0.000141397, 
			8.80546e-05, 0.000104882, 0.000117961, 0.000128005, 0.000135708, 0.000141643, 0.000146256, 0.000149876, 0.00015275, 0.000155057, 0.00015693, 0.000158466, 0.000159738, 0.000160803, 0.000161701, 0.000162465, 
			0.000107364, 0.00012399, 0.000137023, 0.000147115, 0.000154921, 0.000160985, 0.000165735, 0.000169493, 0.000172497, 0.000174927, 0.000176912, 0.000178553, 0.00017992, 0.000181071, 0.000182049, 0.000182886, 
			0.000126509, 0.000142922, 0.000155884, 0.000165994, 0.000173862, 0.000180012, 0.000184866, 0.000188731, 0.00019184, 0.00019437, 0.00019645, 0.000198178, 0.000199628, 0.000200856, 0.000201905, 0.000202808
		)
}

CapTable	"metal1_C_LATERAL_14NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.00018028, 9.52122e-05, 6.2084e-05, 4.41086e-05, 3.29216e-05, 2.54188e-05, 2.01386e-05, 1.6291e-05, 1.34099e-05, 1.12041e-05, 9.4829e-06, 8.11782e-06, 7.01954e-06, 6.12464e-06, 5.38712e-06, 4.77308e-06, 
			0.000189004, 0.000101971, 6.7651e-05, 4.8812e-05, 3.6958e-05, 2.8919e-05, 2.31988e-05, 1.89859e-05, 1.57992e-05, 1.33355e-05, 1.13955e-05, 9.84334e-06, 8.58408e-06, 7.54968e-06, 6.69052e-06, 5.96968e-06, 
			0.000193877, 0.000106479, 7.16472e-05, 5.2352e-05, 4.01054e-05, 3.17248e-05, 2.57084e-05, 2.1239e-05, 1.783e-05, 1.51734e-05, 1.30653e-05, 1.13664e-05, 9.97824e-06, 8.8302e-06, 7.87032e-06, 7.05978e-06, 
			0.000197214, 0.00010997, 7.48828e-05, 5.53146e-05, 4.2798e-05, 3.4171e-05, 2.79336e-05, 2.32674e-05, 1.96838e-05, 1.68722e-05, 1.46266e-05, 1.28052e-05, 1.13077e-05, 1.00616e-05, 9.0133e-06, 8.12286e-06, 
			0.000199207, 0.000112663, 7.75522e-05, 5.7829e-05, 4.51398e-05, 3.6347e-05, 2.99416e-05, 2.51212e-05, 2.13968e-05, 1.84579e-05, 1.60969e-05, 1.41708e-05, 1.25782e-05, 1.12455e-05, 1.01181e-05, 9.155e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.08308e-05, 1.47776e-05, 1.81364e-05, 2.08721e-05, 2.30358e-05, 2.47286e-05, 2.60242e-05, 2.70173e-05, 2.77728e-05, 2.83452e-05, 2.88394e-05, 2.91409e-05, 2.93511e-05, 2.95416e-05, 2.96849e-05, 2.97941e-05, 
			1.49084e-05, 1.89498e-05, 2.24429e-05, 2.53392e-05, 2.76489e-05, 2.94615e-05, 3.08644e-05, 3.19403e-05, 3.28468e-05, 3.34394e-05, 3.38891e-05, 3.42181e-05, 3.44952e-05, 3.47034e-05, 3.48607e-05, 3.49794e-05, 
			1.91064e-05, 2.32195e-05, 2.68184e-05, 2.9798e-05, 3.21944e-05, 3.4079e-05, 3.55403e-05, 3.67402e-05, 3.75712e-05, 3.81787e-05, 3.86809e-05, 3.90637e-05, 3.93525e-05, 3.95697e-05, 3.9737e-05, 3.98624e-05, 
			2.33933e-05, 2.75754e-05, 3.12324e-05, 3.42744e-05, 3.67216e-05, 3.87466e-05, 4.02096e-05, 4.13383e-05, 4.21834e-05, 4.28633e-05, 4.33778e-05, 4.37722e-05, 4.40704e-05, 4.4295e-05, 4.44637e-05, 4.45915e-05, 
			2.777e-05, 3.19954e-05, 3.56982e-05, 3.8778e-05, 4.13414e-05, 4.32664e-05, 4.47305e-05, 4.59078e-05, 4.68135e-05, 4.75024e-05, 4.80288e-05, 4.84265e-05, 4.87307e-05, 4.89585e-05, 4.9131e-05, 4.9259e-05
		)
}

CapTable	"metal2_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.43186e-05, 4.69536e-05, 5.71358e-05, 6.50787e-05, 7.11596e-05, 7.57778e-05, 7.92613e-05, 8.18868e-05, 8.38631e-05, 8.5358e-05, 8.64193e-05, 8.72995e-05, 8.7986e-05, 8.84698e-05, 8.88379e-05, 8.91155e-05, 
			4.88218e-05, 6.16722e-05, 7.21173e-05, 8.03508e-05, 8.67157e-05, 9.15795e-05, 9.52764e-05, 9.80802e-05, 0.000100112, 0.000101754, 0.000103003, 0.000103957, 0.000104649, 0.000105176, 0.000105573, 0.000105872, 
			6.37376e-05, 7.66557e-05, 8.72304e-05, 9.56156e-05, 0.00010213, 0.000107143, 0.000110962, 0.000113788, 0.000116032, 0.00011776, 0.000119024, 0.000119985, 0.000120712, 0.000121266, 0.000121673, 0.000121981, 
			7.88455e-05, 9.17996e-05, 0.000102442, 0.000110923, 0.000117533, 0.000122521, 0.000126467, 0.000129461, 0.000131766, 0.000133473, 0.00013478, 0.000135757, 0.000136499, 0.000137058, 0.000137482, 0.000137787, 
			9.41266e-05, 0.000107088, 0.000117785, 0.000126324, 0.000132911, 0.000138096, 0.000142098, 0.000145106, 0.000147385, 0.000149123, 0.000150439, 0.000151442, 0.000152184, 0.000152746, 0.000153163, 0.000153468
		)
}

CapTable	"metal2_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000185967, 9.69178e-05, 6.17838e-05, 4.23182e-05, 3.00166e-05, 2.17016e-05, 1.58865e-05, 1.17189e-05, 8.68912e-06, 6.45978e-06, 4.81334e-06, 3.57856e-06, 2.65194e-06, 1.96056e-06, 1.44025e-06, 1.04941e-06, 
			0.000193069, 0.000101983, 6.55558e-05, 4.5158e-05, 3.21624e-05, 2.3328e-05, 1.71112e-05, 1.26355e-05, 9.37518e-06, 6.95962e-06, 5.1629e-06, 3.82194e-06, 2.8208e-06, 2.06862e-06, 1.50434e-06, 1.08158e-06, 
			0.000196167, 0.000104602, 6.75722e-05, 4.67134e-05, 3.33466e-05, 2.4222e-05, 1.77787e-05, 1.31328e-05, 9.72176e-06, 7.19734e-06, 5.3261e-06, 3.92634e-06, 2.87846e-06, 2.09226e-06, 1.50597e-06, 1.06756e-06, 
			0.000197421, 0.000105955, 6.86786e-05, 4.75676e-05, 3.39984e-05, 2.47184e-05, 1.81304e-05, 1.33717e-05, 9.87656e-06, 7.2987e-06, 5.37524e-06, 3.94384e-06, 2.87156e-06, 2.06996e-06, 1.47127e-06, 1.02947e-06, 
			0.000197867, 0.000106694, 6.93008e-05, 4.8051e-05, 3.43536e-05, 2.49576e-05, 1.82925e-05, 1.34702e-05, 9.93652e-06, 7.31864e-06, 5.37124e-06, 3.91652e-06, 2.83434e-06, 2.02648e-06, 1.42802e-06, 9.89996e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.25185e-05, 1.64529e-05, 1.98901e-05, 2.29354e-05, 2.5636e-05, 2.80195e-05, 3.01062e-05, 3.19179e-05, 3.34783e-05, 3.48194e-05, 3.59564e-05, 3.69228e-05, 3.77374e-05, 3.842e-05, 3.89928e-05, 3.94713e-05, 
			1.61831e-05, 2.01543e-05, 2.37509e-05, 2.69949e-05, 2.98969e-05, 3.24679e-05, 3.47233e-05, 3.66838e-05, 3.83786e-05, 3.98276e-05, 4.10636e-05, 4.21099e-05, 4.29938e-05, 4.37356e-05, 4.43563e-05, 4.48728e-05, 
			1.99977e-05, 2.40438e-05, 2.77645e-05, 3.1144e-05, 3.41754e-05, 3.68665e-05, 3.92277e-05, 4.12794e-05, 4.30539e-05, 4.45734e-05, 4.58657e-05, 4.69629e-05, 4.78876e-05, 4.86621e-05, 4.93154e-05, 4.98592e-05, 
			2.39673e-05, 2.80896e-05, 3.19048e-05, 3.5379e-05, 3.84961e-05, 4.12649e-05, 4.36916e-05, 4.58061e-05, 4.76285e-05, 4.919e-05, 5.05195e-05, 5.16452e-05, 5.25899e-05, 5.33952e-05, 5.40636e-05, 5.46221e-05, 
			2.8083e-05, 3.22677e-05, 3.61544e-05, 3.96941e-05, 4.28736e-05, 4.56903e-05, 4.81648e-05, 5.03137e-05, 5.21686e-05, 5.3759e-05, 5.51082e-05, 5.62496e-05, 5.72235e-05, 5.80359e-05, 5.87159e-05, 5.92843e-05
		)
}

CapTable	"metal2_C_TOP_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.38693e-05, 1.83369e-05, 2.22515e-05, 2.57152e-05, 2.87782e-05, 3.14725e-05, 3.38253e-05, 3.58654e-05, 3.76211e-05, 3.91189e-05, 4.03958e-05, 4.14745e-05, 4.23822e-05, 4.31461e-05, 4.37835e-05, 4.43146e-05, 
			1.79619e-05, 2.24799e-05, 2.65709e-05, 3.02503e-05, 3.35295e-05, 3.64267e-05, 3.89615e-05, 4.11626e-05, 4.30552e-05, 4.46772e-05, 4.60549e-05, 4.72224e-05, 4.8203e-05, 4.90284e-05, 4.97186e-05, 5.0298e-05, 
			2.22633e-05, 2.68578e-05, 3.10809e-05, 3.4903e-05, 3.83202e-05, 4.13423e-05, 4.39881e-05, 4.62868e-05, 4.82649e-05, 4.99566e-05, 5.13979e-05, 5.26151e-05, 5.36395e-05, 5.45031e-05, 5.52189e-05, 5.58226e-05, 
			2.67447e-05, 3.14168e-05, 3.57368e-05, 3.96556e-05, 4.31637e-05, 4.62653e-05, 4.8984e-05, 5.13407e-05, 5.33691e-05, 5.51066e-05, 5.65827e-05, 5.78349e-05, 5.88934e-05, 5.9768e-05, 6.0508e-05, 6.11278e-05, 
			3.1387e-05, 3.61211e-05, 4.05094e-05, 4.44947e-05, 4.806e-05, 5.12167e-05, 5.3977e-05, 5.63731e-05, 5.84364e-05, 6.01982e-05, 6.17009e-05, 6.2977e-05, 6.40377e-05, 6.49359e-05, 6.569e-05, 6.6322e-05
		)
}

CapTable	"metal2_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000198369, 0.000112371, 7.86814e-05, 5.94684e-05, 4.66088e-05, 3.72532e-05, 3.0119e-05, 2.4524e-05, 2.00608e-05, 1.64589e-05, 1.35338e-05, 1.11449e-05, 9.18948e-06, 7.58524e-06, 6.26732e-06, 5.18388e-06, 
			0.000209846, 0.000120785, 8.50842e-05, 6.44698e-05, 5.05836e-05, 4.04504e-05, 3.27132e-05, 2.66426e-05, 2.17972e-05, 1.78892e-05, 1.47135e-05, 1.21217e-05, 1.00002e-05, 8.259e-06, 6.82914e-06, 5.65222e-06, 
			0.000215964, 0.000125642, 8.88566e-05, 6.7443e-05, 5.29564e-05, 4.23632e-05, 3.42692e-05, 2.79158e-05, 2.28442e-05, 1.8753e-05, 1.54294e-05, 1.2717e-05, 1.04969e-05, 8.6748e-06, 7.17866e-06, 5.9472e-06, 
			0.000219236, 0.000128511, 9.11414e-05, 6.92594e-05, 5.44182e-05, 4.35468e-05, 3.52344e-05, 2.87082e-05, 2.34994e-05, 1.92974e-05, 1.58838e-05, 1.30969e-05, 1.08157e-05, 8.94482e-06, 7.40736e-06, 6.1421e-06, 
			0.00022106, 0.000130286, 9.25902e-05, 7.04232e-05, 5.53524e-05, 4.4307e-05, 3.58582e-05, 2.92242e-05, 2.3928e-05, 1.96568e-05, 1.61859e-05, 1.33524e-05, 1.10338e-05, 9.13122e-06, 7.56706e-06, 6.27966e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.9705e-05, 2.50688e-05, 2.94894e-05, 3.32736e-05, 3.659e-05, 3.95377e-05, 4.2179e-05, 4.45569e-05, 4.67041e-05, 4.86468e-05, 5.04072e-05, 5.20045e-05, 5.34556e-05, 5.47759e-05, 5.59788e-05, 5.70768e-05, 
			2.4085e-05, 2.91308e-05, 3.3506e-05, 3.73654e-05, 4.0811e-05, 4.39076e-05, 4.67027e-05, 4.92323e-05, 5.15255e-05, 5.36072e-05, 5.54997e-05, 5.72217e-05, 5.87913e-05, 6.02239e-05, 6.15334e-05, 6.27326e-05, 
			2.8364e-05, 3.32292e-05, 3.75702e-05, 4.14664e-05, 4.49822e-05, 4.8164e-05, 5.10504e-05, 5.36728e-05, 5.60574e-05, 5.82285e-05, 6.02076e-05, 6.2014e-05, 6.36649e-05, 6.51762e-05, 6.65622e-05, 6.78351e-05, 
			3.2604e-05, 3.73602e-05, 4.1672e-05, 4.55844e-05, 4.91366e-05, 5.2368e-05, 5.53094e-05, 5.79906e-05, 6.04348e-05, 6.26674e-05, 6.47072e-05, 6.65746e-05, 6.82857e-05, 6.98566e-05, 7.13014e-05, 7.26321e-05, 
			3.6853e-05, 4.15288e-05, 4.5813e-05, 4.97256e-05, 5.32968e-05, 5.65564e-05, 5.95336e-05, 6.22546e-05, 6.47428e-05, 6.70208e-05, 6.91078e-05, 7.10238e-05, 7.27838e-05, 7.44038e-05, 7.58974e-05, 7.72774e-05
		)
}

CapTable	"metal2_C_LATERAL_33NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000203606, 0.000119591, 8.76856e-05, 7.00134e-05, 5.84256e-05, 5.00694e-05, 4.36748e-05, 3.85836e-05, 3.4416e-05, 3.09346e-05, 2.79814e-05, 2.5446e-05, 2.32478e-05, 2.13264e-05, 1.96351e-05, 1.81371e-05, 
			0.000217482, 0.000130541, 9.6729e-05, 7.77206e-05, 6.5138e-05, 5.60108e-05, 4.90008e-05, 4.34066e-05, 3.882e-05, 3.49838e-05, 3.17254e-05, 2.89244e-05, 2.64922e-05, 2.43624e-05, 2.24842e-05, 2.08172e-05, 
			0.000226166, 0.000138016, 0.000103137, 8.33196e-05, 7.01078e-05, 6.0481e-05, 5.30646e-05, 4.71332e-05, 4.22614e-05, 3.818e-05, 3.4708e-05, 3.1718e-05, 2.91172e-05, 2.68354e-05, 2.48186e-05, 2.30248e-05, 
			0.000232072, 0.000143504, 0.000108005, 8.76676e-05, 7.40414e-05, 6.4072e-05, 5.63716e-05, 5.02004e-05, 4.51222e-05, 4.08606e-05, 3.72288e-05, 3.40954e-05, 3.13646e-05, 2.8964e-05, 2.68376e-05, 2.49422e-05, 
			0.000236526, 0.000147849, 0.000111956, 9.12594e-05, 7.73282e-05, 6.71076e-05, 5.91954e-05, 5.28414e-05, 4.76032e-05, 4.31992e-05, 3.94392e-05, 3.61892e-05, 3.33512e-05, 3.08512e-05, 2.86326e-05, 2.66506e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.584e-05, 2.18381e-05, 2.69087e-05, 3.09572e-05, 3.40587e-05, 3.63575e-05, 3.80319e-05, 3.92335e-05, 4.01127e-05, 4.06921e-05, 4.11185e-05, 4.14189e-05, 4.16293e-05, 4.17773e-05, 4.18784e-05, 4.19518e-05, 
			2.2333e-05, 2.85677e-05, 3.38702e-05, 3.81181e-05, 4.13733e-05, 4.37957e-05, 4.56e-05, 4.68536e-05, 4.77423e-05, 4.83864e-05, 4.88404e-05, 4.91596e-05, 4.93841e-05, 4.95388e-05, 4.96495e-05, 4.97257e-05, 
			2.90959e-05, 3.54672e-05, 4.08891e-05, 4.52278e-05, 4.85584e-05, 5.1068e-05, 5.28491e-05, 5.41565e-05, 5.50898e-05, 5.57524e-05, 5.62172e-05, 5.65478e-05, 5.67774e-05, 5.69383e-05, 5.7051e-05, 5.71293e-05, 
			3.60186e-05, 4.24626e-05, 4.79434e-05, 5.23272e-05, 5.57126e-05, 5.81976e-05, 6.00324e-05, 6.13556e-05, 6.23009e-05, 6.29688e-05, 6.34423e-05, 6.37754e-05, 6.40088e-05, 6.41721e-05, 6.42853e-05, 6.43614e-05, 
			4.30503e-05, 4.95352e-05, 5.50776e-05, 5.9471e-05, 6.28396e-05, 6.5364e-05, 6.72077e-05, 6.85379e-05, 6.9486e-05, 7.01602e-05, 7.06365e-05, 7.09727e-05, 7.12051e-05, 7.13653e-05, 7.14745e-05, 7.15506e-05
		)
}

CapTable	"metal2_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.2813e-05, 4.52941e-05, 5.53671e-05, 6.31254e-05, 6.89063e-05, 7.3126e-05, 7.61524e-05, 7.83087e-05, 7.98087e-05, 8.09069e-05, 8.16613e-05, 8.21888e-05, 8.25562e-05, 8.28106e-05, 8.29877e-05, 8.31014e-05, 
			4.73508e-05, 6.01699e-05, 7.05382e-05, 7.85457e-05, 8.45385e-05, 8.89186e-05, 9.20399e-05, 9.4314e-05, 9.59248e-05, 9.70497e-05, 9.78387e-05, 9.83894e-05, 9.87713e-05, 9.90368e-05, 9.92123e-05, 9.93251e-05, 
			6.24123e-05, 7.5342e-05, 8.58201e-05, 9.39318e-05, 0.000100006, 0.000104431, 0.000107674, 0.00010997, 0.000111596, 0.00011274, 0.000113547, 0.000114099, 0.000114486, 0.000114744, 0.000114911, 0.000115012, 
			7.76834e-05, 9.06548e-05, 0.000101165, 0.000109322, 0.000115411, 0.000119917, 0.000123154, 0.000125464, 0.000127099, 0.000128255, 0.000129056, 0.000129608, 0.000129982, 0.000130224, 0.000130382, 0.00013048, 
			9.31081e-05, 0.000106069, 0.000116581, 0.000124764, 0.000130899, 0.00013539, 0.000138631, 0.000140942, 0.000142583, 0.000143727, 0.000144518, 0.000145051, 0.000145413, 0.000145651, 0.000145809, 0.0001459
		)
}

CapTable	"metal2_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000183399, 9.32978e-05, 5.74412e-05, 3.76244e-05, 2.5299e-05, 1.72265e-05, 1.18007e-05, 8.10184e-06, 5.56158e-06, 3.80396e-06, 2.58616e-06, 1.74134e-06, 1.15549e-06, 7.50096e-07, 4.70858e-07, 2.81778e-07, 
			0.00018901, 9.69134e-05, 5.98726e-05, 3.92962e-05, 2.64562e-05, 1.80197e-05, 1.23391e-05, 8.4544e-06, 5.7819e-06, 3.93294e-06, 2.65186e-06, 1.76396e-06, 1.14964e-06, 7.264e-07, 4.39254e-07, 2.49156e-07, 
			0.000190695, 9.82738e-05, 6.08258e-05, 3.99524e-05, 2.69006e-05, 1.8313e-05, 1.25159e-05, 8.5515e-06, 5.82118e-06, 3.9336e-06, 2.62576e-06, 1.72324e-06, 1.10063e-06, 6.77724e-07, 3.9602e-07, 2.13646e-07, 
			0.000190738, 9.86236e-05, 6.11006e-05, 4.01338e-05, 2.70114e-05, 1.83604e-05, 1.25186e-05, 8.5234e-06, 5.77214e-06, 3.87022e-06, 2.5577e-06, 1.65455e-06, 1.03919e-06, 6.26874e-07, 3.54698e-07, 1.79607e-07, 
			0.00019022, 9.85788e-05, 6.10934e-05, 4.0111e-05, 2.69594e-05, 1.829e-05, 1.24373e-05, 8.43508e-06, 5.67898e-06, 3.78082e-06, 2.4755e-06, 1.58533e-06, 9.82898e-07, 5.80708e-07, 3.16544e-07, 1.484e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.76876e-05, 2.36517e-05, 2.88745e-05, 3.3422e-05, 3.73337e-05, 4.06537e-05, 4.34371e-05, 4.57473e-05, 4.76435e-05, 4.91886e-05, 5.04429e-05, 5.14525e-05, 5.2264e-05, 5.29097e-05, 5.34304e-05, 5.3842e-05, 
			2.36813e-05, 2.98443e-05, 3.53483e-05, 4.01826e-05, 4.43543e-05, 4.78998e-05, 5.08745e-05, 5.33434e-05, 5.53712e-05, 5.70262e-05, 5.83659e-05, 5.94475e-05, 6.03191e-05, 6.10109e-05, 6.15641e-05, 6.20056e-05, 
			3.00299e-05, 3.63482e-05, 4.20319e-05, 4.70308e-05, 5.13481e-05, 5.50187e-05, 5.80964e-05, 6.06532e-05, 6.27517e-05, 6.44649e-05, 6.58493e-05, 6.69713e-05, 6.787e-05, 6.85879e-05, 6.91623e-05, 6.96185e-05, 
			3.66353e-05, 4.30629e-05, 4.88549e-05, 5.39509e-05, 5.83523e-05, 6.20914e-05, 6.52301e-05, 6.78309e-05, 6.9971e-05, 7.17155e-05, 7.31283e-05, 7.42669e-05, 7.51824e-05, 7.59138e-05, 7.64978e-05, 7.6963e-05, 
			4.34405e-05, 4.99401e-05, 5.57993e-05, 6.0953e-05, 6.54042e-05, 6.91846e-05, 7.23554e-05, 7.49829e-05, 7.71412e-05, 7.89063e-05, 8.0333e-05, 8.14836e-05, 8.24075e-05, 8.31469e-05, 8.37369e-05, 8.42073e-05
		)
}

CapTable	"metal2_C_TOP_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.2817e-05, 1.72305e-05, 2.11369e-05, 2.45618e-05, 2.75233e-05, 3.00457e-05, 3.21655e-05, 3.39257e-05, 3.53741e-05, 3.65582e-05, 3.75167e-05, 3.82919e-05, 3.89139e-05, 3.94153e-05, 3.9808e-05, 4.01262e-05, 
			1.70227e-05, 2.15605e-05, 2.56681e-05, 2.93016e-05, 3.24567e-05, 3.51484e-05, 3.74131e-05, 3.9297e-05, 4.08477e-05, 4.2115e-05, 4.31448e-05, 4.39748e-05, 4.46366e-05, 4.51733e-05, 4.56017e-05, 4.59421e-05, 
			2.14831e-05, 2.6128e-05, 3.03613e-05, 3.41212e-05, 3.73863e-05, 4.01733e-05, 4.25206e-05, 4.44708e-05, 4.60786e-05, 4.73923e-05, 4.84612e-05, 4.93154e-05, 5.00078e-05, 5.05639e-05, 5.10068e-05, 5.13598e-05, 
			2.61277e-05, 3.08523e-05, 3.51695e-05, 3.90043e-05, 4.23331e-05, 4.51774e-05, 4.75693e-05, 4.95597e-05, 5.11973e-05, 5.25335e-05, 5.36194e-05, 5.44976e-05, 5.52036e-05, 5.57708e-05, 5.62209e-05, 5.65808e-05, 
			3.09135e-05, 3.56917e-05, 4.00607e-05, 4.3942e-05, 4.73112e-05, 5.01856e-05, 5.26046e-05, 5.46165e-05, 5.62753e-05, 5.76219e-05, 5.87212e-05, 5.96107e-05, 6.03226e-05, 6.0896e-05, 6.13526e-05, 6.17147e-05
		)
}

CapTable	"metal2_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000195296, 0.000108193, 7.36756e-05, 5.39332e-05, 4.0817e-05, 3.14336e-05, 2.44464e-05, 1.91232e-05, 1.50147e-05, 1.18163e-05, 9.31354e-06, 7.34922e-06, 5.80422e-06, 4.58706e-06, 3.62884e-06, 2.87224e-06, 
			0.000205282, 0.000115182, 7.87686e-05, 5.77548e-05, 4.374e-05, 3.36978e-05, 2.62154e-05, 2.05126e-05, 1.61101e-05, 1.26818e-05, 9.99932e-06, 7.8937e-06, 6.2383e-06, 4.9338e-06, 3.90518e-06, 3.09428e-06, 
			0.000209998, 0.000118799, 8.14628e-05, 5.9797e-05, 4.53106e-05, 3.4919e-05, 2.7172e-05, 2.1267e-05, 1.67067e-05, 1.31558e-05, 1.03765e-05, 8.19626e-06, 6.48024e-06, 5.12822e-06, 4.06286e-06, 3.2227e-06, 
			0.000212068, 0.000120653, 8.28966e-05, 6.08988e-05, 4.61696e-05, 3.55902e-05, 2.77006e-05, 2.16864e-05, 1.70407e-05, 1.3424e-05, 1.05933e-05, 8.37054e-06, 6.62204e-06, 5.24438e-06, 4.15926e-06, 3.30316e-06, 
			0.000212914, 0.000121625, 8.3687e-05, 6.1518e-05, 4.66496e-05, 3.59688e-05, 2.8002e-05, 2.19276e-05, 1.72345e-05, 1.35818e-05, 1.07218e-05, 8.47572e-06, 6.70992e-06, 5.31814e-06, 4.2215e-06, 3.35704e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.49382e-05, 3.25282e-05, 3.8933e-05, 4.44034e-05, 4.90982e-05, 5.31366e-05, 5.66114e-05, 5.96046e-05, 6.21867e-05, 6.44192e-05, 6.63547e-05, 6.80382e-05, 6.95083e-05, 7.07975e-05, 7.19329e-05, 7.29374e-05, 
			3.1988e-05, 3.94404e-05, 4.59236e-05, 5.15552e-05, 5.64414e-05, 6.06754e-05, 6.4343e-05, 6.75216e-05, 7.028e-05, 7.26785e-05, 7.47706e-05, 7.6601e-05, 7.82089e-05, 7.96266e-05, 8.08823e-05, 8.19994e-05, 
			3.9134e-05, 4.64826e-05, 5.29732e-05, 5.86664e-05, 6.364e-05, 6.79746e-05, 7.1751e-05, 7.50402e-05, 7.7909e-05, 8.04168e-05, 8.2615e-05, 8.45488e-05, 8.62544e-05, 8.77662e-05, 8.91123e-05, 9.03142e-05, 
			4.6325e-05, 5.35822e-05, 6.00484e-05, 6.57546e-05, 7.0767e-05, 7.51572e-05, 7.89986e-05, 8.23614e-05, 8.53068e-05, 8.78936e-05, 9.0171e-05, 9.21826e-05, 9.3965e-05, 9.5552e-05, 9.69688e-05, 9.82398e-05, 
			5.3547e-05, 6.07152e-05, 6.71404e-05, 7.28398e-05, 7.78684e-05, 8.22906e-05, 8.61764e-05, 8.95902e-05, 9.25932e-05, 9.5241e-05, 9.75806e-05, 9.96548e-05, 0.000101501, 0.000103149, 0.000104626, 0.000105956
		)
}

CapTable	"metal2_C_LATERAL_23NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000199628, 0.00011433, 8.1452e-05, 6.31026e-05, 5.10938e-05, 4.25264e-05, 3.60846e-05, 3.10692e-05, 2.70664e-05, 2.3811e-05, 2.11236e-05, 1.88773e-05, 1.69792e-05, 1.53598e-05, 1.39661e-05, 1.27571e-05, 
			0.00021183, 0.000123713, 8.90624e-05, 6.95138e-05, 5.66356e-05, 4.74046e-05, 4.0436e-05, 3.49894e-05, 3.0625e-05, 2.7061e-05, 2.4106e-05, 2.16248e-05, 1.95184e-05, 1.77131e-05, 1.61523e-05, 1.4792e-05, 
			0.000218974, 0.000129837, 9.42978e-05, 7.40926e-05, 6.0709e-05, 5.10754e-05, 4.3775e-05, 3.80478e-05, 3.3441e-05, 2.96642e-05, 2.652e-05, 2.38692e-05, 2.16096e-05, 1.96648e-05, 1.79767e-05, 1.64998e-05, 
			0.000223568, 0.000134221, 9.82336e-05, 7.76444e-05, 6.395e-05, 5.40508e-05, 4.65224e-05, 4.05956e-05, 3.58112e-05, 3.18744e-05, 2.8585e-05, 2.58014e-05, 2.342e-05, 2.1363e-05, 1.95712e-05, 1.79982e-05, 
			0.000226952, 0.000137687, 0.000101454, 8.06172e-05, 6.66996e-05, 5.66084e-05, 4.89106e-05, 4.28308e-05, 3.79068e-05, 3.3842e-05, 3.04344e-05, 2.75412e-05, 2.50578e-05, 2.2906e-05, 2.10256e-05, 1.937e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.09812e-05, 4.29012e-05, 5.20719e-05, 5.85627e-05, 6.28994e-05, 6.56881e-05, 6.74395e-05, 6.85349e-05, 6.92149e-05, 6.96358e-05, 6.99002e-05, 7.00662e-05, 7.01706e-05, 7.02393e-05, 7.02849e-05, 7.03042e-05, 
			4.59152e-05, 5.81446e-05, 6.74794e-05, 7.40668e-05, 7.85022e-05, 8.12973e-05, 8.3087e-05, 8.42029e-05, 8.48948e-05, 8.53264e-05, 8.55941e-05, 8.57621e-05, 8.58677e-05, 8.59361e-05, 8.59817e-05, 8.6007e-05, 
			6.12079e-05, 7.34737e-05, 8.28224e-05, 8.94406e-05, 9.38184e-05, 9.66625e-05, 9.84559e-05, 9.95758e-05, 0.000100271, 0.0001007, 0.000100967, 0.000101133, 0.000101238, 0.000101306, 0.000101352, 0.000101383, 
			7.65524e-05, 8.88346e-05, 9.81135e-05, 0.000104697, 0.000109093, 0.000111929, 0.00011372, 0.000114836, 0.000115525, 0.000115952, 0.000116215, 0.000116377, 0.000116481, 0.000116547, 0.000116592, 0.000116624, 
			9.1993e-05, 0.000104168, 0.000113481, 0.000120049, 0.000124437, 0.000127265, 0.000129046, 0.000130154, 0.000130839, 0.000131261, 0.000131521, 0.000131681, 0.000131783, 0.00013185, 0.000131895, 0.000131926
		)
}

CapTable	"metal2_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.12964e-05, 4.3729e-05, 5.33961e-05, 6.02827e-05, 6.49022e-05, 6.78915e-05, 6.97776e-05, 7.09584e-05, 7.16924e-05, 7.21549e-05, 7.24391e-05, 7.26143e-05, 7.27177e-05, 7.27707e-05, 7.27962e-05, 7.28078e-05, 
			4.61476e-05, 5.88628e-05, 6.86882e-05, 7.56804e-05, 8.03343e-05, 8.34099e-05, 8.53373e-05, 8.65474e-05, 8.73042e-05, 8.77722e-05, 8.80643e-05, 8.82346e-05, 8.83284e-05, 8.8376e-05, 8.83987e-05, 8.8406e-05, 
			6.13629e-05, 7.41063e-05, 8.39482e-05, 9.09244e-05, 9.56536e-05, 9.87033e-05, 0.000100649, 0.000101864, 0.000102624, 0.000103096, 0.000103377, 0.000103538, 0.000103624, 0.000103664, 0.000103684, 0.000103693, 
			7.6633e-05, 8.93138e-05, 9.91829e-05, 0.000106171, 0.000110874, 0.000113935, 0.000115872, 0.000117088, 0.000117845, 0.000118302, 0.000118573, 0.000118725, 0.0001188, 0.00011884, 0.000118859, 0.000118867, 
			9.1928e-05, 0.000104647, 0.000114456, 0.000121433, 0.000126135, 0.000129184, 0.000131121, 0.000132324, 0.000133064, 0.000133511, 0.000133766, 0.000133909, 0.000133982, 0.000134018, 0.000134036, 0.000134044
		)
}

CapTable	"metal2_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000174733, 8.27058e-05, 4.6475e-05, 2.74096e-05, 1.64564e-05, 9.95744e-06, 6.0489e-06, 3.6757e-06, 2.22472e-06, 1.32933e-06, 7.747e-07, 4.3149e-07, 2.23692e-07, 1.02035e-07, 3.0886e-08, 0, 
			0.000176962, 8.38886e-05, 4.71754e-05, 2.78498e-05, 1.67395e-05, 1.01298e-05, 6.14572e-06, 3.72166e-06, 2.23598e-06, 1.32136e-06, 7.58578e-07, 4.18336e-07, 2.1789e-07, 1.01911e-07, 3.35928e-08, 0, 
			0.000176551, 8.3872e-05, 4.72074e-05, 2.7887e-05, 1.6756e-05, 1.01322e-05, 6.12912e-06, 3.69322e-06, 2.20194e-06, 1.28971e-06, 7.37142e-07, 4.08196e-07, 2.1715e-07, 1.06952e-07, 4.11652e-08, 5.78624e-10, 
			0.000175448, 8.35156e-05, 4.70296e-05, 2.77764e-05, 1.66808e-05, 1.0063e-05, 6.06786e-06, 3.63834e-06, 2.15894e-06, 1.262e-06, 7.234e-07, 4.06974e-07, 2.25144e-07, 1.19165e-07, 5.52952e-08, 1.55165e-08, 
			0.000174354, 8.31244e-05, 4.68222e-05, 2.76376e-05, 1.65631e-05, 9.96784e-06, 5.99136e-06, 3.58306e-06, 2.12284e-06, 1.24146e-06, 7.17782e-07, 4.13442e-07, 2.38394e-07, 1.35295e-07, 7.22848e-08, 3.27884e-08
		)
}

CapTable	"metal2_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.32278e-05, 4.52262e-05, 5.4852e-05, 6.23687e-05, 6.81432e-05, 7.25283e-05, 7.58333e-05, 7.83123e-05, 8.01663e-05, 8.1552e-05, 8.25856e-05, 8.33558e-05, 8.39308e-05, 8.43592e-05, 8.46789e-05, 8.49172e-05, 
			4.75956e-05, 5.98673e-05, 6.9771e-05, 7.75568e-05, 8.35756e-05, 8.81713e-05, 9.16499e-05, 9.42719e-05, 9.62378e-05, 9.77099e-05, 9.88092e-05, 9.96315e-05, 0.000100245, 0.000100702, 0.000101044, 0.000101297, 
			6.24009e-05, 7.47542e-05, 8.47744e-05, 9.26903e-05, 9.88318e-05, 0.000103535, 0.000107106, 0.000109801, 0.000111828, 0.000113344, 0.00011448, 0.000115329, 0.000115963, 0.000116436, 0.000116788, 0.000117049, 
			7.7375e-05, 8.97546e-05, 9.9832e-05, 0.000107813, 0.000114018, 0.000118779, 0.000122396, 0.000125134, 0.000127192, 0.000128736, 0.000129891, 0.000130755, 0.000131399, 0.00013188, 0.000132237, 0.000132502, 
			9.25214e-05, 0.000104915, 0.000115026, 0.000123047, 0.00012929, 0.000134088, 0.000137731, 0.000140487, 0.000142563, 0.00014412, 0.000145285, 0.000146156, 0.000146806, 0.00014729, 0.000147651, 0.000147917
		)
}

CapTable	"metal2_C_TOP_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.18412e-05, 1.631e-05, 2.01438e-05, 2.32789e-05, 2.5758e-05, 2.76781e-05, 2.9143e-05, 3.02534e-05, 3.10897e-05, 3.1717e-05, 3.21866e-05, 3.25398e-05, 3.28026e-05, 3.29989e-05, 3.31445e-05, 3.32536e-05, 
			1.63848e-05, 2.09761e-05, 2.4958e-05, 2.82406e-05, 3.08542e-05, 3.28881e-05, 3.445e-05, 3.5637e-05, 3.65334e-05, 3.7209e-05, 3.77175e-05, 3.80973e-05, 3.83805e-05, 3.85929e-05, 3.87513e-05, 3.88694e-05, 
			2.11013e-05, 2.5763e-05, 2.983e-05, 3.31933e-05, 3.58794e-05, 3.79777e-05, 3.95918e-05, 4.08225e-05, 4.17514e-05, 4.2457e-05, 4.29845e-05, 4.3379e-05, 4.3675e-05, 4.38962e-05, 4.40614e-05, 4.41844e-05, 
			2.59172e-05, 3.06302e-05, 3.47478e-05, 3.81594e-05, 4.08864e-05, 4.30203e-05, 4.46698e-05, 4.59211e-05, 4.68717e-05, 4.75875e-05, 4.81266e-05, 4.85309e-05, 4.88336e-05, 4.90599e-05, 4.92288e-05, 4.93547e-05, 
			3.0811e-05, 3.55563e-05, 3.97066e-05, 4.31459e-05, 4.58997e-05, 4.80505e-05, 4.97175e-05, 5.09855e-05, 5.19455e-05, 5.26709e-05, 5.32165e-05, 5.36259e-05, 5.39324e-05, 5.41615e-05, 5.43326e-05, 5.44601e-05
		)
}

CapTable	"metal2_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000185827, 9.66628e-05, 6.14392e-05, 4.19044e-05, 2.95568e-05, 2.12426e-05, 1.54477e-05, 1.13233e-05, 8.34804e-06, 6.18196e-06, 4.59482e-06, 3.42636e-06, 2.56356e-06, 1.9249e-06, 1.45156e-06, 1.10019e-06, 
			0.00019246, 0.000101238, 6.4761e-05, 4.43846e-05, 3.14312e-05, 2.26676e-05, 1.65331e-05, 1.21511e-05, 8.98178e-06, 6.66906e-06, 4.97126e-06, 3.72016e-06, 2.79566e-06, 2.11088e-06, 1.60318e-06, 1.22655e-06, 
			0.000195081, 0.000103451, 6.64726e-05, 4.57084e-05, 3.24558e-05, 2.34606e-05, 1.71482e-05, 1.26299e-05, 9.3564e-06, 6.96386e-06, 5.2065e-06, 3.9108e-06, 2.95262e-06, 2.24306e-06, 1.71713e-06, 1.32716e-06, 
			0.000195957, 0.000104535, 6.73862e-05, 4.64418e-05, 3.30448e-05, 2.39282e-05, 1.75196e-05, 1.29276e-05, 9.59648e-06, 7.1613e-06, 5.3711e-06, 4.0506e-06, 3.07432e-06, 2.35148e-06, 1.81594e-06, 1.41909e-06, 
			0.000196152, 0.000105099, 6.79098e-05, 4.6881e-05, 3.3398e-05, 2.42172e-05, 1.7758e-05, 1.3126e-05, 9.76436e-06, 7.3052e-06, 5.4973e-06, 4.1637e-06, 3.17784e-06, 2.44814e-06, 1.90773e-06, 1.50753e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			4.08664e-05, 5.4917e-05, 6.60664e-05, 7.47686e-05, 8.15358e-05, 8.68124e-05, 9.09528e-05, 9.42286e-05, 9.68447e-05, 9.89543e-05, 0.000100673, 0.000102087, 0.000103259, 0.000104241, 0.000105068, 0.000105773, 
			5.7056e-05, 7.10496e-05, 8.22734e-05, 9.11466e-05, 9.81382e-05, 0.000103662, 0.000108051, 0.000111566, 0.000114406, 0.000116721, 0.000118626, 0.000120207, 0.000121531, 0.000122647, 0.000123596, 0.000124407, 
			7.3447e-05, 8.72566e-05, 9.84422e-05, 0.000107377, 0.000114489, 0.000120165, 0.000124719, 0.0001284, 0.000131401, 0.000133867, 0.000135912, 0.000137621, 0.00013906, 0.000140282, 0.000141325, 0.00014222, 
			8.9847e-05, 0.000103491, 0.000114628, 0.000123592, 0.000130784, 0.000136569, 0.000141247, 0.000145055, 0.00014818, 0.000150764, 0.000152919, 0.00015473, 0.000156263, 0.000157567, 0.000158686, 0.000159648, 
			0.000106296, 0.000119819, 0.000130919, 0.000139907, 0.000147167, 0.000153039, 0.000157812, 0.000161721, 0.000164945, 0.000167625, 0.000169869, 0.000171762, 0.000173368, 0.00017474, 0.000175919, 0.000176935
		)
}

CapTable	"metal2_C_LATERAL_13NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000189065, 0.000101437, 6.75566e-05, 4.90464e-05, 3.73742e-05, 2.94166e-05, 2.37162e-05, 1.94874e-05, 1.62653e-05, 1.37567e-05, 1.17682e-05, 1.01674e-05, 8.8613e-06, 7.7831e-06, 6.8837e-06, 6.12648e-06, 
			0.000197586, 0.000108065, 7.30226e-05, 5.36944e-05, 4.13878e-05, 3.29126e-05, 2.67788e-05, 2.21814e-05, 1.86432e-05, 1.58619e-05, 1.36371e-05, 1.18308e-05, 1.03454e-05, 9.11026e-06, 8.0732e-06, 7.19494e-06, 
			0.000202236, 0.000112365, 7.68218e-05, 5.70584e-05, 4.437e-05, 3.55596e-05, 2.913e-05, 2.42716e-05, 2.0503e-05, 1.75185e-05, 1.51143e-05, 1.31497e-05, 1.15246e-05, 1.01662e-05, 9.02032e-06, 8.04596e-06, 
			0.000205142, 0.000115464, 7.96892e-05, 5.96546e-05, 4.6711e-05, 3.7657e-05, 3.10052e-05, 2.59462e-05, 2.19974e-05, 1.88517e-05, 1.6304e-05, 1.42119e-05, 1.24739e-05, 1.10155e-05, 9.78124e-06, 8.72892e-06, 
			0.00020731, 0.000117929, 8.20172e-05, 6.17856e-05, 4.86332e-05, 3.93874e-05, 3.256e-05, 2.734e-05, 2.32452e-05, 1.99685e-05, 1.73036e-05, 1.51073e-05, 1.32768e-05, 1.17366e-05, 1.04303e-05, 9.31466e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.30488e-05, 1.74254e-05, 2.06359e-05, 2.28896e-05, 2.44272e-05, 2.54735e-05, 2.6249e-05, 2.66929e-05, 2.69877e-05, 2.7214e-05, 2.73679e-05, 2.74724e-05, 2.75434e-05, 2.75907e-05, 2.76205e-05, 2.76428e-05, 
			1.85188e-05, 2.30958e-05, 2.65233e-05, 2.89594e-05, 3.06475e-05, 3.18516e-05, 3.26146e-05, 3.31389e-05, 3.35122e-05, 3.37677e-05, 3.39419e-05, 3.40611e-05, 3.41401e-05, 3.41937e-05, 3.42293e-05, 3.42525e-05, 
			2.41463e-05, 2.88336e-05, 3.23684e-05, 3.49626e-05, 3.66854e-05, 3.78689e-05, 3.87081e-05, 3.92838e-05, 3.96788e-05, 3.99489e-05, 4.01338e-05, 4.02585e-05, 4.03425e-05, 4.03984e-05, 4.04373e-05, 4.04621e-05, 
			2.98949e-05, 3.46478e-05, 3.829e-05, 4.08364e-05, 4.26218e-05, 4.38727e-05, 4.4735e-05, 4.53278e-05, 4.57335e-05, 4.60114e-05, 4.62012e-05, 4.63295e-05, 4.64155e-05, 4.64735e-05, 4.65104e-05, 4.65389e-05, 
			3.57826e-05, 4.05278e-05, 4.41034e-05, 4.66954e-05, 4.85108e-05, 4.97697e-05, 5.06362e-05, 5.1233e-05, 5.16419e-05, 5.1921e-05, 5.21111e-05, 5.22399e-05, 5.23265e-05, 5.2383e-05, 5.24228e-05, 5.24502e-05
		)
}

CapTable	"metal3_C_TOP_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.87048e-05, 6.43634e-05, 7.52193e-05, 8.25268e-05, 8.74037e-05, 9.06673e-05, 9.27886e-05, 9.43142e-05, 9.53595e-05, 9.60442e-05, 9.65142e-05, 9.68351e-05, 9.70538e-05, 9.72022e-05, 9.73048e-05, 9.73667e-05, 
			7.10476e-05, 8.71186e-05, 9.84789e-05, 0.000106255, 0.000111521, 0.000115033, 0.000117488, 0.000119147, 0.00012027, 0.000121037, 0.000121561, 0.000121918, 0.000122161, 0.000122324, 0.000122432, 0.0001225, 
			9.38775e-05, 0.000110094, 0.000121688, 0.0001296, 0.000135104, 0.000138843, 0.000141371, 0.000143096, 0.000144275, 0.00014508, 0.000145629, 0.000146002, 0.000146254, 0.000146421, 0.000146529, 0.000146596, 
			0.000117056, 0.000133361, 0.000145016, 0.000153179, 0.000158742, 0.000162532, 0.000165118, 0.000166884, 0.000168091, 0.000168914, 0.000169473, 0.00016985, 0.000170103, 0.000170269, 0.000170382, 0.000170439, 
			0.000140231, 0.000156504, 0.000168237, 0.000176378, 0.000181956, 0.000185764, 0.000188362, 0.000190139, 0.000191352, 0.000192176, 0.000192734, 0.00019311, 0.000193361, 0.000193533, 0.000193633, 0.000193694
		)
}

CapTable	"metal3_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000118551, 5.92412e-05, 3.51038e-05, 2.20996e-05, 1.43571e-05, 9.50016e-06, 6.36642e-06, 4.29094e-06, 2.9018e-06, 1.96779e-06, 1.33387e-06, 9.03494e-07, 6.1176e-07, 4.15048e-07, 2.83702e-07, 1.98448e-07, 
			0.000125157, 6.38136e-05, 3.82958e-05, 2.43436e-05, 1.59255e-05, 1.05964e-05, 7.11442e-06, 4.80714e-06, 3.25684e-06, 2.20926e-06, 1.49914e-06, 1.01789e-06, 6.92924e-07, 4.75334e-07, 3.31748e-07, 2.39514e-07, 
			0.000127553, 6.58554e-05, 3.97976e-05, 2.54434e-05, 1.66986e-05, 1.11331e-05, 7.48692e-06, 5.06018e-06, 3.42916e-06, 2.3271e-06, 1.58121e-06, 1.07754e-06, 7.39492e-07, 5.14638e-07, 3.67754e-07, 2.74884e-07, 
			0.000128649, 6.69112e-05, 4.0605e-05, 2.60006e-05, 1.71012e-05, 1.14083e-05, 7.67398e-06, 5.18616e-06, 3.5145e-06, 2.38656e-06, 1.62582e-06, 1.11446e-06, 7.7252e-07, 5.46466e-07, 4.00612e-07, 3.10088e-07, 
			0.000127515, 6.68522e-05, 4.07166e-05, 2.61236e-05, 1.71962e-05, 1.14813e-05, 7.73176e-06, 5.23004e-06, 3.54906e-06, 2.41802e-06, 1.65694e-06, 1.14613e-06, 8.05532e-07, 5.8204e-07, 4.41212e-07, 3.5278e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.26892e-05, 2.8241e-05, 3.26954e-05, 3.64805e-05, 3.97882e-05, 4.27206e-05, 4.53403e-05, 4.76914e-05, 4.98069e-05, 5.17142e-05, 5.34357e-05, 5.49912e-05, 5.63977e-05, 5.76704e-05, 5.88228e-05, 5.9867e-05, 
			2.7621e-05, 3.30066e-05, 3.76012e-05, 4.1628e-05, 4.52081e-05, 4.84186e-05, 5.13107e-05, 5.39238e-05, 5.62888e-05, 5.84319e-05, 6.03755e-05, 6.21393e-05, 6.37409e-05, 6.51958e-05, 6.6518e-05, 6.77201e-05, 
			3.25924e-05, 3.79036e-05, 4.25788e-05, 4.67464e-05, 5.04938e-05, 5.38812e-05, 5.69511e-05, 5.97384e-05, 6.22721e-05, 6.45768e-05, 6.66743e-05, 6.85843e-05, 7.03237e-05, 7.19083e-05, 7.33522e-05, 7.46683e-05, 
			3.76568e-05, 4.29352e-05, 4.76672e-05, 5.1935e-05, 5.58022e-05, 5.93172e-05, 6.25188e-05, 6.54362e-05, 6.80976e-05, 7.05262e-05, 7.27418e-05, 7.47648e-05, 7.66107e-05, 7.82962e-05, 7.98354e-05, 8.12408e-05, 
			4.27812e-05, 4.803e-05, 5.27896e-05, 5.71192e-05, 6.10666e-05, 6.467e-05, 6.7964e-05, 7.09752e-05, 7.37304e-05, 7.6251e-05, 7.85558e-05, 8.06648e-05, 8.25944e-05, 8.43584e-05, 8.59725e-05, 8.74487e-05
		)
}

CapTable	"metal3_C_LATERAL_42NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000143294, 8.9052e-05, 6.69118e-05, 5.39576e-05, 4.5105e-05, 3.85228e-05, 3.33702e-05, 2.91972e-05, 2.5737e-05, 2.28178e-05, 2.03232e-05, 1.81698e-05, 1.62963e-05, 1.46558e-05, 1.32115e-05, 1.19344e-05, 
			0.000158803, 0.000101124, 7.67428e-05, 6.2221e-05, 5.2202e-05, 4.47106e-05, 3.88246e-05, 3.40442e-05, 3.00708e-05, 2.67114e-05, 2.38344e-05, 2.13458e-05, 1.91759e-05, 1.72717e-05, 1.55919e-05, 1.41034e-05, 
			0.000167937, 0.000108901, 8.33222e-05, 6.78926e-05, 5.71572e-05, 4.90878e-05, 4.27234e-05, 3.7539e-05, 3.32184e-05, 2.95572e-05, 2.6415e-05, 2.36912e-05, 2.13118e-05, 1.92198e-05, 1.7371e-05, 1.57299e-05, 
			0.000174386, 0.000114598, 8.82488e-05, 7.2193e-05, 6.09568e-05, 5.24738e-05, 4.57602e-05, 4.02768e-05, 3.56964e-05, 3.18068e-05, 2.84622e-05, 2.55582e-05, 2.3017e-05, 2.07794e-05, 1.87988e-05, 1.70383e-05, 
			0.000177601, 0.000118329, 9.17274e-05, 7.53418e-05, 6.38034e-05, 5.5054e-05, 4.8106e-05, 4.24138e-05, 3.76466e-05, 3.359e-05, 3.00952e-05, 2.70552e-05, 2.43906e-05, 2.20406e-05, 1.99575e-05, 1.81033e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.66586e-05, 2.23532e-05, 2.6478e-05, 2.92855e-05, 3.11347e-05, 3.2359e-05, 3.31041e-05, 3.3584e-05, 3.38939e-05, 3.40926e-05, 3.42165e-05, 3.42916e-05, 3.4341e-05, 3.43722e-05, 3.43914e-05, 3.44078e-05, 
			2.39773e-05, 2.99539e-05, 3.43315e-05, 3.73362e-05, 3.93422e-05, 4.06226e-05, 4.14574e-05, 4.1994e-05, 4.23336e-05, 4.25467e-05, 4.26808e-05, 4.27675e-05, 4.28222e-05, 4.28562e-05, 4.28833e-05, 4.29011e-05, 
			3.1541e-05, 3.7644e-05, 4.21458e-05, 4.52088e-05, 4.72517e-05, 4.85883e-05, 4.94495e-05, 5.00014e-05, 5.03497e-05, 5.05708e-05, 5.07139e-05, 5.08044e-05, 5.08597e-05, 5.09015e-05, 5.09267e-05, 5.09458e-05, 
			3.92551e-05, 4.54248e-05, 4.99366e-05, 5.30512e-05, 5.5125e-05, 5.64775e-05, 5.73473e-05, 5.79046e-05, 5.82615e-05, 5.84885e-05, 5.86329e-05, 5.87257e-05, 5.87856e-05, 5.88256e-05, 5.88553e-05, 5.88782e-05, 
			4.70372e-05, 5.31944e-05, 5.7705e-05, 6.08092e-05, 6.28723e-05, 6.42138e-05, 6.50817e-05, 6.5638e-05, 6.59939e-05, 6.62191e-05, 6.63664e-05, 6.6459e-05, 6.6522e-05, 6.6565e-05, 6.66004e-05, 6.66244e-05
		)
}

CapTable	"metal3_C_TOP_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.766e-05, 6.32334e-05, 7.39462e-05, 8.09946e-05, 8.5536e-05, 8.84109e-05, 9.02802e-05, 9.14645e-05, 9.22147e-05, 9.26857e-05, 9.29871e-05, 9.31823e-05, 9.33025e-05, 9.33785e-05, 9.34253e-05, 9.34475e-05, 
			7.01559e-05, 8.62021e-05, 9.73765e-05, 0.000104807, 0.000109621, 0.00011274, 0.00011473, 0.00011599, 0.000116795, 0.000117312, 0.00011764, 0.000117846, 0.000117978, 0.000118061, 0.000118101, 0.000118127, 
			9.32118e-05, 0.000109389, 0.000120699, 0.000128281, 0.000133219, 0.000136398, 0.000138434, 0.000139732, 0.000140567, 0.000141097, 0.00014143, 0.000141645, 0.000141783, 0.000141853, 0.000141902, 0.000141928, 
			0.00011659, 0.000132804, 0.000144202, 0.000151828, 0.000156788, 0.000159994, 0.000162056, 0.00016337, 0.000164202, 0.000164738, 0.00016508, 0.000165294, 0.000165421, 0.000165499, 0.000165541, 0.000165566, 
			0.000139983, 0.000156098, 0.00016742, 0.000175004, 0.000179953, 0.000183155, 0.000185192, 0.000186504, 0.000187344, 0.000187889, 0.00018822, 0.000188435, 0.000188553, 0.000188621, 0.000188652, 0.000188678
		)
}

CapTable	"metal3_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000116766, 5.68264e-05, 3.24268e-05, 1.94879e-05, 1.19973e-05, 7.48812e-06, 4.71274e-06, 2.98452e-06, 1.90044e-06, 1.21973e-06, 7.90422e-07, 5.19068e-07, 3.47528e-07, 2.40276e-07, 1.75285e-07, 1.35674e-07, 
			0.00012221, 6.0328e-05, 3.471e-05, 2.09878e-05, 1.29858e-05, 8.13838e-06, 5.14258e-06, 3.27596e-06, 2.10344e-06, 1.36434e-06, 8.97244e-07, 6.00508e-07, 4.1283e-07, 2.9782e-07, 2.28656e-07, 1.84867e-07, 
			0.00012358, 6.1525e-05, 3.55542e-05, 2.15772e-05, 1.33893e-05, 8.41672e-06, 5.34146e-06, 3.42062e-06, 2.21232e-06, 1.44924e-06, 9.65124e-07, 6.57638e-07, 4.66282e-07, 3.51486e-07, 2.80248e-07, 2.34214e-07, 
			0.000123883, 6.19762e-05, 3.59044e-05, 2.18218e-05, 1.3573e-05, 8.55548e-06, 5.44774e-06, 3.50536e-06, 2.28246e-06, 1.50755e-06, 1.01614e-06, 7.07312e-07, 5.19348e-07, 4.05368e-07, 3.3366e-07, 2.85814e-07, 
			0.000122195, 6.15246e-05, 3.5757e-05, 2.17808e-05, 1.35777e-05, 8.58622e-06, 5.4983e-06, 3.55902e-06, 2.33408e-06, 1.55792e-06, 1.06865e-06, 7.65008e-07, 5.82984e-07, 4.70964e-07, 3.98564e-07, 3.48628e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.64458e-05, 3.34588e-05, 3.91138e-05, 4.38372e-05, 4.78471e-05, 5.12837e-05, 5.42491e-05, 5.68228e-05, 5.90676e-05, 6.1035e-05, 6.27661e-05, 6.42951e-05, 6.56499e-05, 6.68537e-05, 6.7926e-05, 6.88835e-05, 
			3.32872e-05, 4.02318e-05, 4.60832e-05, 5.108e-05, 5.53836e-05, 5.91154e-05, 6.23698e-05, 6.52227e-05, 6.77349e-05, 6.99561e-05, 7.1927e-05, 7.36811e-05, 7.52463e-05, 7.66461e-05, 7.79004e-05, 7.90261e-05, 
			4.0245e-05, 4.71118e-05, 5.30268e-05, 5.81492e-05, 6.26144e-05, 6.65248e-05, 6.9966e-05, 7.3007e-05, 7.57052e-05, 7.81068e-05, 8.0252e-05, 8.2171e-05, 8.38913e-05, 8.54376e-05, 8.68286e-05, 8.80812e-05, 
			4.72701e-05, 5.406e-05, 5.99988e-05, 6.52042e-05, 6.97834e-05, 7.38284e-05, 7.7414e-05, 8.06038e-05, 8.345e-05, 8.59972e-05, 8.82804e-05, 9.03332e-05, 9.218e-05, 9.38436e-05, 9.53454e-05, 9.67018e-05, 
			5.42666e-05, 6.09698e-05, 6.68998e-05, 7.21496e-05, 7.6806e-05, 8.0945e-05, 8.46362e-05, 8.79382e-05, 9.08994e-05, 9.35588e-05, 9.59542e-05, 9.8113e-05, 0.000100062, 0.000101824, 0.000103416, 0.000104858
		)
}

CapTable	"metal3_C_LATERAL_32NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000140481, 8.54892e-05, 6.28722e-05, 4.96658e-05, 4.07318e-05, 3.41894e-05, 2.91572e-05, 2.51548e-05, 2.18936e-05, 1.91865e-05, 1.69069e-05, 1.4965e-05, 1.32954e-05, 1.18489e-05, 1.05878e-05, 9.48242e-06, 
			0.000154879, 9.65942e-05, 7.18908e-05, 5.7259e-05, 4.72774e-05, 3.99194e-05, 3.4225e-05, 2.9668e-05, 2.59318e-05, 2.28118e-05, 2.01692e-05, 1.79056e-05, 1.59494e-05, 1.42465e-05, 1.27553e-05, 1.1443e-05, 
			0.000163127, 0.000103697, 7.79742e-05, 6.25708e-05, 5.19706e-05, 4.41022e-05, 3.7974e-05, 3.3041e-05, 2.89738e-05, 2.55602e-05, 2.2655e-05, 2.0156e-05, 1.79877e-05, 1.60934e-05, 1.44294e-05, 1.29608e-05, 
			0.000168981, 0.000109004, 8.26582e-05, 6.67278e-05, 5.56906e-05, 4.74466e-05, 4.099e-05, 3.57662e-05, 3.144e-05, 2.77938e-05, 2.46796e-05, 2.19918e-05, 1.9653e-05, 1.76044e-05, 1.58006e-05, 1.42052e-05, 
			0.000171906, 0.000112574, 8.60872e-05, 6.98944e-05, 5.8593e-05, 5.0101e-05, 4.34148e-05, 3.79788e-05, 3.34566e-05, 2.96312e-05, 2.63528e-05, 2.3515e-05, 2.10392e-05, 1.88652e-05, 1.69468e-05, 1.52468e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.26952e-05, 3.05776e-05, 3.60971e-05, 3.96519e-05, 4.18438e-05, 4.31263e-05, 4.3885e-05, 4.43195e-05, 4.45657e-05, 4.47045e-05, 4.47786e-05, 4.48173e-05, 4.48357e-05, 4.48381e-05, 4.48387e-05, 4.484e-05, 
			3.33643e-05, 4.16317e-05, 4.74202e-05, 5.1155e-05, 5.34394e-05, 5.48023e-05, 5.55961e-05, 5.60519e-05, 5.63088e-05, 5.64495e-05, 5.65236e-05, 5.6561e-05, 5.65791e-05, 5.6579e-05, 5.6579e-05, 5.658e-05, 
			4.44023e-05, 5.27928e-05, 5.86464e-05, 6.24157e-05, 6.47265e-05, 6.6099e-05, 6.68982e-05, 6.73539e-05, 6.76058e-05, 6.77434e-05, 6.78143e-05, 6.78515e-05, 6.78693e-05, 6.7869e-05, 6.787e-05, 6.7871e-05, 
			5.56158e-05, 6.40368e-05, 6.99102e-05, 7.36854e-05, 7.59957e-05, 7.73655e-05, 7.8158e-05, 7.86038e-05, 7.88499e-05, 7.89813e-05, 7.90514e-05, 7.90864e-05, 7.91043e-05, 7.91122e-05, 7.91137e-05, 7.91155e-05, 
			6.68702e-05, 7.52568e-05, 8.10806e-05, 8.48201e-05, 8.70986e-05, 8.84415e-05, 8.92141e-05, 8.96483e-05, 8.98872e-05, 9.0018e-05, 9.00875e-05, 9.01268e-05, 9.01479e-05, 9.01596e-05, 9.01633e-05, 9.01647e-05
		)
}

CapTable	"metal3_C_TOP_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.64726e-05, 6.19628e-05, 7.23865e-05, 7.89404e-05, 8.28917e-05, 8.5244e-05, 8.65948e-05, 8.73624e-05, 8.77847e-05, 8.80039e-05, 8.81051e-05, 8.8144e-05, 8.81563e-05, 8.81589e-05, 8.81583e-05, 8.8157e-05, 
			6.92773e-05, 8.52685e-05, 9.60646e-05, 0.000102867, 0.000106994, 0.000109412, 0.000110803, 0.000111578, 0.000111991, 0.000112194, 0.000112282, 0.000112315, 0.000112325, 0.000112327, 0.000112329, 0.000112328, 
			9.26677e-05, 0.000108757, 0.000119631, 0.000126465, 0.000130593, 0.000133006, 0.000134374, 0.000135121, 0.00013551, 0.000135696, 0.000135774, 0.000135802, 0.000135811, 0.000135818, 0.000135817, 0.000135816, 
			0.00011634, 0.000132444, 0.000143291, 0.000150107, 0.000154196, 0.000156565, 0.000157894, 0.000158615, 0.000158985, 0.000159157, 0.000159227, 0.000159259, 0.000159268, 0.00015927, 0.00015927, 0.000159262, 
			0.000139991, 0.000155935, 0.00016666, 0.000173374, 0.000177378, 0.000179685, 0.000180974, 0.000181671, 0.000182024, 0.000182182, 0.000182254, 0.000182279, 0.000182288, 0.000182283, 0.000182284, 0.000182284
		)
}

CapTable	"metal3_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000113508, 5.26836e-05, 2.81204e-05, 1.55217e-05, 8.61152e-06, 4.73372e-06, 2.54924e-06, 1.32411e-06, 6.48568e-07, 2.89654e-07, 1.13264e-07, 3.57458e-08, 4.98902e-09, 0, 0, 0, 
			0.000117119, 5.46318e-05, 2.91482e-05, 1.6032e-05, 8.82956e-06, 4.7997e-06, 2.5389e-06, 1.28508e-06, 6.09242e-07, 2.63552e-07, 1.00391e-07, 3.00072e-08, 1.91566e-09, 0, 0, 0, 
			0.000117041, 5.46912e-05, 2.91056e-05, 1.59413e-05, 8.71554e-06, 4.685e-06, 2.4428e-06, 1.21807e-06, 5.70242e-07, 2.45638e-07, 9.56678e-08, 3.05142e-08, 3.74726e-09, 0, 0, 0, 
			0.000116303, 5.43322e-05, 2.88348e-05, 1.57076e-05, 8.53226e-06, 4.5525e-06, 2.35798e-06, 1.1692e-06, 5.47128e-07, 2.41652e-07, 1.0156e-07, 3.85682e-08, 1.16738e-08, 1.77172e-09, 2.47632e-10, 2.53026e-09, 
			0.000113875, 5.33222e-05, 2.82604e-05, 1.53419e-05, 8.3064e-06, 4.4245e-06, 2.29294e-06, 1.14075e-06, 5.4283e-07, 2.5296e-07, 1.16488e-07, 5.22144e-08, 2.20882e-08, 9.3572e-09, 4.74572e-09, 4.33896e-09
		)
}

CapTable	"metal3_C_BOTTOM_GP_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			3.28054e-05, 4.23102e-05, 4.98766e-05, 5.59639e-05, 6.08794e-05, 6.48658e-05, 6.81192e-05, 7.07966e-05, 7.3021e-05, 7.48878e-05, 7.64702e-05, 7.7824e-05, 7.8992e-05, 8.0007e-05, 8.08947e-05, 8.16751e-05, 
			4.3194e-05, 5.27338e-05, 6.05304e-05, 6.68982e-05, 7.21092e-05, 7.63954e-05, 7.99476e-05, 8.29176e-05, 8.54244e-05, 8.75615e-05, 8.93985e-05, 9.09903e-05, 9.23801e-05, 9.36004e-05, 9.4678e-05, 9.56323e-05, 
			5.37322e-05, 6.31444e-05, 7.09544e-05, 7.74118e-05, 8.27674e-05, 8.72318e-05, 9.09798e-05, 9.4155e-05, 9.68696e-05, 9.92096e-05, 0.000101242, 0.000103021, 0.000104586, 0.000105971, 0.000107199, 0.000108293, 
			6.42432e-05, 7.35034e-05, 8.12836e-05, 8.77974e-05, 9.32602e-05, 9.78666e-05, 0.000101778, 0.000105126, 0.000108015, 0.000110526, 0.000112725, 0.000114662, 0.000116376, 0.000117899, 0.000119257, 0.00012047, 
			7.4561e-05, 8.3641e-05, 9.13548e-05, 9.78858e-05, 0.00010342, 0.00010813, 0.000112167, 0.000115654, 0.000118688, 0.000121344, 0.000123685, 0.000125758, 0.000127601, 0.000129247, 0.000130718, 0.000132038
		)
}

CapTable	"metal3_C_LATERAL_22NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000136114, 7.99718e-05, 5.67224e-05, 4.32802e-05, 3.43892e-05, 2.80708e-05, 2.33702e-05, 1.97546e-05, 1.68994e-05, 1.45954e-05, 1.27019e-05, 1.11216e-05, 9.78574e-06, 8.64418e-06, 7.65998e-06, 6.8052e-06, 
			0.000148777, 8.96772e-05, 6.46356e-05, 5.00028e-05, 4.02418e-05, 3.32386e-05, 2.79704e-05, 2.38684e-05, 2.05876e-05, 1.79065e-05, 1.56765e-05, 1.37947e-05, 1.21879e-05, 1.08026e-05, 9.59904e-06, 8.54668e-06, 
			0.000155816, 9.59286e-05, 7.01306e-05, 5.49122e-05, 4.46586e-05, 3.72282e-05, 3.15792e-05, 2.7133e-05, 2.35394e-05, 2.05734e-05, 1.8084e-05, 1.59662e-05, 1.4145e-05, 1.25652e-05, 1.11851e-05, 9.97294e-06, 
			0.000160953, 0.0001008, 7.45694e-05, 5.89476e-05, 4.83348e-05, 4.05734e-05, 3.46186e-05, 2.98904e-05, 2.6037e-05, 2.28326e-05, 2.01248e-05, 1.78077e-05, 1.58049e-05, 1.406e-05, 1.253e-05, 1.11817e-05, 
			0.00016356, 0.0001043, 7.80592e-05, 6.22512e-05, 5.14132e-05, 4.34192e-05, 3.7234e-05, 3.2282e-05, 2.82154e-05, 2.48116e-05, 2.19186e-05, 1.94305e-05, 1.72705e-05, 1.53815e-05, 1.37199e-05, 1.22514e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			5.73116e-05, 7.39074e-05, 8.27053e-05, 8.6897e-05, 8.88019e-05, 8.96504e-05, 9.0027e-05, 9.01899e-05, 9.02628e-05, 9.02972e-05, 9.03022e-05, 9.0303e-05, 9.03033e-05, 9.03037e-05, 9.0303e-05, 9.03033e-05, 
			8.78021e-05, 0.000104473, 0.000113318, 0.000117547, 0.000119474, 0.000120333, 0.000120713, 0.000120881, 0.000120962, 0.000121005, 0.000121003, 0.000121002, 0.000121, 0.000121001, 0.000121003, 0.000121004, 
			0.000118349, 0.000134945, 0.000143745, 0.000147946, 0.000149862, 0.000150717, 0.000151096, 0.000151273, 0.000151365, 0.000151405, 0.000151402, 0.0001514, 0.0001514, 0.000151402, 0.000151402, 0.000151403, 
			0.000149039, 0.000165577, 0.000174338, 0.000178522, 0.000180421, 0.000181275, 0.000181663, 0.000181853, 0.000181955, 0.000181989, 0.000181985, 0.000181985, 0.000181985, 0.000181985, 0.000181985, 0.000181986, 
			0.000179441, 0.000195758, 0.000204392, 0.000208521, 0.000210399, 0.000211247, 0.000211643, 0.000211848, 0.000211966, 0.000211998, 0.000211995, 0.000211994, 0.000211993, 0.000211993, 0.000211993, 0.000211993
		)
}

CapTable	"metal3_C_TOP_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.538e-05, 5.98758e-05, 6.78276e-05, 7.16726e-05, 7.34175e-05, 7.41837e-05, 7.45011e-05, 7.46211e-05, 7.46578e-05, 7.46682e-05, 7.46708e-05, 7.4669e-05, 7.46687e-05, 7.46683e-05, 7.467e-05, 7.46697e-05, 
			6.88615e-05, 8.35125e-05, 9.1527e-05, 9.53924e-05, 9.71399e-05, 9.78892e-05, 9.81901e-05, 9.82981e-05, 9.83276e-05, 9.83374e-05, 9.83402e-05, 9.83406e-05, 9.83435e-05, 9.8343e-05, 9.83395e-05, 9.83392e-05, 
			9.2503e-05, 0.00010708, 0.00011503, 0.000118835, 0.000120544, 0.000121268, 0.000121551, 0.000121645, 0.000121671, 0.000121681, 0.000121684, 0.000121689, 0.000121689, 0.000121684, 0.000121684, 0.000121683, 
			0.000116171, 0.00013066, 0.000138537, 0.000142292, 0.000143969, 0.000144655, 0.000144908, 0.000144994, 0.000145023, 0.000145039, 0.000145043, 0.000145039, 0.000145039, 0.000145039, 0.000145039, 0.000145038, 
			0.000139824, 0.000154113, 0.000161817, 0.000165496, 0.000167105, 0.000167737, 0.000167963, 0.000168041, 0.000168077, 0.000168089, 0.000168088, 0.000168089, 0.00016809, 0.00016809, 0.00016809, 0.00016809
		)
}

CapTable	"metal3_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			9.70714e-05, 3.67228e-05, 1.54341e-05, 6.58444e-06, 2.7856e-06, 1.14389e-06, 4.4488e-07, 1.61968e-07, 5.23806e-08, 7.59072e-09, 0, 0, 0, 0, 0, 0, 
			9.72474e-05, 3.68588e-05, 1.54879e-05, 6.5846e-06, 2.76342e-06, 1.1259e-06, 4.41128e-07, 1.65867e-07, 5.2934e-08, 9.54586e-10, 0, 0, 0, 0, 0, 0, 
			9.6073e-05, 3.64544e-05, 1.52777e-05, 6.48104e-06, 2.71184e-06, 1.10734e-06, 4.42894e-07, 1.71014e-07, 5.0313e-08, 0, 0, 0, 0, 0, 0, 0, 
			9.50962e-05, 3.6089e-05, 1.51005e-05, 6.38158e-06, 2.66748e-06, 1.09997e-06, 4.54098e-07, 1.78235e-07, 4.56776e-08, 0, 0, 0, 0, 0, 0, 0, 
			9.28236e-05, 3.53102e-05, 1.47865e-05, 6.234e-06, 2.61192e-06, 1.10378e-06, 4.78308e-07, 1.94155e-07, 4.40918e-08, 0, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal3_C_BOTTOM_GP_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			6.94925e-05, 8.89648e-05, 0.000101515, 0.000109773, 0.000115388, 0.000119331, 0.000122183, 0.000124299, 0.000125899, 0.00012713, 0.000128089, 0.000128845, 0.000129445, 0.000129926, 0.000130313, 0.000130628, 
			0.000100736, 0.000120148, 0.000133145, 0.000142007, 0.000148224, 0.00015271, 0.000156031, 0.000158539, 0.000160465, 0.000161965, 0.000163145, 0.000164083, 0.000164832, 0.000165436, 0.000165924, 0.000166322, 
			0.000131912, 0.000151236, 0.000164487, 0.000173716, 0.000180321, 0.000185168, 0.000188801, 0.000191577, 0.000193727, 0.000195413, 0.000196746, 0.00019781, 0.000198663, 0.000199352, 0.000199912, 0.000200368, 
			0.000163313, 0.000182616, 0.000196052, 0.000205548, 0.00021242, 0.000217513, 0.000221364, 0.000224325, 0.00022663, 0.000228445, 0.000229885, 0.000231037, 0.000231964, 0.000232714, 0.000233325, 0.000233824, 
			0.000194484, 0.000213602, 0.000227085, 0.000236723, 0.000243754, 0.000248997, 0.000252983, 0.00025606, 0.000258467, 0.000260366, 0.000261879, 0.00026309, 0.000264069, 0.000264863, 0.000265512, 0.000266045
		)
}

CapTable	"metal3_C_LATERAL_12NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000117067, 6.01132e-05, 3.7948e-05, 2.61966e-05, 1.90684e-05, 1.43874e-05, 1.11441e-05, 8.80838e-06, 7.07714e-06, 5.76564e-06, 4.7552e-06, 3.96632e-06, 3.34374e-06, 2.8479e-06, 2.44986e-06, 2.12794e-06, 
			0.000126017, 6.74236e-05, 4.38942e-05, 3.10388e-05, 2.30226e-05, 1.76287e-05, 1.38134e-05, 1.10184e-05, 8.91778e-06, 7.30852e-06, 6.0575e-06, 5.07368e-06, 4.2927e-06, 3.66778e-06, 3.1642e-06, 2.75574e-06, 
			0.000131277, 7.22794e-05, 4.80126e-05, 3.44938e-05, 2.59012e-05, 2.00294e-05, 1.58235e-05, 1.27111e-05, 1.03535e-05, 8.53628e-06, 7.11674e-06, 5.99612e-06, 5.1037e-06, 4.38768e-06, 3.80926e-06, 3.33898e-06, 
			0.000135086, 7.58638e-05, 5.10986e-05, 3.7098e-05, 2.81042e-05, 2.1897e-05, 1.74159e-05, 1.40797e-05, 1.15407e-05, 9.57652e-06, 8.0378e-06, 6.82012e-06, 5.84832e-06, 5.0669e-06, 4.43422e-06, 3.91852e-06, 
			0.000136488, 7.8112e-05, 5.3263e-05, 3.90198e-05, 2.97874e-05, 2.3373e-05, 1.87177e-05, 1.52374e-05, 1.25774e-05, 1.05144e-05, 8.89454e-06, 7.6099e-06, 6.58226e-06, 5.7538e-06, 5.08098e-06, 4.53058e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.7654e-05, 2.18494e-05, 2.5525e-05, 2.89526e-05, 3.22158e-05, 3.53287e-05, 3.82829e-05, 4.10685e-05, 4.36773e-05, 4.61059e-05, 4.83546e-05, 5.04274e-05, 5.23302e-05, 5.40711e-05, 5.56592e-05, 5.71043e-05, 
			2.0644e-05, 2.48336e-05, 2.87576e-05, 3.24886e-05, 3.60454e-05, 3.94252e-05, 4.26178e-05, 4.56161e-05, 4.84161e-05, 5.10173e-05, 5.34225e-05, 5.56378e-05, 5.76707e-05, 5.95309e-05, 6.12284e-05, 6.27739e-05, 
			2.4049e-05, 2.83774e-05, 3.24986e-05, 3.64262e-05, 4.01618e-05, 4.36984e-05, 4.70306e-05, 5.01519e-05, 5.30618e-05, 5.57621e-05, 5.82575e-05, 6.05552e-05, 6.2664e-05, 6.45938e-05, 6.63555e-05, 6.79605e-05, 
			2.7876e-05, 3.23236e-05, 3.65758e-05, 4.06252e-05, 4.44678e-05, 4.80978e-05, 5.15108e-05, 5.4705e-05, 5.76802e-05, 6.04398e-05, 6.29898e-05, 6.53378e-05, 6.74933e-05, 6.94667e-05, 7.12693e-05, 7.29122e-05, 
			3.2e-05, 3.65436e-05, 4.0878e-05, 4.50016e-05, 4.89088e-05, 5.2595e-05, 5.60584e-05, 5.92986e-05, 6.23148e-05, 6.5113e-05, 6.76982e-05, 7.00798e-05, 7.22671e-05, 7.42703e-05, 7.61009e-05, 7.77706e-05
		)
}

CapTable	"metal4_C_LATERAL_51NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000233706, 0.000139153, 0.000102772, 8.19684e-05, 6.78842e-05, 5.7461e-05, 4.93292e-05, 4.27656e-05, 3.73434e-05, 3.27892e-05, 2.89168e-05, 2.55932e-05, 2.27202e-05, 2.02226e-05, 1.80413e-05, 1.61292e-05, 
			0.000251586, 0.000151813, 0.000112235, 8.93554e-05, 7.38406e-05, 6.23898e-05, 5.34908e-05, 4.63362e-05, 4.04456e-05, 3.55116e-05, 3.13254e-05, 2.77382e-05, 2.4641e-05, 2.19502e-05, 1.96012e-05, 1.75423e-05, 
			0.000261186, 0.000158883, 0.000117611, 9.36118e-05, 7.73162e-05, 6.53006e-05, 5.59774e-05, 4.84936e-05, 4.23406e-05, 3.71924e-05, 3.28278e-05, 2.90898e-05, 2.5863e-05, 2.306e-05, 2.06128e-05, 1.84671e-05, 
			0.000266322, 0.000162979, 0.000120835, 9.62178e-05, 7.94952e-05, 6.71632e-05, 5.75952e-05, 4.9919e-05, 4.36108e-05, 3.83344e-05, 3.38618e-05, 3.00314e-05, 2.67244e-05, 2.3851e-05, 2.13412e-05, 1.91399e-05, 
			0.00026957, 0.000165608, 0.00012297, 9.79914e-05, 8.10002e-05, 6.847e-05, 5.87496e-05, 5.09514e-05, 4.45432e-05, 3.9183e-05, 3.46388e-05, 3.07462e-05, 2.73846e-05, 2.44626e-05, 2.19094e-05, 1.96688e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.9626e-05, 2.45852e-05, 2.89776e-05, 3.30648e-05, 3.692e-05, 4.05476e-05, 4.39387e-05, 4.70841e-05, 4.99811e-05, 5.26323e-05, 5.50457e-05, 5.72328e-05, 5.92072e-05, 6.09841e-05, 6.25791e-05, 6.40078e-05, 
			2.3471e-05, 2.8505e-05, 3.3213e-05, 3.76526e-05, 4.18344e-05, 4.57512e-05, 4.9396e-05, 5.27661e-05, 5.58631e-05, 5.86942e-05, 6.12705e-05, 6.36057e-05, 6.57149e-05, 6.76148e-05, 6.93221e-05, 7.08532e-05, 
			2.7829e-05, 3.30494e-05, 3.7985e-05, 4.26358e-05, 4.70034e-05, 5.10806e-05, 5.48658e-05, 5.83598e-05, 6.1568e-05, 6.44994e-05, 6.71674e-05, 6.95865e-05, 7.17731e-05, 7.37443e-05, 7.55174e-05, 7.71093e-05, 
			3.2667e-05, 3.8022e-05, 4.3093e-05, 4.78644e-05, 5.23346e-05, 5.6501e-05, 6.03636e-05, 6.39276e-05, 6.72e-05, 7.01902e-05, 7.29132e-05, 7.53834e-05, 7.76186e-05, 7.96342e-05, 8.14494e-05, 8.30811e-05, 
			3.7819e-05, 4.32706e-05, 4.84178e-05, 5.32574e-05, 5.77852e-05, 6.20034e-05, 6.59134e-05, 6.952e-05, 7.28324e-05, 7.58606e-05, 7.86196e-05, 8.1125e-05, 8.3392e-05, 8.54392e-05, 8.72847e-05, 8.89442e-05
		)
}

CapTable	"metal4_C_LATERAL_41NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000232192, 0.000137192, 0.000100448, 7.93622e-05, 6.5072e-05, 5.4513e-05, 4.6306e-05, 3.97184e-05, 3.43134e-05, 2.98092e-05, 2.60124e-05, 2.27838e-05, 2.00198e-05, 1.76408e-05, 1.55843e-05, 1.38002e-05, 
			0.000249536, 0.000149342, 0.000109439, 8.63234e-05, 7.06516e-05, 5.91108e-05, 5.01772e-05, 4.3032e-05, 3.71864e-05, 3.2325e-05, 2.82324e-05, 2.47548e-05, 2.17786e-05, 1.92167e-05, 1.70012e-05, 1.5078e-05, 
			0.00025863, 0.000155963, 0.000114428, 9.02522e-05, 7.38526e-05, 6.17914e-05, 5.24692e-05, 4.50232e-05, 3.8937e-05, 3.38782e-05, 2.96204e-05, 2.60024e-05, 2.29048e-05, 2.02372e-05, 1.79286e-05, 1.59231e-05, 
			0.00026333, 0.000159696, 0.000117356, 9.26206e-05, 7.58414e-05, 6.3501e-05, 5.39624e-05, 4.63454e-05, 4.012e-05, 3.49448e-05, 3.05878e-05, 2.68836e-05, 2.37104e-05, 2.09758e-05, 1.86076e-05, 1.65485e-05, 
			0.000266224, 0.000162043, 0.000119272, 9.42246e-05, 7.72148e-05, 6.47046e-05, 5.50346e-05, 4.7311e-05, 4.09966e-05, 3.57454e-05, 3.13224e-05, 2.756e-05, 2.4335e-05, 2.15538e-05, 1.91433e-05, 1.70458e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			2.2264e-05, 2.82624e-05, 3.35976e-05, 3.85248e-05, 4.31118e-05, 4.73608e-05, 5.1262e-05, 5.48113e-05, 5.80136e-05, 6.08817e-05, 6.3435e-05, 6.56967e-05, 6.76918e-05, 6.94461e-05, 7.09848e-05, 7.23315e-05, 
			2.7372e-05, 3.35444e-05, 3.9273e-05, 4.46066e-05, 4.95512e-05, 5.4105e-05, 5.82664e-05, 6.20404e-05, 6.54405e-05, 6.8486e-05, 7.11996e-05, 7.36076e-05, 7.57364e-05, 7.76133e-05, 7.92642e-05, 8.0714e-05, 
			3.3107e-05, 3.95128e-05, 4.5496e-05, 5.10522e-05, 5.61836e-05, 6.08926e-05, 6.51854e-05, 6.90758e-05, 7.25802e-05, 7.57212e-05, 7.8522e-05, 8.1012e-05, 8.32176e-05, 8.51658e-05, 8.68831e-05, 8.83938e-05, 
			3.9376e-05, 4.59282e-05, 5.20438e-05, 5.771e-05, 6.29308e-05, 6.77152e-05, 7.2076e-05, 7.60278e-05, 7.95892e-05, 8.27844e-05, 8.56378e-05, 8.81786e-05, 9.04322e-05, 9.24265e-05, 9.41882e-05, 9.57412e-05, 
			4.5968e-05, 5.2607e-05, 5.87866e-05, 6.45058e-05, 6.97738e-05, 7.45996e-05, 7.8998e-05, 8.29864e-05, 8.65846e-05, 8.9815e-05, 9.27052e-05, 9.5279e-05, 9.7567e-05, 9.95936e-05, 0.000101387, 0.00010297
		)
}

CapTable	"metal4_C_LATERAL_31NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000230162, 0.000134623, 9.74854e-05, 7.61032e-05, 6.16002e-05, 5.09056e-05, 4.26342e-05, 3.60444e-05, 3.06896e-05, 2.62784e-05, 2.2608e-05, 1.9531e-05, 1.69367e-05, 1.47392e-05, 1.28708e-05, 1.12773e-05, 
			0.00024679, 0.000146144, 0.000105912, 8.25634e-05, 6.67438e-05, 5.5131e-05, 4.61906e-05, 3.90936e-05, 3.33402e-05, 2.86058e-05, 2.46672e-05, 2.1363e-05, 1.85737e-05, 1.62067e-05, 1.419e-05, 1.24656e-05, 
			0.000255288, 0.000152255, 0.000110467, 8.61298e-05, 6.96484e-05, 5.75724e-05, 4.82916e-05, 4.09322e-05, 3.49688e-05, 3.00608e-05, 2.5975e-05, 2.2544e-05, 1.96434e-05, 1.71782e-05, 1.50739e-05, 1.32712e-05, 
			0.000259488, 0.000155586, 0.000113076, 8.8251e-05, 7.14502e-05, 5.91438e-05, 4.9684e-05, 4.21822e-05, 3.61008e-05, 3.10916e-05, 2.69172e-05, 2.34074e-05, 2.04358e-05, 1.79065e-05, 1.57438e-05, 1.38878e-05, 
			0.000262018, 0.000157648, 0.000114775, 8.96942e-05, 7.27072e-05, 6.02654e-05, 5.07e-05, 4.31106e-05, 3.69534e-05, 3.1878e-05, 2.76438e-05, 2.408e-05, 2.1059e-05, 1.84844e-05, 1.62802e-05, 1.43859e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			3.0179e-05, 3.94156e-05, 4.74002e-05, 5.4378e-05, 6.04908e-05, 6.58324e-05, 7.04806e-05, 7.45078e-05, 7.79812e-05, 8.09654e-05, 8.35209e-05, 8.57028e-05, 8.75625e-05, 8.91456e-05, 9.04919e-05, 9.16365e-05, 
			3.9434e-05, 4.89616e-05, 5.73736e-05, 6.47612e-05, 7.12356e-05, 7.68918e-05, 8.18166e-05, 8.60886e-05, 8.978e-05, 9.29612e-05, 9.56953e-05, 9.80382e-05, 0.000100045, 0.00010176, 0.000103227, 0.00010448, 
			4.9427e-05, 5.915e-05, 6.7759e-05, 7.53286e-05, 8.19662e-05, 8.77726e-05, 9.28354e-05, 9.72362e-05, 0.00010105, 0.000104344, 0.000107183, 0.000109626, 0.000111724, 0.000113524, 0.00011507, 0.000116396, 
			5.9902e-05, 6.96814e-05, 7.8357e-05, 8.59966e-05, 9.27062e-05, 9.8585e-05, 0.000103723, 0.000108199, 0.000112087, 0.000115455, 0.000118366, 0.000120878, 0.000123043, 0.000124907, 0.000126511, 0.000127893, 
			7.0603e-05, 8.0399e-05, 8.90892e-05, 9.67598e-05, 0.000103511, 0.000109438, 0.000114628, 0.00011916, 0.000123104, 0.00012653, 0.000129497, 0.000132064, 0.000134282, 0.000136197, 0.000137849, 0.000139275
		)
}

CapTable	"metal4_C_LATERAL_21NOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000224554, 0.000127633, 8.97638e-05, 6.8121e-05, 5.36682e-05, 4.32156e-05, 3.52984e-05, 2.91242e-05, 2.42138e-05, 2.02546e-05, 1.70301e-05, 1.43842e-05, 1.22e-05, 1.03884e-05, 8.8798e-06, 7.61906e-06, 
			0.000239256, 0.000137711, 9.71414e-05, 7.38198e-05, 5.82464e-05, 4.70052e-05, 3.85034e-05, 3.18764e-05, 2.6603e-05, 2.23448e-05, 1.88687e-05, 1.60078e-05, 1.3638e-05, 1.16647e-05, 1.00143e-05, 8.6287e-06, 
			0.000246446, 0.000142971, 0.000101161, 7.70554e-05, 6.09468e-05, 4.93174e-05, 4.05176e-05, 3.36508e-05, 2.81774e-05, 2.37482e-05, 2.01234e-05, 1.71315e-05, 1.46454e-05, 1.25685e-05, 1.08253e-05, 9.35648e-06, 
			0.000249898, 0.000145898, 0.000103578, 7.91084e-05, 6.27498e-05, 5.0925e-05, 4.19602e-05, 3.49524e-05, 2.93552e-05, 2.48152e-05, 2.10902e-05, 1.80071e-05, 1.54379e-05, 1.3285e-05, 1.14725e-05, 9.94032e-06, 
			0.000252112, 0.000147861, 0.000105303, 8.06412e-05, 6.41236e-05, 5.217e-05, 4.30942e-05, 3.59862e-05, 3.02976e-05, 2.56734e-05, 2.1871e-05, 1.87166e-05, 1.60817e-05, 1.38683e-05, 1.20003e-05, 1.04174e-05
		)
}

CapTable	"metal4_C_BOTTOM_GPNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			5.8329e-05, 7.65914e-05, 9.0063e-05, 0.000100221, 0.00010809, 0.0001143, 0.00011925, 0.000123214, 0.000126397, 0.000128952, 0.000131006, 0.000132658, 0.000133989, 0.000135063, 0.000135932, 0.000136637, 
			8.3307e-05, 0.000101573, 0.000115347, 0.000125914, 0.000134207, 0.000140814, 0.000146122, 0.000150402, 0.00015386, 0.000156654, 0.000158914, 0.000160743, 0.000162226, 0.000163429, 0.000164409, 0.000165208, 
			0.000108703, 0.000126947, 0.000140856, 0.00015163, 0.000160147, 0.000166973, 0.000172486, 0.000176953, 0.000180578, 0.000183522, 0.000185913, 0.000187857, 0.000189439, 0.000190731, 0.000191786, 0.000192651, 
			0.000134396, 0.000152566, 0.000166524, 0.000177408, 0.000186047, 0.000193, 0.000198641, 0.000203229, 0.000206966, 0.00021001, 0.000212493, 0.000214519, 0.000216174, 0.000217529, 0.00021864, 0.000219555, 
			0.000160295, 0.000178429, 0.000192412, 0.000203357, 0.000212085, 0.000219126, 0.000224853, 0.000229525, 0.00023334, 0.000236458, 0.000239008, 0.000241094, 0.000242804, 0.000244207, 0.000245363, 0.000246316
		)
}

CapTable	"metal4_C_LATERALNOM" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000208782, 0.000110594, 7.3153e-05, 5.26202e-05, 3.94946e-05, 3.0391e-05, 2.37682e-05, 1.88056e-05, 1.50151e-05, 1.20818e-05, 9.79008e-06, 7.98616e-06, 6.5573e-06, 5.41914e-06, 4.50776e-06, 3.77432e-06, 
			0.0002202, 0.000118861, 7.94344e-05, 5.757e-05, 4.3486e-05, 3.36644e-05, 2.64842e-05, 2.10782e-05, 1.69288e-05, 1.37016e-05, 1.11672e-05, 9.16162e-06, 7.5644e-06, 6.28518e-06, 5.25524e-06, 4.42178e-06, 
			0.000226112, 0.00012352, 8.31408e-05, 6.06064e-05, 4.60172e-05, 3.5801e-05, 2.83032e-05, 2.26358e-05, 1.82689e-05, 1.48589e-05, 1.21699e-05, 1.00333e-05, 8.32454e-06, 6.95022e-06, 5.83898e-06, 4.93592e-06, 
			0.000229202, 0.000126339, 8.55376e-05, 6.2643e-05, 4.7785e-05, 3.7343e-05, 2.96476e-05, 2.38122e-05, 1.9301e-05, 1.57666e-05, 1.29701e-05, 1.07404e-05, 8.95108e-06, 7.50684e-06, 6.33486e-06, 5.37896e-06, 
			0.000231352, 0.000128315, 8.72844e-05, 6.418e-05, 4.91294e-05, 3.85306e-05, 3.0702e-05, 2.47498e-05, 2.0136e-05, 1.65116e-05, 1.36363e-05, 1.13374e-05, 9.4874e-06, 7.98988e-06, 6.7711e-06, 5.77404e-06
		)
}

CapTable	"poly_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			2.89242e-05, 4.01788e-05, 4.68089e-05, 5.02671e-05, 5.19649e-05, 5.27708e-05, 5.31523e-05, 5.33298e-05, 5.34119e-05, 5.34511e-05, 5.34703e-05, 5.34805e-05, 5.34863e-05, 5.34899e-05, 5.34919e-05, 5.34902e-05, 
			4.03136e-05, 5.19886e-05, 5.88433e-05, 6.242e-05, 6.41748e-05, 6.50134e-05, 6.54064e-05, 6.55903e-05, 6.56767e-05, 6.57176e-05, 6.57369e-05, 6.57478e-05, 6.57541e-05, 6.5758e-05, 6.57594e-05, 6.57606e-05, 
			5.1961e-05, 6.37395e-05, 7.06381e-05, 7.42376e-05, 7.60071e-05, 7.68498e-05, 7.72453e-05, 7.74301e-05, 7.75172e-05, 7.75584e-05, 7.75796e-05, 7.75906e-05, 7.75975e-05, 7.75994e-05, 7.76029e-05, 7.76041e-05, 
			6.37114e-05, 7.55066e-05, 8.24119e-05, 8.60134e-05, 8.77815e-05, 8.86225e-05, 8.90189e-05, 8.92036e-05, 8.9291e-05, 8.93331e-05, 8.93548e-05, 8.93672e-05, 8.93711e-05, 8.93763e-05, 8.93792e-05, 8.93817e-05, 
			7.5437e-05, 8.71956e-05, 9.40712e-05, 9.76473e-05, 9.94045e-05, 0.000100242, 0.000100634, 0.00010082, 0.000100907, 0.000100948, 0.000100971, 0.000100982, 0.00010099, 0.000100995, 0.000100999, 0.000101003
		)
}

CapTable	"poly_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.4943e-05, 6.13398e-05, 7.0707e-05, 7.55233e-05, 7.78711e-05, 7.8989e-05, 7.95102e-05, 7.97546e-05, 7.98682e-05, 7.99198e-05, 7.99412e-05, 7.99492e-05, 7.99523e-05, 7.99535e-05, 7.9954e-05, 7.99568e-05, 
			6.33518e-05, 8.02338e-05, 8.98641e-05, 9.48195e-05, 9.72354e-05, 9.83814e-05, 9.89209e-05, 9.91725e-05, 9.92889e-05, 9.93405e-05, 9.9361e-05, 9.93687e-05, 9.93719e-05, 9.93732e-05, 9.93771e-05, 9.93774e-05, 
			8.20648e-05, 9.90319e-05, 0.000108703, 0.000113678, 0.000116104, 0.000117259, 0.000117801, 0.000118054, 0.000118169, 0.000118219, 0.000118238, 0.000118246, 0.000118249, 0.000118255, 0.000118255, 0.000118256, 
			0.000100915, 0.00011788, 0.000127541, 0.000132508, 0.000134935, 0.000136089, 0.000136629, 0.000136881, 0.000136995, 0.000137042, 0.00013706, 0.000137067, 0.000137076, 0.000137077, 0.000137078, 0.000137078, 
			0.000119674, 0.000136571, 0.000146182, 0.000151124, 0.000153538, 0.000154685, 0.000155223, 0.000155471, 0.000155582, 0.000155627, 0.000155644, 0.000155657, 0.00015566, 0.000155662, 0.000155663, 0.000155657
		)
}

CapTable	"poly_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			9.61438e-05, 3.84854e-05, 1.72911e-05, 7.94758e-06, 3.67396e-06, 1.70021e-06, 7.86536e-07, 3.62596e-07, 1.65884e-07, 7.50518e-08, 3.44926e-08, 1.63338e-08, 7.43774e-09, 2.64248e-09, 1.1926e-10, 0, 
			9.89706e-05, 3.96636e-05, 1.78276e-05, 8.19752e-06, 3.7908e-06, 1.75518e-06, 8.11702e-07, 3.74192e-07, 1.71394e-07, 7.88724e-08, 3.81514e-08, 1.94957e-08, 1.00247e-08, 4.75694e-09, 1.49182e-09, 1.20604e-11, 
			9.93232e-05, 3.98336e-05, 1.79169e-05, 8.24144e-06, 3.81192e-06, 1.76423e-06, 8.15716e-07, 3.75922e-07, 1.72837e-07, 8.15528e-08, 4.14262e-08, 2.24508e-08, 1.24769e-08, 6.58956e-09, 3.10864e-09, 8.73004e-10, 
			9.91586e-05, 3.97944e-05, 1.78941e-05, 8.23264e-06, 3.8065e-06, 1.76146e-06, 8.14136e-07, 3.75392e-07, 1.74017e-07, 8.4873e-08, 4.51984e-08, 2.57538e-08, 1.49506e-08, 8.73758e-09, 4.8478e-09, 2.29056e-09, 
			9.8413e-05, 3.95334e-05, 1.77788e-05, 8.18472e-06, 3.7845e-06, 1.75119e-06, 8.09728e-07, 3.74328e-07, 1.76411e-07, 8.97318e-08, 5.0199e-08, 2.9805e-08, 1.85619e-08, 1.17728e-08, 7.42788e-09, 4.73726e-09
		)
}

CapTable	"poly_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.17199e-05, 4.36467e-05, 5.22749e-05, 5.83076e-05, 6.24377e-05, 6.52355e-05, 6.71208e-05, 6.83878e-05, 6.92374e-05, 6.98096e-05, 7.01936e-05, 7.04513e-05, 7.0624e-05, 7.07397e-05, 7.08171e-05, 7.08686e-05, 
			4.23338e-05, 5.48424e-05, 6.4013e-05, 7.04801e-05, 7.49414e-05, 7.79811e-05, 8.00368e-05, 8.14383e-05, 8.23556e-05, 8.29845e-05, 8.34066e-05, 8.36895e-05, 8.38793e-05, 8.40064e-05, 8.40916e-05, 8.4148e-05, 
			5.33866e-05, 6.61778e-05, 7.56148e-05, 8.23101e-05, 8.69481e-05, 9.01176e-05, 9.22824e-05, 9.37181e-05, 9.46981e-05, 9.53573e-05, 9.58001e-05, 9.60984e-05, 9.62978e-05, 9.6431e-05, 9.65203e-05, 9.65783e-05, 
			6.47209e-05, 7.76644e-05, 8.72636e-05, 9.40913e-05, 9.88325e-05, 0.000102095, 0.000104285, 0.000105778, 0.000106785, 0.000107463, 0.000107918, 0.000108225, 0.00010843, 0.000108567, 0.000108659, 0.000108718, 
			7.61542e-05, 8.91707e-05, 9.8848e-05, 0.000105741, 0.000110538, 0.000113824, 0.000116061, 0.000117575, 0.000118596, 0.000119285, 0.000119747, 0.000120058, 0.000120266, 0.000120404, 0.000120496, 0.000120557
		)
}

CapTable	"poly_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			1.43763e-05, 1.98917e-05, 2.40253e-05, 2.6979e-05, 2.90336e-05, 3.04377e-05, 3.13888e-05, 3.20323e-05, 3.24657e-05, 3.27566e-05, 3.29518e-05, 3.30823e-05, 3.31689e-05, 3.32267e-05, 3.32624e-05, 3.32854e-05, 
			1.8806e-05, 2.46292e-05, 2.90594e-05, 3.22617e-05, 3.45024e-05, 3.60447e-05, 3.70959e-05, 3.77928e-05, 3.82896e-05, 3.8613e-05, 3.88299e-05, 3.89757e-05, 3.90704e-05, 3.91338e-05, 3.91724e-05, 3.9197e-05, 
			2.3437e-05, 2.94308e-05, 3.4029e-05, 3.73657e-05, 3.97118e-05, 4.13329e-05, 4.24248e-05, 4.31927e-05, 4.37003e-05, 4.40419e-05, 4.42707e-05, 4.44229e-05, 4.4523e-05, 4.45877e-05, 4.46284e-05, 4.46533e-05, 
			2.81975e-05, 3.43084e-05, 3.9008e-05, 4.24277e-05, 4.4841e-05, 4.64949e-05, 4.76525e-05, 4.84281e-05, 4.89522e-05, 4.93045e-05, 4.95415e-05, 4.96961e-05, 4.97981e-05, 4.98634e-05, 4.99041e-05, 4.99287e-05, 
			3.30364e-05, 3.92143e-05, 4.39702e-05, 4.74361e-05, 4.98848e-05, 5.15805e-05, 5.27411e-05, 5.35295e-05, 5.40619e-05, 5.44194e-05, 5.46594e-05, 5.4815e-05, 5.49171e-05, 5.49819e-05, 5.5022e-05, 5.5046e-05
		)
}

CapTable	"poly_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.00011246, 5.68636e-05, 3.39518e-05, 2.13924e-05, 1.38127e-05, 9.0368e-06, 5.95644e-06, 3.94086e-06, 2.6109e-06, 1.72777e-06, 1.13958e-06, 7.47376e-07, 4.86114e-07, 3.12642e-07, 1.98483e-07, 1.24032e-07, 
			0.000120329, 6.15454e-05, 3.69706e-05, 2.33962e-05, 1.51562e-05, 9.93816e-06, 6.55928e-06, 4.34388e-06, 2.8768e-06, 1.90255e-06, 1.25349e-06, 8.20784e-07, 5.3325e-07, 3.42776e-07, 2.17974e-07, 1.36957e-07, 
			0.00012405, 6.39494e-05, 3.85802e-05, 2.44842e-05, 1.58921e-05, 1.04335e-05, 6.89176e-06, 4.5622e-06, 3.02064e-06, 1.99578e-06, 1.31317e-06, 8.58746e-07, 5.57164e-07, 3.58274e-07, 2.28332e-07, 1.44367e-07, 
			0.000126109, 6.53582e-05, 3.95294e-05, 2.5132e-05, 1.63305e-05, 1.07291e-05, 7.08602e-06, 4.68988e-06, 3.10274e-06, 2.0476e-06, 1.34508e-06, 8.78512e-07, 5.69524e-07, 3.6647e-07, 2.34312e-07, 1.49148e-07, 
			0.000126775, 6.5996e-05, 3.99958e-05, 2.5464e-05, 1.65575e-05, 1.08807e-05, 7.18622e-06, 4.75452e-06, 3.14366e-06, 2.07314e-06, 1.36107e-06, 8.89016e-07, 5.77166e-07, 3.7282e-07, 2.40126e-07, 1.54659e-07
		)
}

CapTable	"poly_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.40172e-05, 4.62817e-05, 5.51727e-05, 6.15501e-05, 6.61273e-05, 6.94307e-05, 7.18388e-05, 7.36117e-05, 7.49253e-05, 7.59072e-05, 7.66457e-05, 7.72026e-05, 7.76245e-05, 7.79426e-05, 7.81863e-05, 7.83717e-05, 
			4.46468e-05, 5.73417e-05, 6.67404e-05, 7.35983e-05, 7.85905e-05, 8.2242e-05, 8.49307e-05, 8.69244e-05, 8.84145e-05, 8.95331e-05, 9.03765e-05, 9.10159e-05, 9.14984e-05, 9.18662e-05, 9.21471e-05, 9.23615e-05, 
			5.5588e-05, 6.84626e-05, 7.81333e-05, 8.52761e-05, 9.05311e-05, 9.4409e-05, 9.72839e-05, 9.94292e-05, 0.000101039, 0.000102251, 0.000103168, 0.000103861, 0.00010439, 0.000104793, 0.000105099, 0.000105332, 
			6.67206e-05, 7.97015e-05, 8.95564e-05, 9.68991e-05, 0.000102343, 0.000106384, 0.000109395, 0.000111651, 0.000113349, 0.000114633, 0.000115601, 0.00011634, 0.000116901, 0.000117329, 0.000117655, 0.000117903, 
			7.79169e-05, 9.09551e-05, 0.000100931, 0.00010841, 0.000113984, 0.000118141, 0.00012125, 0.000123586, 0.000125349, 0.000126679, 0.00012769, 0.000128459, 0.000129045, 0.000129491, 0.000129831, 0.000130089
		)
}

CapTable	"poly_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			8.59881e-06, 1.17545e-05, 1.41289e-05, 1.58753e-05, 1.71496e-05, 1.80824e-05, 1.8768e-05, 1.92741e-05, 1.96525e-05, 1.9936e-05, 2.01488e-05, 2.03102e-05, 2.04324e-05, 2.05277e-05, 2.05981e-05, 2.06516e-05, 
			1.10094e-05, 1.42799e-05, 1.68068e-05, 1.87021e-05, 2.01099e-05, 2.11535e-05, 2.19277e-05, 2.25077e-05, 2.29417e-05, 2.32695e-05, 2.35166e-05, 2.37041e-05, 2.38496e-05, 2.39579e-05, 2.40395e-05, 2.4102e-05, 
			1.34768e-05, 1.68126e-05, 1.94309e-05, 2.14227e-05, 2.29173e-05, 2.40337e-05, 2.48713e-05, 2.54995e-05, 2.59734e-05, 2.63323e-05, 2.66037e-05, 2.68128e-05, 2.69696e-05, 2.70888e-05, 2.71787e-05, 2.72481e-05, 
			1.59858e-05, 1.93679e-05, 2.20554e-05, 2.41163e-05, 2.56726e-05, 2.68457e-05, 2.77283e-05, 2.8394e-05, 2.8898e-05, 2.92785e-05, 2.95721e-05, 2.97924e-05, 2.996e-05, 3.00866e-05, 3.01842e-05, 3.02567e-05, 
			1.85191e-05, 2.19409e-05, 2.46768e-05, 2.67843e-05, 2.83874e-05, 2.95997e-05, 3.05145e-05, 3.12068e-05, 3.17315e-05, 3.21335e-05, 3.24364e-05, 3.26659e-05, 3.28411e-05, 3.29744e-05, 3.30754e-05, 3.31519e-05
		)
}

CapTable	"poly_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000114999, 6.05598e-05, 3.83404e-05, 2.60086e-05, 1.83071e-05, 1.31889e-05, 9.65222e-06, 7.14216e-06, 5.32552e-06, 3.99192e-06, 3.00254e-06, 2.26286e-06, 1.70666e-06, 1.28652e-06, 9.68508e-07, 7.27268e-07, 
			0.000124174, 6.66124e-05, 4.26878e-05, 2.92356e-05, 2.07346e-05, 1.50255e-05, 1.10456e-05, 8.19988e-06, 6.12884e-06, 4.60144e-06, 3.46488e-06, 2.61298e-06, 1.97101e-06, 1.4859e-06, 1.11841e-06, 8.3948e-07, 
			0.000129255, 7.03288e-05, 4.54958e-05, 3.13772e-05, 2.23736e-05, 1.62803e-05, 1.20048e-05, 8.93232e-06, 6.68662e-06, 5.02564e-06, 3.78656e-06, 2.85612e-06, 2.1545e-06, 1.62374e-06, 1.22153e-06, 9.16136e-07, 
			0.000132645, 7.29556e-05, 4.75132e-05, 3.29366e-05, 2.35776e-05, 1.72067e-05, 1.27157e-05, 9.47566e-06, 7.1008e-06, 5.34066e-06, 4.0247e-06, 3.03576e-06, 2.28934e-06, 1.72455e-06, 1.29613e-06, 9.71302e-07, 
			0.000134546, 7.4673e-05, 4.8895e-05, 3.40314e-05, 2.4431e-05, 1.78675e-05, 1.32245e-05, 9.86584e-06, 7.39862e-06, 5.56656e-06, 4.19592e-06, 3.16494e-06, 2.38626e-06, 1.79679e-06, 1.34993e-06, 1.011e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			3.56013e-05, 4.82417e-05, 5.73706e-05, 6.39267e-05, 6.86599e-05, 7.21189e-05, 7.46827e-05, 7.66099e-05, 7.8079e-05, 7.92123e-05, 8.00975e-05, 8.07925e-05, 8.13437e-05, 8.17839e-05, 8.21374e-05, 8.24219e-05, 
			4.64221e-05, 5.94115e-05, 6.90043e-05, 7.60224e-05, 8.1176e-05, 8.50001e-05, 8.78708e-05, 9.00555e-05, 9.1737e-05, 9.30459e-05, 9.40736e-05, 9.48857e-05, 9.5534e-05, 9.60539e-05, 9.64725e-05, 9.681e-05, 
			5.74833e-05, 7.05764e-05, 8.04008e-05, 8.76913e-05, 9.31149e-05, 9.71829e-05, 0.00010027, 0.000102638, 0.000104476, 0.000105914, 0.00010705, 0.000107952, 0.000108675, 0.000109255, 0.000109725, 0.000110105, 
			6.86689e-05, 8.18022e-05, 9.17812e-05, 9.92669e-05, 0.000104889, 0.000109143, 0.000112396, 0.00011491, 0.000116871, 0.000118412, 0.000119636, 0.000120613, 0.000121395, 0.000122026, 0.000122539, 0.000122951, 
			7.98571e-05, 9.29978e-05, 0.000103076, 0.000110697, 0.000116465, 0.000120862, 0.000124244, 0.00012687, 0.000128928, 0.000130554, 0.000131848, 0.000132884, 0.000133716, 0.00013439, 0.000134933, 0.000135377
		)
}

CapTable	"poly_C_TOP_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			5.95527e-06, 8.10189e-06, 9.70984e-06, 1.08935e-05, 1.17631e-05, 1.2406e-05, 1.28864e-05, 1.32505e-05, 1.35293e-05, 1.37452e-05, 1.39124e-05, 1.40456e-05, 1.41512e-05, 1.42355e-05, 1.43029e-05, 1.43579e-05, 
			7.56946e-06, 9.77467e-06, 1.14741e-05, 1.27524e-05, 1.37092e-05, 1.44284e-05, 1.49743e-05, 1.53924e-05, 1.57159e-05, 1.59669e-05, 1.61659e-05, 1.63239e-05, 1.64494e-05, 1.65501e-05, 1.66316e-05, 1.66975e-05, 
			9.20513e-06, 1.14384e-05, 1.31898e-05, 1.45279e-05, 1.55429e-05, 1.63159e-05, 1.69081e-05, 1.73654e-05, 1.77203e-05, 1.80008e-05, 1.82223e-05, 1.83985e-05, 1.85397e-05, 1.86539e-05, 1.87463e-05, 1.88204e-05, 
			1.08537e-05, 1.3105e-05, 1.48946e-05, 1.62767e-05, 1.73364e-05, 1.81504e-05, 1.87786e-05, 1.92655e-05, 1.96484e-05, 1.99511e-05, 2.01906e-05, 2.03824e-05, 2.0537e-05, 2.06615e-05, 2.07616e-05, 2.08461e-05, 
			1.25071e-05, 1.47728e-05, 1.65898e-05, 1.80046e-05, 1.9098e-05, 1.99428e-05, 2.05974e-05, 2.11097e-05, 2.15136e-05, 2.18334e-05, 2.20882e-05, 2.22926e-05, 2.24576e-05, 2.25894e-05, 2.27003e-05, 2.27878e-05
		)
}

CapTable	"poly_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000115793, 6.17534e-05, 3.98396e-05, 2.77058e-05, 2.0105e-05, 1.50105e-05, 1.14403e-05, 8.85652e-06, 6.93984e-06, 5.49016e-06, 4.3766e-06, 3.51032e-06, 2.82946e-06, 2.28966e-06, 1.85888e-06, 1.51295e-06, 
			0.000125395, 6.83008e-05, 4.47256e-05, 3.14912e-05, 2.30908e-05, 1.73895e-05, 1.33489e-05, 1.03951e-05, 8.18506e-06, 6.50118e-06, 5.1995e-06, 4.18144e-06, 3.37758e-06, 2.73802e-06, 2.22586e-06, 1.81353e-06, 
			0.000130961, 7.25472e-05, 4.80854e-05, 3.41858e-05, 2.52682e-05, 1.91562e-05, 1.47861e-05, 1.15668e-05, 9.14192e-06, 7.28358e-06, 5.84004e-06, 4.70616e-06, 3.8078e-06, 3.09072e-06, 2.515e-06, 2.05062e-06, 
			0.000134878, 7.57298e-05, 5.06642e-05, 3.62944e-05, 2.69956e-05, 2.05724e-05, 1.59479e-05, 1.25203e-05, 9.9247e-06, 7.92638e-06, 6.36786e-06, 5.13976e-06, 4.16378e-06, 3.38298e-06, 2.75492e-06, 2.2472e-06, 
			0.000137338, 7.80174e-05, 5.26078e-05, 3.79268e-05, 2.83528e-05, 2.16974e-05, 1.68787e-05, 1.32895e-05, 1.05596e-05, 8.4497e-06, 6.79904e-06, 5.49464e-06, 4.45554e-06, 3.62276e-06, 2.95144e-06, 2.40828e-06
		)
}

CapTable	"poly_C_BOTTOM_GP_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			4.01036e-05, 5.39788e-05, 6.3917e-05, 7.10186e-05, 7.61408e-05, 7.98953e-05, 8.27001e-05, 8.48366e-05, 8.64948e-05, 8.78044e-05, 8.88557e-05, 8.97123e-05, 9.042e-05, 9.10126e-05, 9.15146e-05, 9.19449e-05, 
			5.18586e-05, 6.59812e-05, 7.63324e-05, 8.38706e-05, 8.94056e-05, 9.35296e-05, 9.66571e-05, 9.90712e-05, 0.000100967, 0.00010248, 0.000103706, 0.000104713, 0.000105551, 0.000106258, 0.00010686, 0.000107379, 
			6.37538e-05, 7.78632e-05, 8.83754e-05, 9.61484e-05, 0.000101935, 0.000106302, 0.000109653, 0.000112266, 0.000114338, 0.000116006, 0.000117368, 0.000118497, 0.000119441, 0.000120241, 0.000120927, 0.000121521, 
			7.5664e-05, 8.9695e-05, 0.000100286, 0.000108209, 0.000114172, 0.00011872, 0.000122241, 0.000125013, 0.000127229, 0.000129026, 0.000130502, 0.000131733, 0.00013277, 0.000133654, 0.000134414, 0.000135076, 
			8.75096e-05, 0.000101445, 0.000112072, 0.000120093, 0.000126188, 0.000130874, 0.000134532, 0.000137432, 0.000139765, 0.00014167, 0.000143244, 0.000144563, 0.000145679, 0.000146635, 0.000147462, 0.000148183
		)
}

CapTable	"poly_C_LATERAL_15MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.13, 0.26, 0.39, 0.52, 0.65)
		wireSpacing		= (0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2)
		capValue			= (
			0.000116898, 6.34602e-05, 4.205e-05, 3.03034e-05, 2.2981e-05, 1.8073e-05, 1.4616e-05, 1.20879e-05, 1.01827e-05, 8.71066e-06, 7.54868e-06, 6.61422e-06, 5.85016e-06, 5.216e-06, 4.6824e-06, 4.22774e-06, 
			0.000126997, 7.05988e-05, 4.76086e-05, 3.48254e-05, 2.67494e-05, 2.12644e-05, 1.73529e-05, 1.44598e-05, 1.22571e-05, 1.05393e-05, 9.1721e-06, 8.06444e-06, 7.15272e-06, 6.39152e-06, 5.74764e-06, 5.19646e-06, 
			0.000133134, 7.54978e-05, 5.16856e-05, 3.82846e-05, 2.9723e-05, 2.38454e-05, 1.96113e-05, 1.64502e-05, 1.40228e-05, 1.2115e-05, 1.05857e-05, 9.33854e-06, 8.30592e-06, 7.43906e-06, 6.70224e-06, 6.06872e-06, 
			0.000137699, 7.9401e-05, 5.50408e-05, 4.12074e-05, 3.22874e-05, 2.61092e-05, 2.1621e-05, 1.82438e-05, 1.56314e-05, 1.35641e-05, 1.18966e-05, 1.05287e-05, 9.38992e-06, 8.42916e-06, 7.60874e-06, 6.90042e-06, 
			0.000140842, 8.24276e-05, 5.77614e-05, 4.36396e-05, 3.44554e-05, 2.80462e-05, 2.3357e-05, 1.98049e-05, 1.704e-05, 1.48394e-05, 1.30546e-05, 1.15832e-05, 1.03526e-05, 9.31006e-06, 8.41638e-06, 7.64218e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.63637e-05, 2.25966e-05, 2.78894e-05, 3.21511e-05, 3.54427e-05, 3.79123e-05, 3.97246e-05, 4.1034e-05, 4.19793e-05, 4.26353e-05, 4.31053e-05, 4.34369e-05, 4.36695e-05, 4.38337e-05, 4.39461e-05, 4.40277e-05, 
			2.25948e-05, 2.9113e-05, 3.46757e-05, 3.91646e-05, 4.26352e-05, 4.52398e-05, 4.71566e-05, 4.85494e-05, 4.95397e-05, 5.02503e-05, 5.07535e-05, 5.11104e-05, 5.13617e-05, 5.15396e-05, 5.16657e-05, 5.17551e-05, 
			2.91622e-05, 3.58459e-05, 4.15446e-05, 4.61327e-05, 4.96818e-05, 5.23581e-05, 5.43153e-05, 5.57387e-05, 5.67634e-05, 5.7495e-05, 5.80153e-05, 5.83831e-05, 5.86458e-05, 5.88322e-05, 5.89638e-05, 5.90584e-05, 
			3.59094e-05, 4.26779e-05, 4.8435e-05, 5.30706e-05, 5.66608e-05, 5.93538e-05, 6.13424e-05, 6.27885e-05, 6.38279e-05, 6.45724e-05, 6.51033e-05, 6.54807e-05, 6.57489e-05, 6.59396e-05, 6.60775e-05, 6.61759e-05, 
			4.27553e-05, 4.95512e-05, 5.5334e-05, 5.9987e-05, 6.35826e-05, 6.62887e-05, 6.82873e-05, 6.97412e-05, 7.07896e-05, 7.15399e-05, 7.20772e-05, 7.2459e-05, 7.27319e-05, 7.2927e-05, 7.30673e-05, 7.31696e-05
		)
}

CapTable	"metal1_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.94045e-05, 4.07914e-05, 5.01366e-05, 5.74583e-05, 6.30035e-05, 6.71056e-05, 7.00838e-05, 7.22207e-05, 7.37298e-05, 7.48084e-05, 7.55623e-05, 7.60895e-05, 7.64574e-05, 7.67136e-05, 7.68949e-05, 7.70174e-05, 
			4.13962e-05, 5.32134e-05, 6.29197e-05, 7.05348e-05, 7.63138e-05, 8.05941e-05, 8.3699e-05, 8.59311e-05, 8.75271e-05, 8.86528e-05, 8.94443e-05, 8.99989e-05, 9.03866e-05, 9.06576e-05, 9.08475e-05, 9.09811e-05, 
			5.39798e-05, 6.59657e-05, 7.58116e-05, 8.35433e-05, 8.94004e-05, 9.37367e-05, 9.69121e-05, 9.91837e-05, 0.000100804, 0.000101949, 0.000102755, 0.000103324, 0.000103719, 0.000103993, 0.000104188, 0.000104325, 
			6.6828e-05, 7.88715e-05, 8.8771e-05, 9.65286e-05, 0.000102426, 0.000106794, 0.000109979, 0.000112268, 0.000113899, 0.000115052, 0.000115864, 0.000116434, 0.000116834, 0.000117116, 0.000117313, 0.000117451, 
			7.97841e-05, 9.18258e-05, 0.000101708, 0.000109474, 0.000115367, 0.000119734, 0.000122919, 0.000125209, 0.00012684, 0.000127995, 0.000128808, 0.000129381, 0.000129783, 0.000130066, 0.000130264, 0.000130399
		)
}

CapTable	"metal1_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000180428, 9.3649e-05, 5.8431e-05, 3.86796e-05, 2.62488e-05, 1.80231e-05, 1.24506e-05, 8.63028e-06, 5.99592e-06, 4.17228e-06, 2.90636e-06, 2.02756e-06, 1.4171e-06, 9.92736e-07, 6.9701e-07, 4.9091e-07, 
			0.000187471, 9.79906e-05, 6.13026e-05, 4.06436e-05, 2.762e-05, 1.89901e-05, 1.31394e-05, 9.12054e-06, 6.3432e-06, 4.41586e-06, 3.07622e-06, 2.14368e-06, 1.49372e-06, 1.0398e-06, 7.21754e-07, 4.97776e-07, 
			0.00018971, 9.96134e-05, 6.24188e-05, 4.1423e-05, 2.81758e-05, 1.93892e-05, 1.34196e-05, 9.3206e-06, 6.48256e-06, 4.512e-06, 3.14072e-06, 2.18394e-06, 1.51623e-06, 1.04877e-06, 7.19236e-07, 4.86562e-07, 
			0.000190057, 0.00010014, 6.2822e-05, 4.17348e-05, 2.84012e-05, 1.95562e-05, 1.35406e-05, 9.40246e-06, 6.5371e-06, 4.54558e-06, 3.1577e-06, 2.1883e-06, 1.50909e-06, 1.03143e-06, 6.94466e-07, 4.5713e-07, 
			0.000189033, 9.9941e-05, 6.2787e-05, 4.1733e-05, 2.84174e-05, 1.95763e-05, 1.35537e-05, 9.40778e-06, 6.53444e-06, 4.53514e-06, 3.1398e-06, 2.16304e-06, 1.47712e-06, 9.94042e-07, 6.53666e-07, 4.15384e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.83004e-05, 2.45181e-05, 2.99767e-05, 3.4741e-05, 3.88368e-05, 4.23042e-05, 4.51962e-05, 4.75789e-05, 4.95248e-05, 5.10976e-05, 5.23635e-05, 5.33754e-05, 5.41811e-05, 5.48236e-05, 5.53273e-05, 5.5728e-05, 
			2.40682e-05, 3.05507e-05, 3.63463e-05, 4.14337e-05, 4.58123e-05, 4.95188e-05, 5.26112e-05, 5.51601e-05, 5.72429e-05, 5.89277e-05, 6.02841e-05, 6.13685e-05, 6.22334e-05, 6.29212e-05, 6.34659e-05, 6.38971e-05, 
			3.02636e-05, 3.69434e-05, 4.29442e-05, 4.82102e-05, 5.27443e-05, 5.65817e-05, 5.97808e-05, 6.2421e-05, 6.45746e-05, 6.63205e-05, 6.77227e-05, 6.88475e-05, 6.97441e-05, 7.04565e-05, 7.1022e-05, 7.14694e-05, 
			3.67455e-05, 4.35542e-05, 4.96758e-05, 5.50466e-05, 5.96688e-05, 6.35774e-05, 6.68393e-05, 6.95275e-05, 7.17237e-05, 7.35046e-05, 7.49322e-05, 7.60794e-05, 7.69939e-05, 7.77214e-05, 7.82983e-05, 7.87543e-05, 
			4.34196e-05, 5.02971e-05, 5.64842e-05, 6.19108e-05, 6.65783e-05, 7.05244e-05, 7.38182e-05, 7.653e-05, 7.87488e-05, 8.05441e-05, 8.19901e-05, 8.31483e-05, 8.40734e-05, 8.48074e-05, 8.539e-05, 8.58511e-05
		)
}

CapTable	"metal1_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.24904e-05, 1.68419e-05, 2.06841e-05, 2.40514e-05, 2.69576e-05, 2.9424e-05, 3.1485e-05, 3.3187e-05, 3.45772e-05, 3.57046e-05, 3.66111e-05, 3.73367e-05, 3.79153e-05, 3.83703e-05, 3.8737e-05, 3.90245e-05, 
			1.63388e-05, 2.08409e-05, 2.49087e-05, 2.84969e-05, 3.16005e-05, 3.42364e-05, 3.64416e-05, 3.82631e-05, 3.97517e-05, 4.09599e-05, 4.1931e-05, 4.271e-05, 4.33284e-05, 4.38215e-05, 4.42123e-05, 4.45214e-05, 
			2.04634e-05, 2.50918e-05, 2.92938e-05, 3.30108e-05, 3.62243e-05, 3.89515e-05, 4.12356e-05, 4.3121e-05, 4.46618e-05, 4.5911e-05, 4.69182e-05, 4.77232e-05, 4.83662e-05, 4.88774e-05, 4.92826e-05, 4.96016e-05, 
			2.47845e-05, 2.94986e-05, 3.37866e-05, 3.75778e-05, 4.08548e-05, 4.36374e-05, 4.59641e-05, 4.78859e-05, 4.94565e-05, 5.07273e-05, 5.17557e-05, 5.2578e-05, 5.32339e-05, 5.37537e-05, 5.41671e-05, 5.44943e-05, 
			2.92384e-05, 3.40045e-05, 3.83444e-05, 4.21784e-05, 4.54893e-05, 4.82994e-05, 5.06478e-05, 5.25894e-05, 5.41718e-05, 5.54584e-05, 5.64948e-05, 5.73252e-05, 5.79859e-05, 5.85145e-05, 5.89304e-05, 5.9261e-05
		)
}

CapTable	"metal1_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.00019051, 0.000106545, 7.26692e-05, 5.30936e-05, 4.00246e-05, 3.06668e-05, 2.37138e-05, 1.84386e-05, 1.43857e-05, 1.12505e-05, 8.81314e-06, 6.91344e-06, 5.42944e-06, 4.2697e-06, 3.36104e-06, 2.64948e-06, 
			0.000201326, 0.000113847, 7.7879e-05, 5.69394e-05, 4.29332e-05, 3.29018e-05, 2.54482e-05, 1.97928e-05, 1.54474e-05, 1.20844e-05, 9.46986e-06, 7.43054e-06, 5.8372e-06, 4.59034e-06, 3.6138e-06, 2.84848e-06, 
			0.000206316, 0.000117516, 8.0556e-05, 5.8938e-05, 4.44554e-05, 3.40778e-05, 2.63636e-05, 2.0509e-05, 1.60116e-05, 1.25295e-05, 9.82112e-06, 7.70826e-06, 6.0567e-06, 4.76406e-06, 3.75144e-06, 2.95796e-06, 
			0.000208548, 0.000119408, 8.19836e-05, 6.00296e-05, 4.52954e-05, 3.47302e-05, 2.68746e-05, 2.09116e-05, 1.63288e-05, 1.27801e-05, 1.00191e-05, 7.86462e-06, 6.18016e-06, 4.8619e-06, 3.82858e-06, 3.01838e-06, 
			0.000208778, 0.000120111, 8.26034e-05, 6.05238e-05, 4.56894e-05, 3.50482e-05, 2.7127e-05, 2.11116e-05, 1.64874e-05, 1.29055e-05, 1.01181e-05, 7.9425e-06, 6.24174e-06, 4.90908e-06, 3.86556e-06, 3.04688e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.99399e-05, 2.63878e-05, 3.19693e-05, 3.68341e-05, 4.10567e-05, 4.46961e-05, 4.78133e-05, 5.04677e-05, 5.27169e-05, 5.46162e-05, 5.6218e-05, 5.75657e-05, 5.86967e-05, 5.96488e-05, 6.04475e-05, 6.11196e-05, 
			2.57264e-05, 3.2322e-05, 3.8179e-05, 4.33369e-05, 4.78381e-05, 5.17337e-05, 5.50825e-05, 5.79408e-05, 6.03719e-05, 6.24302e-05, 6.4173e-05, 6.56394e-05, 6.68774e-05, 6.79181e-05, 6.8795e-05, 6.95327e-05, 
			3.18567e-05, 3.85703e-05, 4.45877e-05, 4.99146e-05, 5.45803e-05, 5.8629e-05, 6.21168e-05, 6.51017e-05, 6.76462e-05, 6.98045e-05, 7.16344e-05, 7.31803e-05, 7.44845e-05, 7.55853e-05, 7.65115e-05, 7.72911e-05, 
			3.82163e-05, 4.50066e-05, 5.11237e-05, 5.65572e-05, 6.13261e-05, 6.54737e-05, 6.90548e-05, 7.21259e-05, 7.47458e-05, 7.69764e-05, 7.88653e-05, 8.04657e-05, 8.18172e-05, 8.29581e-05, 8.39176e-05, 8.473e-05, 
			4.47341e-05, 5.15652e-05, 5.77434e-05, 6.32425e-05, 6.80782e-05, 7.22908e-05, 7.59343e-05, 7.90619e-05, 8.1737e-05, 8.40129e-05, 8.59463e-05, 8.75831e-05, 8.89679e-05, 9.01408e-05, 9.11239e-05, 9.19575e-05
		)
}

CapTable	"metal1_C_TOP_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			8.00929e-06, 1.06474e-05, 1.29489e-05, 1.49679e-05, 1.67315e-05, 1.82611e-05, 1.95772e-05, 2.07017e-05, 2.16592e-05, 2.24706e-05, 2.31554e-05, 2.37317e-05, 2.42195e-05, 2.46284e-05, 2.49729e-05, 2.52618e-05, 
			1.02226e-05, 1.28886e-05, 1.52878e-05, 1.74229e-05, 1.93031e-05, 2.09405e-05, 2.23551e-05, 2.357e-05, 2.46073e-05, 2.54893e-05, 2.62345e-05, 2.68674e-05, 2.74005e-05, 2.785e-05, 2.82292e-05, 2.85487e-05, 
			1.25443e-05, 1.52429e-05, 1.77051e-05, 1.9911e-05, 2.18597e-05, 2.35644e-05, 2.50414e-05, 2.63127e-05, 2.74002e-05, 2.83279e-05, 2.91147e-05, 2.97817e-05, 3.03455e-05, 3.08228e-05, 3.12251e-05, 3.15668e-05, 
			1.49457e-05, 1.76716e-05, 2.01759e-05, 2.24274e-05, 2.44243e-05, 2.61745e-05, 2.76946e-05, 2.90037e-05, 3.01278e-05, 3.10864e-05, 3.19024e-05, 3.25944e-05, 3.31807e-05, 3.36778e-05, 3.41007e-05, 3.44534e-05, 
			1.74059e-05, 2.01504e-05, 2.2683e-05, 2.49679e-05, 2.69974e-05, 2.87784e-05, 3.03261e-05, 3.16651e-05, 3.28134e-05, 3.37952e-05, 3.46312e-05, 3.53407e-05, 3.59437e-05, 3.64513e-05, 3.68873e-05, 3.72518e-05
		)
}

CapTable	"metal1_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000192706, 0.000109666, 7.65788e-05, 5.761e-05, 4.49508e-05, 3.58144e-05, 2.89168e-05, 2.35622e-05, 1.93276e-05, 1.59359e-05, 1.31931e-05, 1.09602e-05, 9.13088e-06, 7.62544e-06, 6.38228e-06, 5.35192e-06, 
			0.000204628, 0.000118127, 8.29612e-05, 6.26082e-05, 4.89668e-05, 3.90958e-05, 3.16274e-05, 2.58172e-05, 2.12128e-05, 1.75165e-05, 1.45215e-05, 1.20772e-05, 1.00711e-05, 8.41794e-06, 7.04984e-06, 5.91458e-06, 
			0.000210782, 0.000122952, 8.67522e-05, 6.56574e-05, 5.1467e-05, 4.11696e-05, 3.33608e-05, 2.72736e-05, 2.24406e-05, 1.85536e-05, 1.53979e-05, 1.2819e-05, 1.0699e-05, 8.9489e-06, 7.49944e-06, 6.29512e-06, 
			0.00021417, 0.000125943, 8.92034e-05, 6.76894e-05, 5.31606e-05, 4.25918e-05, 3.45606e-05, 2.82894e-05, 2.33014e-05, 1.92832e-05, 1.60173e-05, 1.33439e-05, 1.11441e-05, 9.32608e-06, 7.81866e-06, 6.56558e-06, 
			0.000215494, 0.000127652, 9.07386e-05, 6.90066e-05, 5.42884e-05, 4.35608e-05, 3.53876e-05, 2.8994e-05, 2.39016e-05, 1.97949e-05, 1.64525e-05, 1.37142e-05, 1.14584e-05, 9.59288e-06, 8.04476e-06, 6.75668e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.53602e-05, 3.31286e-05, 3.97088e-05, 4.53586e-05, 5.02196e-05, 5.43965e-05, 5.79801e-05, 6.10532e-05, 6.36901e-05, 6.59563e-05, 6.7909e-05, 6.95971e-05, 7.10624e-05, 7.23397e-05, 7.34586e-05, 7.44432e-05, 
			3.2047e-05, 3.97882e-05, 4.6543e-05, 5.24176e-05, 5.75098e-05, 6.19116e-05, 6.57084e-05, 6.8983e-05, 7.18096e-05, 7.42516e-05, 7.63689e-05, 7.821e-05, 7.98172e-05, 8.1226e-05, 8.24666e-05, 8.35641e-05, 
			3.8929e-05, 4.66326e-05, 5.34368e-05, 5.9399e-05, 6.45958e-05, 6.91102e-05, 7.30238e-05, 7.64162e-05, 7.93584e-05, 8.1914e-05, 8.41408e-05, 8.60862e-05, 8.7794e-05, 8.92973e-05, 9.06276e-05, 9.18092e-05, 
			4.5895e-05, 5.35346e-05, 6.03316e-05, 6.6322e-05, 7.15684e-05, 7.61478e-05, 8.01356e-05, 8.36082e-05, 8.6634e-05, 8.9275e-05, 9.15854e-05, 9.3614e-05, 9.54012e-05, 9.69822e-05, 9.83866e-05, 9.96396e-05, 
			5.2868e-05, 6.0421e-05, 6.7183e-05, 7.31706e-05, 7.84372e-05, 8.3052e-05, 8.7091e-05, 9.06216e-05, 9.37102e-05, 9.64168e-05, 9.8796e-05, 0.000100892, 0.000102747, 0.000104393, 0.000105861, 0.000107175
		)
}

CapTable	"metal1_C_LATERAL_24MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000194742, 0.000112589, 8.03352e-05, 6.21194e-05, 5.01154e-05, 4.1528e-05, 3.50728e-05, 3.0058e-05, 2.60692e-05, 2.28388e-05, 2.0184e-05, 1.79752e-05, 1.61173e-05, 1.45393e-05, 1.31869e-05, 1.20185e-05, 
			0.000207622, 0.000122116, 8.7882e-05, 6.83674e-05, 5.54512e-05, 4.61824e-05, 3.91936e-05, 3.3746e-05, 2.93964e-05, 2.58594e-05, 2.29398e-05, 2.04994e-05, 1.84373e-05, 1.66779e-05, 1.51634e-05, 1.38491e-05, 
			0.000214886, 0.000128135, 9.29422e-05, 7.2745e-05, 5.93222e-05, 4.96558e-05, 4.23422e-05, 3.66208e-05, 3.20356e-05, 2.8292e-05, 2.51892e-05, 2.25848e-05, 2.0375e-05, 1.84817e-05, 1.68454e-05, 1.54198e-05, 
			0.000219502, 0.00013242, 9.67394e-05, 7.6159e-05, 6.24206e-05, 5.24922e-05, 4.49544e-05, 3.90368e-05, 3.4277e-05, 3.0376e-05, 2.71306e-05, 2.4396e-05, 2.20668e-05, 2.00638e-05, 1.83264e-05, 1.68074e-05, 
			0.000222156, 0.000135506, 9.9683e-05, 7.89034e-05, 6.49808e-05, 5.4887e-05, 4.7191e-05, 4.11284e-05, 3.62348e-05, 3.22102e-05, 2.885e-05, 2.60088e-05, 2.35802e-05, 2.14848e-05, 1.96611e-05, 1.80618e-05
		)
}

CapTable	"metal1_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.70742e-05, 6.42249e-05, 7.62175e-05, 8.39935e-05, 8.87859e-05, 9.16501e-05, 9.33048e-05, 9.42612e-05, 9.48029e-05, 9.51048e-05, 9.52713e-05, 9.53604e-05, 9.5406e-05, 9.54252e-05, 9.54238e-05, 9.54245e-05, 
			6.98262e-05, 8.72917e-05, 9.94641e-05, 0.000107354, 0.000112217, 0.000115106, 0.000116791, 0.000117756, 0.000118302, 0.000118606, 0.00011877, 0.000118857, 0.000118899, 0.000118916, 0.000118916, 0.000118917, 
			9.29577e-05, 0.000110473, 0.000122663, 0.000130551, 0.000135407, 0.000138296, 0.000139975, 0.000140936, 0.000141475, 0.000141774, 0.000141932, 0.000142012, 0.00014205, 0.000142065, 0.000142067, 0.000142064, 
			0.000116133, 0.000133618, 0.00014577, 0.000153637, 0.000158473, 0.000161346, 0.000163016, 0.000163966, 0.000164499, 0.000164788, 0.000164941, 0.000165016, 0.000165052, 0.000165065, 0.000165066, 0.000165062, 
			0.000139248, 0.000156616, 0.000168715, 0.000176537, 0.000181338, 0.000184181, 0.000185834, 0.000186773, 0.000187294, 0.000187577, 0.000187726, 0.000187799, 0.000187832, 0.000187845, 0.000187846, 0.000187842
		)
}

CapTable	"metal1_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			2.7976e-05, 3.94661e-05, 4.80319e-05, 5.37561e-05, 5.73354e-05, 5.94688e-05, 6.07258e-05, 6.14434e-05, 6.1847e-05, 6.20703e-05, 6.21864e-05, 6.22422e-05, 6.22633e-05, 6.22708e-05, 6.22722e-05, 6.22715e-05, 
			4.07596e-05, 5.25659e-05, 6.13031e-05, 6.71335e-05, 7.07701e-05, 7.29461e-05, 7.42145e-05, 7.49397e-05, 7.53415e-05, 7.55574e-05, 7.56668e-05, 7.57143e-05, 7.57337e-05, 7.57396e-05, 7.57403e-05, 7.57394e-05, 
			5.38935e-05, 6.5766e-05, 7.4522e-05, 8.03495e-05, 8.39831e-05, 8.61527e-05, 8.74138e-05, 8.81248e-05, 8.85153e-05, 8.8718e-05, 8.88197e-05, 8.88646e-05, 8.88814e-05, 8.88862e-05, 8.88867e-05, 8.88858e-05, 
			6.71099e-05, 7.89702e-05, 8.77112e-05, 9.35189e-05, 9.71292e-05, 9.92829e-05, 0.000100523, 0.000101219, 0.000101594, 0.000101792, 0.000101887, 0.000101929, 0.000101944, 0.000101948, 0.000101949, 0.000101948, 
			8.0339e-05, 9.216e-05, 0.000100852, 0.000106621, 0.000110192, 0.000112307, 0.000113526, 0.000114203, 0.000114572, 0.000114762, 0.000114852, 0.00011489, 0.000114905, 0.000114909, 0.00011491, 0.00011491
		)
}

CapTable	"metal1_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000163521, 7.4323e-05, 3.95166e-05, 2.18394e-05, 1.21727e-05, 6.76612e-06, 3.72136e-06, 2.00842e-06, 1.05105e-06, 5.2286e-07, 2.39296e-07, 9.44466e-08, 2.6704e-08, 0, 0, 0, 
			0.000165569, 7.53014e-05, 4.00148e-05, 2.20764e-05, 1.22695e-05, 6.78788e-06, 3.70544e-06, 1.97684e-06, 1.01727e-06, 4.94518e-07, 2.1985e-07, 8.43444e-08, 2.3364e-08, 1.46011e-10, 0, 0, 
			0.000164985, 7.507e-05, 3.98464e-05, 2.19356e-05, 1.21522e-05, 6.68822e-06, 3.6233e-06, 1.91345e-06, 9.71748e-07, 4.66142e-07, 2.05492e-07, 8.01206e-08, 2.5653e-08, 6.02516e-09, 2.84442e-09, 7.19672e-09, 
			0.000163792, 7.45822e-05, 3.95426e-05, 2.17334e-05, 1.20072e-05, 6.58158e-06, 3.54834e-06, 1.86383e-06, 9.43344e-07, 4.53266e-07, 2.0441e-07, 8.6763e-08, 3.64086e-08, 1.87701e-08, 1.66387e-08, 2.16424e-08, 
			0.000161897, 7.38228e-05, 3.91176e-05, 2.14568e-05, 1.18276e-05, 6.47996e-06, 3.48606e-06, 1.83038e-06, 9.2899e-07, 4.5313e-07, 2.14224e-07, 1.02107e-07, 5.3914e-08, 3.68098e-08, 3.46212e-08, 3.93894e-08
		)
}

CapTable	"metal1_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			4.9712e-05, 6.70003e-05, 7.9604e-05, 8.86416e-05, 9.50652e-05, 9.96149e-05, 0.000102834, 0.000105114, 0.000106732, 0.00010788, 0.000108697, 0.000109279, 0.000109695, 0.00010999, 0.000110202, 0.000110354, 
			7.18873e-05, 8.94114e-05, 0.000102344, 0.000111725, 0.000118461, 0.000123269, 0.000126693, 0.00012913, 0.000130862, 0.0001321, 0.000132982, 0.00013361, 0.000134059, 0.000134379, 0.000134608, 0.000134771, 
			9.44573e-05, 0.000112072, 0.000125167, 0.000134728, 0.00014163, 0.000146578, 0.000150115, 0.000152642, 0.000154438, 0.000155723, 0.000156639, 0.000157293, 0.00015776, 0.000158093, 0.00015833, 0.0001585, 
			0.000117181, 0.000134828, 0.000148019, 0.000157684, 0.000164683, 0.000169715, 0.000173317, 0.000175892, 0.000177731, 0.000179043, 0.000179981, 0.000180649, 0.000181126, 0.000181465, 0.000181708, 0.00018188, 
			0.000139971, 0.000157576, 0.000170795, 0.00018051, 0.00018755, 0.00019262, 0.000196258, 0.000198861, 0.000200718, 0.000202045, 0.000202992, 0.000203667, 0.00020415, 0.000204492, 0.000204736, 0.000204908
		)
}

CapTable	"metal1_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			1.12158e-05, 1.56113e-05, 1.91644e-05, 2.186e-05, 2.38418e-05, 2.52728e-05, 2.62963e-05, 2.70271e-05, 2.75486e-05, 2.7921e-05, 2.81882e-05, 2.83783e-05, 2.85141e-05, 2.86119e-05, 2.86812e-05, 2.87306e-05, 
			1.55197e-05, 2.00296e-05, 2.37218e-05, 2.65581e-05, 2.86601e-05, 3.01913e-05, 3.12949e-05, 3.20876e-05, 3.26601e-05, 3.30637e-05, 3.33549e-05, 3.35632e-05, 3.37132e-05, 3.38197e-05, 3.38957e-05, 3.39498e-05, 
			1.99511e-05, 2.45295e-05, 2.8303e-05, 3.12152e-05, 3.33828e-05, 3.49696e-05, 3.61181e-05, 3.69414e-05, 3.75397e-05, 3.79658e-05, 3.82712e-05, 3.84909e-05, 3.86473e-05, 3.8759e-05, 3.88387e-05, 3.88942e-05, 
			2.44663e-05, 2.90887e-05, 3.29092e-05, 3.58658e-05, 3.80741e-05, 3.96931e-05, 4.08688e-05, 4.17161e-05, 4.23254e-05, 4.2764e-05, 4.30776e-05, 4.33021e-05, 4.34628e-05, 4.35774e-05, 4.36578e-05, 4.37157e-05, 
			2.90332e-05, 3.36863e-05, 3.75328e-05, 4.05126e-05, 4.27459e-05, 4.43748e-05, 4.55624e-05, 4.64198e-05, 4.70382e-05, 4.74813e-05, 4.7799e-05, 4.80265e-05, 4.81877e-05, 4.83037e-05, 4.8386e-05, 4.84443e-05
		)
}

CapTable	"metal1_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000172848, 8.64374e-05, 5.25106e-05, 3.41984e-05, 2.3042e-05, 1.58333e-05, 1.10185e-05, 7.73452e-06, 5.46242e-06, 3.87548e-06, 2.75916e-06, 1.96998e-06, 1.41017e-06, 1.01205e-06, 7.28704e-07, 5.26844e-07, 
			0.000179009, 9.0723e-05, 5.56108e-05, 3.64576e-05, 2.46922e-05, 1.70355e-05, 1.18907e-05, 8.36428e-06, 5.91536e-06, 4.20084e-06, 2.99208e-06, 2.13656e-06, 1.52922e-06, 1.09759e-06, 7.9049e-07, 5.71964e-07, 
			0.000181509, 9.28376e-05, 5.72226e-05, 3.76642e-05, 2.55882e-05, 1.76941e-05, 1.23701e-05, 8.7115e-06, 6.1653e-06, 4.37922e-06, 3.11926e-06, 2.22698e-06, 1.59395e-06, 1.14417e-06, 8.24468e-07, 5.97398e-07, 
			0.000182474, 9.39496e-05, 5.81134e-05, 3.83522e-05, 2.61016e-05, 1.80713e-05, 1.26435e-05, 8.9068e-06, 6.30378e-06, 4.47614e-06, 3.18678e-06, 2.27404e-06, 1.62666e-06, 1.1671e-06, 8.41032e-07, 6.09592e-07, 
			0.000182033, 9.42598e-05, 5.84736e-05, 3.8648e-05, 2.63314e-05, 1.82528e-05, 1.27734e-05, 8.99752e-06, 6.3653e-06, 4.51736e-06, 3.2136e-06, 2.29106e-06, 1.63749e-06, 1.17389e-06, 8.45304e-07, 6.12646e-07
		)
}

CapTable	"metal1_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.17066e-05, 6.93862e-05, 8.22387e-05, 9.15001e-05, 9.81867e-05, 0.000103045, 0.000106602, 0.000109233, 0.000111201, 0.000112688, 0.000113823, 0.000114696, 0.000115373, 0.000115902, 0.000116317, 0.000116646, 
			7.40464e-05, 9.17878e-05, 0.000104879, 0.000114466, 0.000121488, 0.000126656, 0.00013049, 0.000133357, 0.000135524, 0.000137175, 0.000138444, 0.000139427, 0.000140194, 0.000140796, 0.000141271, 0.000141645, 
			9.66074e-05, 0.000114312, 0.000127514, 0.000137282, 0.00014451, 0.000149879, 0.000153896, 0.000156925, 0.000159227, 0.000160994, 0.000162359, 0.000163422, 0.000164251, 0.000164909, 0.000165425, 0.000165836, 
			0.000119207, 0.000136859, 0.000150129, 0.000160022, 0.000167392, 0.000172908, 0.000177058, 0.000180205, 0.000182611, 0.000184464, 0.000185902, 0.000187024, 0.000187904, 0.0001886, 0.000189152, 0.000189591, 
			0.000141795, 0.000159355, 0.000172652, 0.000182627, 0.000190097, 0.000195705, 0.000199953, 0.000203187, 0.000205668, 0.000207586, 0.000209079, 0.000210245, 0.000211165, 0.000211892, 0.000212469, 0.000212928
		)
}

CapTable	"metal1_C_TOP_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			6.90841e-06, 9.53856e-06, 1.16557e-05, 1.32729e-05, 1.44807e-05, 1.53759e-05, 1.60427e-05, 1.6541e-05, 1.69167e-05, 1.72009e-05, 1.74191e-05, 1.7588e-05, 1.77194e-05, 1.78218e-05, 1.79031e-05, 1.79652e-05, 
			9.42197e-06, 1.20776e-05, 1.42577e-05, 1.59511e-05, 1.72371e-05, 1.82052e-05, 1.89343e-05, 1.94863e-05, 1.99047e-05, 2.02268e-05, 2.0475e-05, 2.06687e-05, 2.08202e-05, 2.09391e-05, 2.10327e-05, 2.11096e-05, 
			1.1963e-05, 1.46326e-05, 1.68487e-05, 1.85914e-05, 1.9925e-05, 2.09403e-05, 2.17104e-05, 2.22973e-05, 2.27487e-05, 2.30963e-05, 2.33662e-05, 2.35777e-05, 2.37469e-05, 2.38753e-05, 2.39805e-05, 2.40629e-05, 
			1.452e-05, 1.72019e-05, 1.9446e-05, 2.12211e-05, 2.25921e-05, 2.36387e-05, 2.44397e-05, 2.50548e-05, 2.55283e-05, 2.58953e-05, 2.6182e-05, 2.6408e-05, 2.65865e-05, 2.67264e-05, 2.68375e-05, 2.69259e-05, 
			1.70944e-05, 1.97882e-05, 2.20513e-05, 2.38496e-05, 2.52424e-05, 2.63138e-05, 2.71365e-05, 2.77709e-05, 2.82617e-05, 2.86435e-05, 2.89407e-05, 2.91793e-05, 2.93645e-05, 2.95113e-05, 2.9628e-05, 2.9721e-05
		)
}

CapTable	"metal1_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000174577, 8.89952e-05, 5.57006e-05, 3.7763e-05, 2.67436e-05, 1.94874e-05, 1.44968e-05, 1.09574e-05, 8.38766e-06, 6.48682e-06, 5.05852e-06, 3.97196e-06, 3.13642e-06, 2.48812e-06, 1.98154e-06, 1.58345e-06, 
			0.000181821, 9.44376e-05, 5.99696e-05, 4.11552e-05, 2.9458e-05, 2.16654e-05, 1.62467e-05, 1.23645e-05, 9.52004e-06, 7.3984e-06, 5.79268e-06, 4.56336e-06, 3.61288e-06, 2.87224e-06, 2.29114e-06, 1.83279e-06, 
			0.000185487, 9.77242e-05, 6.27124e-05, 4.34172e-05, 3.13166e-05, 2.31856e-05, 1.7486e-05, 1.33727e-05, 1.03382e-05, 8.0613e-06, 6.32974e-06, 4.9978e-06, 3.96404e-06, 3.15598e-06, 2.52028e-06, 2.01776e-06, 
			0.000187626, 9.99682e-05, 6.46598e-05, 4.50682e-05, 3.26908e-05, 2.43208e-05, 1.84183e-05, 1.4135e-05, 1.096e-05, 8.5671e-06, 6.74022e-06, 5.3303e-06, 4.23322e-06, 3.37336e-06, 2.69564e-06, 2.15902e-06, 
			0.000188333, 0.000101338, 6.59808e-05, 4.62216e-05, 3.36742e-05, 2.51554e-05, 1.91092e-05, 1.47034e-05, 1.14252e-05, 8.94686e-06, 7.0491e-06, 5.5808e-06, 4.4358e-06, 3.53684e-06, 2.82728e-06, 2.2648e-06
		)
}

CapTable	"metal1_C_BOTTOM_GP_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			5.69544e-05, 7.62022e-05, 9.0156e-05, 0.000100191, 0.000107449, 0.000112758, 0.000116696, 0.000119662, 0.000121933, 0.000123696, 0.000125085, 0.000126195, 0.000127092, 0.000127828, 0.000128436, 0.000128945, 
			8.05582e-05, 9.96486e-05, 0.000113716, 0.000124013, 0.000131587, 0.000137213, 0.00014145, 0.000144685, 0.000147192, 0.000149163, 0.000150733, 0.000152001, 0.000153038, 0.000153895, 0.00015461, 0.000155215, 
			0.000104131, 0.000122988, 0.000137042, 0.000147458, 0.000155209, 0.000161036, 0.000165471, 0.000168895, 0.000171574, 0.000173702, 0.000175413, 0.000176807, 0.000177956, 0.000178912, 0.000179719, 0.000180405, 
			0.000127511, 0.000146147, 0.000160164, 0.000170645, 0.000178516, 0.000184488, 0.000189073, 0.000192644, 0.000195461, 0.000197715, 0.000199543, 0.000201043, 0.000202289, 0.000203335, 0.000204223, 0.000204983, 
			0.000150681, 0.00016908, 0.00018303, 0.000193542, 0.000201493, 0.000207563, 0.000212263, 0.00021595, 0.00021888, 0.00022124, 0.000223168, 0.000224761, 0.000226092, 0.000227219, 0.00022818, 0.000229009
		)
}

CapTable	"metal1_C_LATERAL_14MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.16, 0.32, 0.48, 0.64, 0.8)
		wireSpacing		= (0.18, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8, 1.98, 2.16, 2.34, 2.52, 2.7, 2.88)
		capValue			= (
			0.000175909, 9.10848e-05, 5.8465e-05, 4.10472e-05, 3.03854e-05, 2.33468e-05, 1.84638e-05, 1.49506e-05, 1.23491e-05, 1.03762e-05, 8.84922e-06, 7.64624e-06, 6.6836e-06, 5.90244e-06, 5.26048e-06, 4.72684e-06, 
			0.000184102, 9.76064e-05, 6.38932e-05, 4.56464e-05, 3.43312e-05, 2.67636e-05, 2.14466e-05, 1.75746e-05, 1.4674e-05, 1.245e-05, 1.07106e-05, 9.32672e-06, 8.20864e-06, 7.29292e-06, 6.5336e-06, 5.89684e-06, 
			0.000188886, 0.0001021, 6.78968e-05, 4.91974e-05, 3.7488e-05, 2.95764e-05, 2.39622e-05, 1.98334e-05, 1.67116e-05, 1.42963e-05, 1.2391e-05, 1.08623e-05, 9.61738e-06, 8.58974e-06, 7.7311e-06, 7.00566e-06, 
			0.000192254, 0.000105632, 7.11684e-05, 5.21874e-05, 4.02e-05, 3.20352e-05, 2.61946e-05, 2.18654e-05, 1.85664e-05, 1.59947e-05, 1.39507e-05, 1.22988e-05, 1.09437e-05, 9.81712e-06, 8.86926e-06, 8.06294e-06, 
			0.00019429, 0.000108366, 7.38764e-05, 5.47296e-05, 4.25602e-05, 3.42234e-05, 2.82086e-05, 2.372e-05, 2.02764e-05, 1.75738e-05, 1.54115e-05, 1.36523e-05, 1.21997e-05, 1.09842e-05, 9.95488e-06, 9.07368e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.14461e-05, 1.56277e-05, 1.91539e-05, 2.20178e-05, 2.42487e-05, 2.59662e-05, 2.72742e-05, 2.82597e-05, 2.89994e-05, 2.95959e-05, 2.99893e-05, 3.02767e-05, 3.05094e-05, 3.06839e-05, 3.0815e-05, 3.0912e-05, 
			1.58002e-05, 2.00792e-05, 2.37575e-05, 2.67746e-05, 2.9153e-05, 3.0996e-05, 3.2405e-05, 3.34722e-05, 3.4308e-05, 3.48971e-05, 3.53357e-05, 3.56766e-05, 3.59335e-05, 3.61262e-05, 3.62699e-05, 3.63755e-05, 
			2.02691e-05, 2.46223e-05, 2.84045e-05, 3.15051e-05, 3.39694e-05, 3.58824e-05, 3.7392e-05, 3.84859e-05, 3.93172e-05, 3.99426e-05, 4.04214e-05, 4.07812e-05, 4.10503e-05, 4.1253e-05, 4.14026e-05, 4.15134e-05, 
			2.48246e-05, 2.92412e-05, 3.30818e-05, 3.62424e-05, 3.87534e-05, 4.07408e-05, 4.22242e-05, 4.33523e-05, 4.42187e-05, 4.48737e-05, 4.53682e-05, 4.57362e-05, 4.60153e-05, 4.62214e-05, 4.63732e-05, 4.64866e-05, 
			2.94624e-05, 3.39204e-05, 3.78012e-05, 4.10366e-05, 4.35602e-05, 4.55288e-05, 4.70418e-05, 4.82036e-05, 4.90854e-05, 4.97528e-05, 5.02531e-05, 5.06277e-05, 5.09084e-05, 5.11163e-05, 5.12708e-05, 5.13866e-05
		)
}

CapTable	"metal2_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.57819e-05, 4.89613e-05, 5.94349e-05, 6.74978e-05, 7.35793e-05, 7.81326e-05, 8.15157e-05, 8.40353e-05, 8.59059e-05, 8.72566e-05, 8.83195e-05, 8.91197e-05, 8.97005e-05, 9.01344e-05, 9.04555e-05, 9.06984e-05, 
			5.11398e-05, 6.45184e-05, 7.52471e-05, 8.35792e-05, 8.99242e-05, 9.47124e-05, 9.82959e-05, 0.000100979, 0.000102951, 0.000104468, 0.000105606, 0.000106445, 0.000107072, 0.000107537, 0.000107888, 0.000108152, 
			6.68871e-05, 8.03165e-05, 9.11547e-05, 9.96277e-05, 0.000106114, 0.000111034, 0.000114687, 0.00011748, 0.000119573, 0.000121143, 0.00012231, 0.000123183, 0.000123837, 0.000124322, 0.00012469, 0.000124968, 
			8.28056e-05, 9.6252e-05, 0.000107147, 0.000115697, 0.000122266, 0.000127221, 0.00013101, 0.000133851, 0.000135975, 0.000137567, 0.000138753, 0.000139654, 0.000140317, 0.000140821, 0.000141202, 0.000141493, 
			9.8878e-05, 0.000112317, 0.000123251, 0.000131807, 0.000138446, 0.00014349, 0.000147295, 0.000150155, 0.000152303, 0.000153905, 0.000155114, 0.000156022, 0.000156704, 0.00015722, 0.000157614, 0.000157919
		)
}

CapTable	"metal2_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000184277, 9.5282e-05, 6.02602e-05, 4.09234e-05, 2.8795e-05, 2.06722e-05, 1.50371e-05, 1.1042e-05, 8.16772e-06, 6.0795e-06, 4.5432e-06, 3.40958e-06, 2.57212e-06, 1.95072e-06, 1.48948e-06, 1.14557e-06, 
			0.00019116, 0.000100222, 6.39364e-05, 4.37172e-05, 3.09228e-05, 2.22986e-05, 1.62871e-05, 1.20018e-05, 8.90702e-06, 6.64394e-06, 4.97932e-06, 3.75136e-06, 2.8415e-06, 2.16684e-06, 1.66408e-06, 1.28945e-06, 
			0.00019418, 0.000102804, 6.59488e-05, 4.52892e-05, 3.21456e-05, 2.32496e-05, 1.7029e-05, 1.25801e-05, 9.35484e-06, 6.99438e-06, 5.25864e-06, 3.97576e-06, 3.02468e-06, 2.31898e-06, 1.79236e-06, 1.39861e-06, 
			0.00019543, 0.000104183, 6.70972e-05, 4.62086e-05, 3.28806e-05, 2.38372e-05, 1.74858e-05, 1.29417e-05, 9.6443e-06, 7.23032e-06, 5.4548e-06, 4.13778e-06, 3.16374e-06, 2.43762e-06, 1.89484e-06, 1.48544e-06, 
			0.000195906, 0.000104968, 6.77928e-05, 4.67844e-05, 3.33388e-05, 2.42032e-05, 1.77892e-05, 1.31904e-05, 9.8506e-06, 7.4072e-06, 5.60386e-06, 4.26928e-06, 3.27756e-06, 2.53666e-06, 1.97818e-06, 1.5524e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.30599e-05, 1.72163e-05, 2.08542e-05, 2.40729e-05, 2.69158e-05, 2.9407e-05, 3.15704e-05, 3.34326e-05, 3.50222e-05, 3.63721e-05, 3.75064e-05, 3.84596e-05, 3.92534e-05, 3.99138e-05, 4.0461e-05, 4.09113e-05, 
			1.69852e-05, 2.12032e-05, 2.50234e-05, 2.84547e-05, 3.15075e-05, 3.41929e-05, 3.65305e-05, 3.85433e-05, 4.02623e-05, 4.17229e-05, 4.29536e-05, 4.39842e-05, 4.48446e-05, 4.55592e-05, 4.61525e-05, 4.66429e-05, 
			2.10879e-05, 2.53963e-05, 2.93522e-05, 3.29272e-05, 3.61149e-05, 3.89191e-05, 4.13634e-05, 4.34659e-05, 4.52647e-05, 4.67889e-05, 4.8074e-05, 4.9152e-05, 5.00493e-05, 5.07989e-05, 5.14187e-05, 5.19305e-05, 
			2.53606e-05, 2.97557e-05, 3.38116e-05, 3.74842e-05, 4.0758e-05, 4.36382e-05, 4.61462e-05, 4.83079e-05, 5.01519e-05, 5.17179e-05, 5.30359e-05, 5.41376e-05, 5.50642e-05, 5.58313e-05, 5.64673e-05, 5.69923e-05, 
			2.97914e-05, 3.42555e-05, 3.83808e-05, 4.21196e-05, 4.54506e-05, 4.83827e-05, 5.09305e-05, 5.31269e-05, 5.50016e-05, 5.65898e-05, 5.79259e-05, 5.90544e-05, 5.99917e-05, 6.07705e-05, 6.14157e-05, 6.19498e-05
		)
}

CapTable	"metal2_C_TOP_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.42215e-05, 1.88671e-05, 2.29418e-05, 2.65403e-05, 2.97086e-05, 3.24769e-05, 3.48761e-05, 3.69374e-05, 3.86928e-05, 4.01789e-05, 4.14313e-05, 4.24779e-05, 4.33509e-05, 4.40757e-05, 4.46752e-05, 4.51712e-05, 
			1.85298e-05, 2.3249e-05, 2.75178e-05, 3.13459e-05, 3.47379e-05, 3.77117e-05, 4.02929e-05, 4.25125e-05, 4.44065e-05, 4.60096e-05, 4.73579e-05, 4.84893e-05, 4.94294e-05, 5.02136e-05, 5.08599e-05, 5.13924e-05, 
			2.30711e-05, 2.78811e-05, 3.22916e-05, 3.6267e-05, 3.97973e-05, 4.28971e-05, 4.55862e-05, 4.79019e-05, 4.98751e-05, 5.15464e-05, 5.29534e-05, 5.41307e-05, 5.51139e-05, 5.5924e-05, 5.66011e-05, 5.71607e-05, 
			2.78094e-05, 3.27035e-05, 3.72134e-05, 4.12854e-05, 4.49038e-05, 4.8083e-05, 5.0841e-05, 5.32099e-05, 5.52331e-05, 5.6943e-05, 5.8384e-05, 5.95969e-05, 6.05929e-05, 6.14304e-05, 6.21242e-05, 6.26978e-05, 
			3.27126e-05, 3.76719e-05, 4.22512e-05, 4.63858e-05, 5.0065e-05, 5.32895e-05, 5.60881e-05, 5.84923e-05, 6.05448e-05, 6.22824e-05, 6.37494e-05, 6.49628e-05, 6.59853e-05, 6.68351e-05, 6.75414e-05, 6.81214e-05
		)
}

CapTable	"metal2_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000197215, 0.000111216, 7.7455e-05, 5.81728e-05, 4.52696e-05, 3.59034e-05, 2.87892e-05, 2.32398e-05, 1.88417e-05, 1.53173e-05, 1.24773e-05, 1.01777e-05, 8.31156e-06, 6.7936e-06, 5.55812e-06, 4.5516e-06, 
			0.000208452, 0.000119388, 8.36188e-05, 6.29444e-05, 4.90286e-05, 3.89014e-05, 3.11996e-05, 2.51912e-05, 2.04272e-05, 1.66105e-05, 1.35345e-05, 1.10445e-05, 9.024e-06, 7.38018e-06, 6.04256e-06, 4.9527e-06, 
			0.000214334, 0.000124017, 8.71762e-05, 6.57198e-05, 5.12228e-05, 4.06548e-05, 3.26134e-05, 2.63372e-05, 2.13602e-05, 1.73747e-05, 1.41616e-05, 1.15613e-05, 9.45082e-06, 7.73514e-06, 6.33716e-06, 5.19784e-06, 
			0.000217386, 0.00012668, 8.9277e-05, 6.73724e-05, 5.25412e-05, 4.17118e-05, 3.34678e-05, 2.70332e-05, 2.193e-05, 1.78441e-05, 1.45501e-05, 1.18825e-05, 9.7199e-06, 7.95926e-06, 6.52552e-06, 5.35692e-06, 
			0.00021901, 0.000128273, 9.0568e-05, 6.84006e-05, 5.33574e-05, 4.23698e-05, 3.40044e-05, 2.74728e-05, 2.22926e-05, 1.81448e-05, 1.47997e-05, 1.20948e-05, 9.89698e-06, 8.10936e-06, 6.65286e-06, 5.46678e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.0316e-05, 2.59098e-05, 3.05324e-05, 3.4493e-05, 3.79612e-05, 4.10374e-05, 4.37847e-05, 4.62484e-05, 4.84631e-05, 5.04579e-05, 5.22567e-05, 5.38814e-05, 5.53506e-05, 5.66817e-05, 5.78897e-05, 5.8988e-05, 
			2.4953e-05, 3.0244e-05, 3.48364e-05, 3.8887e-05, 4.24952e-05, 4.57294e-05, 4.86374e-05, 5.1258e-05, 5.36231e-05, 5.57606e-05, 5.76947e-05, 5.94472e-05, 6.10378e-05, 6.2484e-05, 6.38011e-05, 6.50031e-05, 
			2.9504e-05, 3.46222e-05, 3.9191e-05, 4.32844e-05, 4.6969e-05, 5.02912e-05, 5.32928e-05, 5.6008e-05, 5.84661e-05, 6.06948e-05, 6.27178e-05, 6.45568e-05, 6.62311e-05, 6.77587e-05, 6.91545e-05, 7.0433e-05, 
			3.4026e-05, 3.9041e-05, 4.35846e-05, 4.76948e-05, 5.14162e-05, 5.47886e-05, 5.7845e-05, 6.06196e-05, 6.31392e-05, 6.54304e-05, 6.75168e-05, 6.9418e-05, 7.1155e-05, 7.27448e-05, 7.42016e-05, 7.55407e-05, 
			3.8564e-05, 4.34992e-05, 4.80136e-05, 5.21242e-05, 5.58632e-05, 5.92632e-05, 6.23564e-05, 6.5171e-05, 6.77356e-05, 7.0074e-05, 7.22084e-05, 7.41608e-05, 7.59492e-05, 7.75906e-05, 7.90996e-05, 8.049e-05
		)
}

CapTable	"metal2_C_LATERAL_33MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000202658, 0.000118739, 8.68396e-05, 6.9146e-05, 5.75328e-05, 4.91564e-05, 4.27504e-05, 3.7657e-05, 3.34958e-05, 3.00276e-05, 2.70934e-05, 2.4581e-05, 2.24088e-05, 2.0515e-05, 1.88522e-05, 1.73831e-05, 
			0.000216434, 0.00012959, 9.57816e-05, 7.6752e-05, 6.41468e-05, 5.50046e-05, 4.7989e-05, 4.23986e-05, 3.78238e-05, 3.40056e-05, 3.07704e-05, 2.79958e-05, 2.55922e-05, 2.34922e-05, 2.16442e-05, 2.00072e-05, 
			0.000225022, 0.00013697, 0.000102097, 8.22646e-05, 6.9038e-05, 5.94038e-05, 5.19892e-05, 4.6068e-05, 4.12134e-05, 3.71544e-05, 3.37086e-05, 3.07474e-05, 2.81768e-05, 2.59256e-05, 2.39398e-05, 2.2176e-05, 
			0.000230842, 0.000142372, 0.000106886, 8.65432e-05, 7.29118e-05, 6.29434e-05, 5.5252e-05, 4.90964e-05, 4.40398e-05, 3.98036e-05, 3.62002e-05, 3.3097e-05, 3.0397e-05, 2.80272e-05, 2.59314e-05, 2.40654e-05, 
			0.000235212, 0.000146639, 0.00011077, 9.00788e-05, 7.61518e-05, 6.59398e-05, 5.80426e-05, 5.1709e-05, 4.64954e-05, 4.2119e-05, 3.83886e-05, 3.51692e-05, 3.23618e-05, 2.98924e-05, 2.77034e-05, 2.575e-05
		)
}

CapTable	"metal2_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.69656e-05, 2.34358e-05, 2.88557e-05, 3.31095e-05, 3.63015e-05, 3.86185e-05, 4.02668e-05, 4.1451e-05, 4.22385e-05, 4.27818e-05, 4.31651e-05, 4.34264e-05, 4.36067e-05, 4.37301e-05, 4.38145e-05, 4.38731e-05, 
			2.40754e-05, 3.08057e-05, 3.64598e-05, 4.09083e-05, 4.42509e-05, 4.66822e-05, 4.84375e-05, 4.9634e-05, 5.04851e-05, 5.10726e-05, 5.14769e-05, 5.17554e-05, 5.19463e-05, 5.2079e-05, 5.21677e-05, 5.22281e-05, 
			3.14686e-05, 3.83366e-05, 4.41049e-05, 4.86391e-05, 5.20772e-05, 5.45456e-05, 5.63004e-05, 5.75492e-05, 5.84182e-05, 5.90194e-05, 5.9435e-05, 5.97205e-05, 5.99177e-05, 6.00522e-05, 6.01422e-05, 6.02028e-05, 
			3.902e-05, 4.59575e-05, 5.1776e-05, 5.63702e-05, 5.97796e-05, 6.22862e-05, 6.4076e-05, 6.5333e-05, 6.62113e-05, 6.68198e-05, 6.72389e-05, 6.75284e-05, 6.77251e-05, 6.78577e-05, 6.79485e-05, 6.80077e-05, 
			4.66744e-05, 5.36442e-05, 5.9504e-05, 6.40764e-05, 6.75268e-05, 7.00399e-05, 7.1836e-05, 7.30985e-05, 7.39795e-05, 7.45922e-05, 7.50124e-05, 7.53003e-05, 7.54946e-05, 7.56256e-05, 7.57152e-05, 7.57792e-05
		)
}

CapTable	"metal2_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.44344e-05, 4.75488e-05, 5.79821e-05, 6.58763e-05, 7.16401e-05, 7.57578e-05, 7.86449e-05, 8.06272e-05, 8.20373e-05, 8.30053e-05, 8.3662e-05, 8.41136e-05, 8.44182e-05, 8.46234e-05, 8.4759e-05, 8.48424e-05, 
			4.99906e-05, 6.34379e-05, 7.4153e-05, 8.22817e-05, 8.82303e-05, 9.24959e-05, 9.54779e-05, 9.75894e-05, 9.9039e-05, 0.000100037, 0.000100724, 0.000101188, 0.000101502, 0.000101706, 0.00010184, 0.000101921, 
			6.60586e-05, 7.96034e-05, 9.04141e-05, 9.86263e-05, 0.000104625, 0.000108958, 0.000112021, 0.000114147, 0.000115623, 0.000116634, 0.000117324, 0.000117791, 0.000118097, 0.000118298, 0.000118425, 0.000118501, 
			8.23212e-05, 9.58899e-05, 0.000106725, 0.000114948, 0.000121021, 0.000125362, 0.000128424, 0.000130566, 0.000132041, 0.000133052, 0.000133739, 0.000134192, 0.000134494, 0.000134688, 0.000134808, 0.000134885, 
			9.87186e-05, 0.000112273, 0.00012311, 0.000131365, 0.000137425, 0.000141776, 0.000144835, 0.000146966, 0.000148436, 0.00014943, 0.000150105, 0.000150553, 0.000150847, 0.000151041, 0.000151156, 0.000151216
		)
}

CapTable	"metal2_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000181245, 9.10464e-05, 5.52162e-05, 3.55572e-05, 2.34754e-05, 1.56797e-05, 1.05303e-05, 7.08776e-06, 4.76416e-06, 3.19286e-06, 2.12688e-06, 1.40303e-06, 9.13122e-07, 5.82462e-07, 3.61526e-07, 2.17516e-07, 
			0.00018636, 9.42934e-05, 5.73672e-05, 3.7013e-05, 2.44668e-05, 1.63479e-05, 1.09756e-05, 7.37462e-06, 4.94392e-06, 3.29838e-06, 2.18208e-06, 1.42664e-06, 9.16666e-07, 5.7599e-07, 3.52328e-07, 2.09914e-07, 
			0.000187736, 9.5428e-05, 5.8154e-05, 3.75486e-05, 2.48248e-05, 1.65814e-05, 1.11166e-05, 7.45084e-06, 4.9758e-06, 3.30264e-06, 2.17002e-06, 1.40552e-06, 8.94266e-07, 5.56824e-07, 3.38766e-07, 2.01204e-07, 
			0.000187596, 9.56476e-05, 5.8339e-05, 3.76728e-05, 2.49004e-05, 1.66128e-05, 1.1117e-05, 7.42904e-06, 4.94366e-06, 3.26422e-06, 2.13114e-06, 1.37257e-06, 8.68942e-07, 5.3931e-07, 3.27516e-07, 1.9427e-07, 
			0.000186964, 9.55258e-05, 5.8284e-05, 3.76286e-05, 2.48402e-05, 1.65441e-05, 1.1048e-05, 7.3635e-06, 4.8815e-06, 3.21076e-06, 2.08864e-06, 1.34073e-06, 8.464e-07, 5.23436e-07, 3.17826e-07, 1.89772e-07
		)
}

CapTable	"metal2_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.87805e-05, 2.52124e-05, 3.0827e-05, 3.56767e-05, 3.98033e-05, 4.32615e-05, 4.61199e-05, 4.84568e-05, 5.03491e-05, 5.1868e-05, 5.30817e-05, 5.40452e-05, 5.48069e-05, 5.54122e-05, 5.58823e-05, 5.62538e-05, 
			2.53687e-05, 3.20385e-05, 3.79572e-05, 4.31051e-05, 4.74957e-05, 5.11792e-05, 5.42262e-05, 5.67161e-05, 5.87354e-05, 6.03563e-05, 6.16517e-05, 6.26797e-05, 6.34949e-05, 6.41365e-05, 6.46417e-05, 6.50386e-05, 
			3.2352e-05, 3.919e-05, 4.52917e-05, 5.06049e-05, 5.5139e-05, 5.8944e-05, 6.20901e-05, 6.46626e-05, 6.67459e-05, 6.84206e-05, 6.9758e-05, 7.08207e-05, 7.16617e-05, 7.23244e-05, 7.28465e-05, 7.32564e-05, 
			3.96027e-05, 4.65548e-05, 5.2764e-05, 5.81711e-05, 6.27812e-05, 6.66503e-05, 6.98496e-05, 7.24668e-05, 7.45806e-05, 7.62884e-05, 7.76475e-05, 7.87271e-05, 7.95815e-05, 8.02564e-05, 8.07868e-05, 8.12028e-05, 
			4.70596e-05, 5.40777e-05, 6.03516e-05, 6.58116e-05, 7.04683e-05, 7.43738e-05, 7.76028e-05, 8.02451e-05, 8.23787e-05, 8.40953e-05, 8.54662e-05, 8.65552e-05, 8.74178e-05, 8.80979e-05, 8.86331e-05, 8.90524e-05
		)
}

CapTable	"metal2_C_TOP_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.31477e-05, 1.77468e-05, 2.18136e-05, 2.53583e-05, 2.83927e-05, 3.09469e-05, 3.30653e-05, 3.47999e-05, 3.62068e-05, 3.734e-05, 3.82455e-05, 3.89662e-05, 3.9537e-05, 3.99828e-05, 4.03393e-05, 4.06179e-05, 
			1.75933e-05, 2.23373e-05, 2.66166e-05, 3.03723e-05, 3.36005e-05, 3.6321e-05, 3.85796e-05, 4.04335e-05, 4.19359e-05, 4.31473e-05, 4.41163e-05, 4.48862e-05, 4.5494e-05, 4.59764e-05, 4.63562e-05, 4.66546e-05, 
			2.231e-05, 2.71688e-05, 3.15777e-05, 3.54579e-05, 3.87914e-05, 4.1603e-05, 4.39385e-05, 4.58541e-05, 4.74099e-05, 4.8662e-05, 4.96636e-05, 5.04585e-05, 5.10907e-05, 5.159e-05, 5.1983e-05, 5.22917e-05, 
			2.72153e-05, 3.21562e-05, 3.66464e-05, 4.05977e-05, 4.39928e-05, 4.68553e-05, 4.92336e-05, 5.11836e-05, 5.27694e-05, 5.40363e-05, 5.50569e-05, 5.58692e-05, 5.65129e-05, 5.70211e-05, 5.74212e-05, 5.77354e-05, 
			3.22604e-05, 3.72535e-05, 4.17912e-05, 4.57852e-05, 4.92171e-05, 5.21076e-05, 5.4507e-05, 5.64699e-05, 5.80704e-05, 5.93582e-05, 6.03885e-05, 6.12085e-05, 6.18582e-05, 6.23712e-05, 6.2775e-05, 6.3094e-05
		)
}

CapTable	"metal2_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000193776, 0.000106566, 7.19384e-05, 5.2143e-05, 3.904e-05, 2.97236e-05, 2.28438e-05, 1.76543e-05, 1.36891e-05, 1.0638e-05, 8.2786e-06, 6.44924e-06, 5.02806e-06, 3.92324e-06, 3.06298e-06, 2.39318e-06, 
			0.000203348, 0.000113185, 7.67052e-05, 5.56806e-05, 4.17158e-05, 3.17738e-05, 2.44272e-05, 1.88824e-05, 1.46457e-05, 1.13844e-05, 8.86196e-06, 6.90606e-06, 5.3871e-06, 4.20506e-06, 3.28508e-06, 2.5688e-06, 
			0.000207716, 0.000116507, 7.91516e-05, 5.75152e-05, 4.31126e-05, 3.2847e-05, 2.52584e-05, 1.95293e-05, 1.51512e-05, 1.17804e-05, 9.17338e-06, 7.1518e-06, 5.58064e-06, 4.3586e-06, 3.40746e-06, 2.66694e-06, 
			0.000209516, 0.000118136, 8.04016e-05, 5.84662e-05, 4.3847e-05, 3.34154e-05, 2.57008e-05, 1.98756e-05, 1.5423e-05, 1.19963e-05, 9.34456e-06, 7.28772e-06, 5.68956e-06, 4.4465e-06, 3.47904e-06, 2.7258e-06, 
			0.00021015, 0.000118939, 8.10562e-05, 5.89762e-05, 4.42366e-05, 3.37196e-05, 2.59402e-05, 2.0066e-05, 1.55749e-05, 1.21165e-05, 9.4413e-06, 7.36626e-06, 5.75396e-06, 4.4999e-06, 3.52388e-06, 2.76362e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			2.61548e-05, 3.4256e-05, 4.1084e-05, 4.68854e-05, 5.18284e-05, 5.60418e-05, 5.96359e-05, 6.27049e-05, 6.53306e-05, 6.75832e-05, 6.95226e-05, 7.1199e-05, 7.26546e-05, 7.39247e-05, 7.50383e-05, 7.60198e-05, 
			3.3827e-05, 4.18116e-05, 4.8732e-05, 5.47028e-05, 5.98424e-05, 6.42574e-05, 6.80508e-05, 7.13114e-05, 7.41202e-05, 7.65446e-05, 7.86466e-05, 8.0475e-05, 8.20724e-05, 8.34758e-05, 8.47127e-05, 8.58095e-05, 
			4.1612e-05, 4.94966e-05, 5.64238e-05, 6.2456e-05, 6.76838e-05, 7.22036e-05, 7.61092e-05, 7.9486e-05, 8.2411e-05, 8.49508e-05, 8.71634e-05, 8.90994e-05, 9.08008e-05, 9.23016e-05, 9.36327e-05, 9.48175e-05, 
			4.9443e-05, 5.72318e-05, 6.41292e-05, 7.01728e-05, 7.54386e-05, 8.00172e-05, 8.39934e-05, 8.74486e-05, 9.04548e-05, 9.30792e-05, 9.53768e-05, 9.73964e-05, 9.91784e-05, 0.000100758, 0.000102164, 0.000103421, 
			5.7303e-05, 6.49956e-05, 7.1848e-05, 7.78834e-05, 8.31678e-05, 8.77822e-05, 9.18066e-05, 9.5318e-05, 9.83888e-05, 0.000101078, 0.000103444, 0.000105531, 0.000107381, 0.000109026, 0.000110496, 0.000111814
		)
}

CapTable	"metal2_C_LATERAL_23MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000198257, 0.000112933, 8.0003e-05, 6.16256e-05, 4.96196e-05, 4.10808e-05, 3.46858e-05, 2.97288e-05, 2.57904e-05, 2.26016e-05, 1.99802e-05, 1.77974e-05, 1.59594e-05, 1.43962e-05, 1.30547e-05, 1.18938e-05, 
			0.000210182, 0.000122087, 8.7424e-05, 6.78782e-05, 5.50256e-05, 4.58396e-05, 3.89292e-05, 3.35486e-05, 2.92538e-05, 2.57594e-05, 2.28724e-05, 2.0456e-05, 1.84106e-05, 1.66622e-05, 1.5154e-05, 1.38425e-05, 
			0.00021712, 0.000128049, 9.25312e-05, 7.2354e-05, 5.90132e-05, 4.94354e-05, 4.21998e-05, 3.6542e-05, 3.2006e-05, 2.82992e-05, 2.52226e-05, 2.26356e-05, 2.04362e-05, 1.85474e-05, 1.69113e-05, 1.54825e-05, 
			0.000221572, 0.000132323, 9.63838e-05, 7.58402e-05, 6.21994e-05, 5.23618e-05, 4.49006e-05, 3.90434e-05, 3.43292e-05, 3.04608e-05, 2.72372e-05, 2.45156e-05, 2.21926e-05, 2.019e-05, 1.84488e-05, 1.69229e-05, 
			0.000224854, 0.000135712, 9.9546e-05, 7.87666e-05, 6.49082e-05, 5.48808e-05, 4.72504e-05, 4.1239e-05, 3.63832e-05, 3.23846e-05, 2.90404e-05, 2.62072e-05, 2.37802e-05, 2.16812e-05, 1.98502e-05, 1.82407e-05
		)
}

CapTable	"metal2_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.2748e-05, 4.52765e-05, 5.47369e-05, 6.12755e-05, 6.55377e-05, 6.82429e-05, 6.98522e-05, 7.08549e-05, 7.14639e-05, 7.18354e-05, 7.20624e-05, 7.22077e-05, 7.22978e-05, 7.23085e-05, 7.22952e-05, 7.2291e-05, 
			4.87479e-05, 6.15713e-05, 7.11822e-05, 7.78116e-05, 8.21569e-05, 8.48453e-05, 8.65199e-05, 8.75407e-05, 8.81615e-05, 8.85416e-05, 8.87763e-05, 8.89208e-05, 8.89749e-05, 8.89486e-05, 8.8939e-05, 8.8937e-05, 
			6.50813e-05, 7.79402e-05, 8.7566e-05, 9.41966e-05, 9.85294e-05, 0.000101256, 0.000102936, 0.00010396, 0.000104584, 0.000104968, 0.000105199, 0.000105342, 0.000105312, 0.00010529, 0.000105283, 0.000105283, 
			8.14662e-05, 9.43374e-05, 0.000103913, 0.000110547, 0.000114869, 0.00011759, 0.000119268, 0.000120294, 0.000120916, 0.000121292, 0.00012152, 0.000121592, 0.000121546, 0.000121528, 0.000121524, 0.000121525, 
			9.79242e-05, 0.00011075, 0.000120354, 0.000126978, 0.000131298, 0.000134015, 0.00013569, 0.000136708, 0.000137323, 0.000137694, 0.00013792, 0.0001379, 0.000137861, 0.000137846, 0.000137843, 0.000137844
		)
}

CapTable	"metal2_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.30822e-05, 4.61541e-05, 5.61271e-05, 6.30755e-05, 6.76208e-05, 7.0454e-05, 7.22543e-05, 7.33366e-05, 7.39972e-05, 7.44002e-05, 7.46455e-05, 7.47825e-05, 7.48546e-05, 7.48875e-05, 7.49008e-05, 7.4905e-05, 
			4.89861e-05, 6.23141e-05, 7.24304e-05, 7.94692e-05, 8.405e-05, 8.6986e-05, 8.87908e-05, 8.98979e-05, 9.05767e-05, 9.09831e-05, 9.12155e-05, 9.13427e-05, 9.14041e-05, 9.14304e-05, 9.144e-05, 9.1442e-05, 
			6.52249e-05, 7.85736e-05, 8.8699e-05, 9.57378e-05, 0.000100361, 0.000103288, 0.000105103, 0.000106218, 0.000106888, 0.000107276, 0.000107497, 0.00010761, 0.000107662, 0.000107684, 0.000107691, 0.000107691, 
			8.15252e-05, 9.48192e-05, 0.000104956, 0.000111993, 0.000116611, 0.000119542, 0.000121351, 0.000122442, 0.000123093, 0.000123469, 0.000123674, 0.000123775, 0.00012382, 0.000123838, 0.000123843, 0.000123842, 
			9.7871e-05, 0.000111167, 0.000121262, 0.000128287, 0.000132906, 0.000135814, 0.000137593, 0.000138668, 0.000139301, 0.000139661, 0.00013985, 0.000139941, 0.00013998, 0.000139995, 0.000139998, 0.000139997
		)
}

CapTable	"metal2_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000172257, 8.02504e-05, 4.4253e-05, 2.5546e-05, 1.49795e-05, 8.8331e-06, 5.2035e-06, 3.04448e-06, 1.74893e-06, 9.65394e-07, 4.90116e-07, 2.0676e-07, 4.35814e-08, 0, 0, 0, 
			0.000174012, 8.11446e-05, 4.47464e-05, 2.58212e-05, 1.51201e-05, 8.87472e-06, 5.18226e-06, 2.9794e-06, 1.65576e-06, 8.60294e-07, 3.88174e-07, 1.15499e-07, 0, 0, 0, 0, 
			0.000173393, 8.09752e-05, 4.4645e-05, 2.57336e-05, 1.50156e-05, 8.75454e-06, 5.0474e-06, 2.83574e-06, 1.5159e-06, 7.34422e-07, 2.79348e-07, 2.23542e-08, 0, 0, 0, 0, 
			0.000172168, 8.04984e-05, 4.43448e-05, 2.54922e-05, 1.48084e-05, 8.55586e-06, 4.85902e-06, 2.66646e-06, 1.36877e-06, 6.08512e-07, 1.72945e-07, 0, 0, 0, 0, 0, 
			0.000170963, 7.99862e-05, 4.40036e-05, 2.52156e-05, 1.45503e-05, 8.32748e-06, 4.66436e-06, 2.50052e-06, 1.22767e-06, 4.89026e-07, 7.21978e-08, 0, 0, 0, 0, 0
		)
}

CapTable	"metal2_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			3.4878e-05, 4.74451e-05, 5.74064e-05, 6.50891e-05, 7.09134e-05, 7.52815e-05, 7.85329e-05, 8.09414e-05, 8.27232e-05, 8.40365e-05, 8.50065e-05, 8.57161e-05, 8.62411e-05, 8.66284e-05, 8.69136e-05, 8.7123e-05, 
			5.02353e-05, 6.30695e-05, 7.3305e-05, 8.12555e-05, 8.73242e-05, 9.18986e-05, 9.53192e-05, 9.78631e-05, 9.97485e-05, 0.00010114, 0.00010217, 0.000102929, 0.000103488, 0.000103901, 0.000104204, 0.000104425, 
			6.60146e-05, 7.89269e-05, 8.92779e-05, 9.73557e-05, 0.000103545, 0.000108224, 0.000111733, 0.000114344, 0.000116284, 0.000117721, 0.000118782, 0.000119566, 0.000120142, 0.000120568, 0.000120879, 0.000121107, 
			8.19532e-05, 9.48913e-05, 0.0001053, 0.000113442, 0.00011969, 0.000124425, 0.000127979, 0.000130627, 0.000132597, 0.000134056, 0.000135134, 0.000135929, 0.000136515, 0.000136945, 0.000137261, 0.000137492, 
			9.80688e-05, 0.000111019, 0.00012146, 0.00012964, 0.00013592, 0.000140687, 0.000144265, 0.000146936, 0.000148921, 0.00015039, 0.000151476, 0.000152278, 0.000152866, 0.000153299, 0.000153617, 0.000153849
		)
}

CapTable	"metal2_C_TOP_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			1.23184e-05, 1.70091e-05, 2.10082e-05, 2.42455e-05, 2.67776e-05, 2.87145e-05, 3.01747e-05, 3.12683e-05, 3.20807e-05, 3.26835e-05, 3.31279e-05, 3.3463e-05, 3.3706e-05, 3.3885e-05, 3.40166e-05, 3.41129e-05, 
			1.71053e-05, 2.19275e-05, 2.60816e-05, 2.94719e-05, 3.21398e-05, 3.41928e-05, 3.57494e-05, 3.69182e-05, 3.77911e-05, 3.84429e-05, 3.89236e-05, 3.92789e-05, 3.95411e-05, 3.97341e-05, 3.98758e-05, 3.99794e-05, 
			2.20688e-05, 2.69679e-05, 3.12129e-05, 3.46859e-05, 3.7429e-05, 3.95456e-05, 4.11538e-05, 4.23683e-05, 4.3273e-05, 4.39463e-05, 4.44456e-05, 4.48148e-05, 4.50871e-05, 4.52874e-05, 4.54342e-05, 4.55423e-05, 
			2.71372e-05, 3.20897e-05, 3.63876e-05, 3.9911e-05, 4.26959e-05, 4.48468e-05, 4.64856e-05, 4.77217e-05, 4.86441e-05, 4.93308e-05, 4.984e-05, 5.02165e-05, 5.0494e-05, 5.06991e-05, 5.08481e-05, 5.09565e-05, 
			3.2289e-05, 3.72775e-05, 4.16078e-05, 4.51599e-05, 4.79764e-05, 5.01453e-05, 5.17979e-05, 5.30432e-05, 5.3975e-05, 5.46687e-05, 5.5183e-05, 5.5563e-05, 5.58442e-05, 5.60494e-05, 5.61992e-05, 5.63079e-05
		)
}

CapTable	"metal2_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000184063, 9.49208e-05, 5.97664e-05, 4.03494e-05, 2.8151e-05, 1.9999e-05, 1.43654e-05, 1.03923e-05, 7.55406e-06, 5.509e-06, 4.02658e-06, 2.94692e-06, 2.1589e-06, 1.58261e-06, 1.16081e-06, 8.52106e-07, 
			0.00019037, 9.927e-05, 6.29094e-05, 4.26766e-05, 2.9891e-05, 2.13046e-05, 1.53454e-05, 1.11287e-05, 8.10836e-06, 5.92728e-06, 4.3438e-06, 3.19002e-06, 2.34738e-06, 1.73127e-06, 1.28066e-06, 9.51344e-07, 
			0.000192819, 0.000101347, 6.45042e-05, 4.38984e-05, 3.0824e-05, 2.2017e-05, 1.58897e-05, 1.15449e-05, 8.42886e-06, 6.17598e-06, 4.53926e-06, 3.34638e-06, 2.47536e-06, 1.83889e-06, 1.37393e-06, 1.03457e-06, 
			0.000193587, 0.000102337, 6.53326e-05, 4.45556e-05, 3.13472e-05, 2.24272e-05, 1.62114e-05, 1.17999e-05, 8.63234e-06, 6.34142e-06, 4.67678e-06, 3.46372e-06, 2.57842e-06, 1.93188e-06, 1.46043e-06, 1.11717e-06, 
			0.000193693, 0.000102823, 6.5786e-05, 4.49336e-05, 3.1646e-05, 2.26682e-05, 1.64089e-05, 1.19629e-05, 8.76938e-06, 6.45934e-06, 4.78094e-06, 3.55834e-06, 2.6664e-06, 2.01622e-06, 1.54262e-06, 1.19846e-06
		)
}

CapTable	"metal2_C_BOTTOM_GP_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			4.2759e-05, 5.74718e-05, 6.90278e-05, 7.79568e-05, 8.48394e-05, 9.01656e-05, 9.4318e-05, 9.75858e-05, 0.000100184, 0.000102273, 0.000103969, 0.00010536, 0.000106512, 0.000107474, 0.000108284, 0.00010897, 
			5.99664e-05, 7.45938e-05, 8.62134e-05, 9.5316e-05, 0.000102432, 0.000108015, 0.000112427, 0.000115944, 0.000118774, 0.000121075, 0.000122963, 0.000124527, 0.000125833, 0.000126931, 0.000127864, 0.000128658, 
			7.7337e-05, 9.17656e-05, 0.000103345, 0.000112515, 0.000119761, 0.000125508, 0.000130095, 0.000133787, 0.000136786, 0.000139244, 0.000141278, 0.000142973, 0.000144398, 0.000145604, 0.000146633, 0.000147512, 
			9.4697e-05, 0.000108956, 0.000120488, 0.000129695, 0.000137029, 0.000142895, 0.000147614, 0.00015144, 0.000154571, 0.000157153, 0.000159301, 0.000161102, 0.000162622, 0.000163915, 0.000165019, 0.000165967, 
			0.000112123, 0.000126259, 0.000137761, 0.000147002, 0.000154413, 0.000160374, 0.000165198, 0.000169132, 0.000172368, 0.000175049, 0.00017729, 0.000179176, 0.000180772, 0.000182132, 0.000183297, 0.000184299
		)
}

CapTable	"metal2_C_LATERAL_13MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.2, 0.4, 0.6, 0.8, 1)
		wireSpacing		= (0.21, 0.42, 0.63, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15, 3.36)
		capValue			= (
			0.000187466, 9.99242e-05, 6.61452e-05, 4.77462e-05, 3.61836e-05, 2.83274e-05, 2.2717e-05, 1.85662e-05, 1.54109e-05, 1.29591e-05, 1.10188e-05, 9.45928e-06, 8.18874e-06, 7.14144e-06, 6.26926e-06, 5.5363e-06, 
			0.000195795, 0.000106461, 7.15596e-05, 5.2356e-05, 4.01612e-05, 3.17848e-05, 2.57368e-05, 2.12132e-05, 1.7738e-05, 1.50103e-05, 1.28313e-05, 1.10644e-05, 9.61336e-06, 8.4085e-06, 7.39848e-06, 6.54472e-06, 
			0.000200402, 0.000110749, 7.53538e-05, 5.57128e-05, 4.31306e-05, 3.4412e-05, 2.80616e-05, 2.3271e-05, 1.95602e-05, 1.66251e-05, 1.42635e-05, 1.2336e-05, 1.07437e-05, 9.41462e-06, 8.29536e-06, 7.3456e-06, 
			0.000203322, 0.00011386, 7.82284e-05, 5.83088e-05, 4.54638e-05, 3.64942e-05, 2.99148e-05, 2.49176e-05, 2.10218e-05, 1.7922e-05, 1.54141e-05, 1.33572e-05, 1.16507e-05, 1.0221e-05, 9.0134e-06, 7.98614e-06, 
			0.000205496, 0.000116325, 8.0547e-05, 6.04212e-05, 4.73588e-05, 3.81902e-05, 3.1429e-05, 2.62658e-05, 2.22204e-05, 1.89865e-05, 1.63595e-05, 1.41972e-05, 1.23978e-05, 1.08867e-05, 9.60778e-06, 8.51836e-06
		)
}

CapTable	"metal3_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.36543e-05, 1.82349e-05, 2.15426e-05, 2.38171e-05, 2.53463e-05, 2.63643e-05, 2.70916e-05, 2.75102e-05, 2.77914e-05, 2.79948e-05, 2.8129e-05, 2.82185e-05, 2.82783e-05, 2.83163e-05, 2.83433e-05, 2.83591e-05, 
			1.94625e-05, 2.42556e-05, 2.77864e-05, 3.02488e-05, 3.19215e-05, 3.30803e-05, 3.38005e-05, 3.43093e-05, 3.46484e-05, 3.48776e-05, 3.50305e-05, 3.51313e-05, 3.51991e-05, 3.52432e-05, 3.52724e-05, 3.52938e-05, 
			2.54333e-05, 3.03436e-05, 3.398e-05, 3.6581e-05, 3.82891e-05, 3.94482e-05, 4.02448e-05, 4.078e-05, 4.11394e-05, 4.13795e-05, 4.15401e-05, 4.16475e-05, 4.17188e-05, 4.17655e-05, 4.17988e-05, 4.18205e-05, 
			3.15353e-05, 3.6506e-05, 4.02328e-05, 4.27924e-05, 4.45737e-05, 4.57826e-05, 4.65989e-05, 4.71486e-05, 4.75168e-05, 4.77656e-05, 4.79301e-05, 4.80413e-05, 4.81148e-05, 4.81654e-05, 4.81972e-05, 4.82233e-05, 
			3.77598e-05, 4.27212e-05, 4.6399e-05, 4.90048e-05, 5.07904e-05, 5.20038e-05, 5.28218e-05, 5.33724e-05, 5.37448e-05, 5.39934e-05, 5.41614e-05, 5.42728e-05, 5.43455e-05, 5.43975e-05, 5.4435e-05, 5.4463e-05
		)
}

CapTable	"metal3_C_TOP_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			5.12465e-05, 6.75447e-05, 7.86272e-05, 8.59383e-05, 9.07264e-05, 9.3873e-05, 9.58959e-05, 9.73125e-05, 9.82542e-05, 9.8871e-05, 9.92876e-05, 9.95642e-05, 9.97491e-05, 9.98719e-05, 9.99484e-05, 9.99974e-05, 
			7.51119e-05, 9.18292e-05, 0.000103418, 0.000111197, 0.000116365, 0.000119758, 0.00012208, 0.000123607, 0.000124634, 0.000125318, 0.000125777, 0.000126084, 0.000126284, 0.000126417, 0.000126502, 0.000126552, 
			9.94665e-05, 0.000116328, 0.000128149, 0.000136071, 0.00014146, 0.00014504, 0.000147424, 0.000149026, 0.000150095, 0.000150812, 0.000151291, 0.000151604, 0.000151813, 0.000151949, 0.000152032, 0.000152087, 
			0.000124178, 0.000141121, 0.00015301, 0.000161151, 0.000166585, 0.00017023, 0.000172662, 0.000174292, 0.000175384, 0.000176105, 0.000176591, 0.000176911, 0.000177121, 0.000177253, 0.000177341, 0.000177388, 
			0.000148883, 0.000165775, 0.000177699, 0.000185813, 0.000191274, 0.00019492, 0.00019736, 0.000198996, 0.00020008, 0.000200809, 0.000201292, 0.000201611, 0.000201827, 0.000201954, 0.00020203, 0.000202076
		)
}

CapTable	"metal3_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000116734, 5.75004e-05, 3.35472e-05, 2.07886e-05, 1.32833e-05, 8.64472e-06, 5.6955e-06, 3.77432e-06, 2.51138e-06, 1.67517e-06, 1.1184e-06, 7.48308e-07, 5.02612e-07, 3.40774e-07, 2.36284e-07, 1.70531e-07, 
			0.00012303, 6.18252e-05, 3.65306e-05, 2.28492e-05, 1.47035e-05, 9.62072e-06, 6.35454e-06, 4.22274e-06, 2.81562e-06, 1.88341e-06, 1.26349e-06, 8.51668e-07, 5.79878e-07, 4.0178e-07, 2.87632e-07, 2.16172e-07, 
			0.000125225, 6.36944e-05, 3.7888e-05, 2.3831e-05, 1.53839e-05, 1.00888e-05, 6.6752e-06, 4.44002e-06, 2.9666e-06, 1.98945e-06, 1.3409e-06, 9.12502e-07, 6.3016e-07, 4.46516e-07, 3.302e-07, 2.56496e-07, 
			0.000126168, 6.4626e-05, 3.85952e-05, 2.43196e-05, 1.57313e-05, 1.03214e-05, 6.83414e-06, 4.55144e-06, 3.04516e-06, 2.0494e-06, 1.38991e-06, 9.547e-07, 6.69202e-07, 4.85546e-07, 3.69792e-07, 2.95722e-07, 
			0.000124927, 6.44898e-05, 3.8654e-05, 2.43992e-05, 1.57986e-05, 1.03832e-05, 6.88816e-06, 4.59856e-06, 3.0892e-06, 2.0906e-06, 1.43058e-06, 9.95198e-07, 7.10518e-07, 5.3054e-07, 4.17038e-07, 3.42018e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.32468e-05, 2.89986e-05, 3.36287e-05, 3.75653e-05, 4.10018e-05, 4.4041e-05, 4.67476e-05, 4.91674e-05, 5.13359e-05, 5.32824e-05, 5.50312e-05, 5.66041e-05, 5.80196e-05, 5.92945e-05, 6.04436e-05, 6.14799e-05, 
			2.84294e-05, 3.40412e-05, 3.8834e-05, 4.30302e-05, 4.67556e-05, 5.00865e-05, 5.30769e-05, 5.57686e-05, 5.81949e-05, 6.0384e-05, 6.23609e-05, 6.4147e-05, 6.57613e-05, 6.72213e-05, 6.8542e-05, 6.97374e-05, 
			3.36764e-05, 3.92282e-05, 4.41134e-05, 4.84618e-05, 5.2363e-05, 5.5878e-05, 5.90524e-05, 6.19244e-05, 6.45245e-05, 6.68797e-05, 6.90143e-05, 7.09493e-05, 7.27037e-05, 7.4295e-05, 7.57385e-05, 7.70484e-05, 
			3.90325e-05, 4.45608e-05, 4.95094e-05, 5.39646e-05, 5.79906e-05, 6.16394e-05, 6.49504e-05, 6.79568e-05, 7.06878e-05, 7.31702e-05, 7.5425e-05, 7.7475e-05, 7.93374e-05, 8.10305e-05, 8.25705e-05, 8.39699e-05, 
			4.44502e-05, 4.995e-05, 5.49298e-05, 5.9451e-05, 6.356e-05, 6.73002e-05, 7.07064e-05, 7.38102e-05, 7.66372e-05, 7.92134e-05, 8.15604e-05, 8.36982e-05, 8.56442e-05, 8.74178e-05, 8.90323e-05, 9.05025e-05
		)
}

CapTable	"metal3_C_LATERAL_42MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000142655, 8.84334e-05, 6.62446e-05, 5.32378e-05, 4.43418e-05, 3.7729e-05, 3.25576e-05, 2.83766e-05, 2.49172e-05, 2.20062e-05, 1.95259e-05, 1.73915e-05, 1.55406e-05, 1.39252e-05, 1.2508e-05, 1.12592e-05, 
			0.000158054, 0.000100376, 7.5939e-05, 6.13628e-05, 5.13016e-05, 4.37816e-05, 3.78794e-05, 3.30936e-05, 2.91238e-05, 2.57756e-05, 2.29156e-05, 2.04486e-05, 1.83042e-05, 1.64282e-05, 1.47787e-05, 1.33219e-05, 
			0.000167062, 0.000108022, 8.23906e-05, 6.69122e-05, 5.614e-05, 4.8047e-05, 4.16706e-05, 3.64846e-05, 3.2171e-05, 2.8524e-05, 2.54016e-05, 2.27024e-05, 2.03512e-05, 1.82902e-05, 1.64744e-05, 1.48678e-05, 
			0.000173388, 0.000113598, 8.72036e-05, 7.11054e-05, 5.98384e-05, 5.13366e-05, 4.46156e-05, 3.91342e-05, 3.45642e-05, 3.06918e-05, 2.737e-05, 2.4493e-05, 2.19826e-05, 1.97785e-05, 1.78335e-05, 1.61101e-05, 
			0.000176492, 0.000117226, 9.05882e-05, 7.4168e-05, 6.2605e-05, 5.38418e-05, 4.68906e-05, 4.12038e-05, 3.64498e-05, 3.24126e-05, 2.89426e-05, 2.59318e-05, 2.32998e-05, 2.09852e-05, 1.89397e-05, 1.71245e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			1.75382e-05, 2.35261e-05, 2.77853e-05, 3.06184e-05, 3.24415e-05, 3.36098e-05, 3.43113e-05, 3.47616e-05, 3.50405e-05, 3.5213e-05, 3.53175e-05, 3.53836e-05, 3.5421e-05, 3.54488e-05, 3.54664e-05, 3.54788e-05, 
			2.53531e-05, 3.1638e-05, 3.6152e-05, 3.91804e-05, 4.11493e-05, 4.23862e-05, 4.31692e-05, 4.36607e-05, 4.39629e-05, 4.41501e-05, 4.42677e-05, 4.43369e-05, 4.43839e-05, 4.44149e-05, 4.44345e-05, 4.44488e-05, 
			3.34272e-05, 3.98338e-05, 4.44584e-05, 4.75411e-05, 4.95554e-05, 5.0838e-05, 5.16448e-05, 5.21467e-05, 5.24611e-05, 5.26553e-05, 5.27753e-05, 5.28515e-05, 5.29e-05, 5.29324e-05, 5.29559e-05, 5.29723e-05, 
			4.16486e-05, 4.81144e-05, 5.2759e-05, 5.58904e-05, 5.79224e-05, 5.92144e-05, 6.00296e-05, 6.05409e-05, 6.08592e-05, 6.1056e-05, 6.11791e-05, 6.12569e-05, 6.13078e-05, 6.13431e-05, 6.1368e-05, 6.13863e-05, 
			4.99324e-05, 5.63886e-05, 6.10196e-05, 6.41338e-05, 6.61528e-05, 6.74392e-05, 6.82481e-05, 6.87557e-05, 6.90729e-05, 6.92707e-05, 6.93938e-05, 6.94738e-05, 6.95272e-05, 6.9565e-05, 6.95918e-05, 6.96132e-05
		)
}

CapTable	"metal3_C_TOP_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			5.01608e-05, 6.63651e-05, 7.72709e-05, 8.42774e-05, 8.86871e-05, 9.14244e-05, 9.3155e-05, 9.42199e-05, 9.48805e-05, 9.52901e-05, 9.55474e-05, 9.57023e-05, 9.58011e-05, 9.5852e-05, 9.58813e-05, 9.58979e-05, 
			7.41863e-05, 9.08598e-05, 0.000102212, 0.000109587, 0.000114258, 0.000117203, 0.000119042, 0.000120179, 0.000120893, 0.000121334, 0.000121604, 0.000121777, 0.000121872, 0.000121925, 0.000121955, 0.000121973, 
			9.87588e-05, 0.000115551, 0.000127038, 0.000134543, 0.000139315, 0.000142316, 0.000144192, 0.000145367, 0.000146089, 0.000146542, 0.000146822, 0.00014699, 0.000147084, 0.000147136, 0.000147165, 0.000147183, 
			0.000123655, 0.000140479, 0.00015203, 0.000159565, 0.000164364, 0.000167394, 0.000169283, 0.000170454, 0.000171187, 0.000171642, 0.000171921, 0.000172083, 0.000172171, 0.00017222, 0.000172249, 0.000172267, 
			0.000148539, 0.000165234, 0.000176702, 0.000184198, 0.000188982, 0.000191974, 0.000193852, 0.000195025, 0.000195756, 0.000196208, 0.000196479, 0.00019663, 0.000196712, 0.000196759, 0.000196788, 0.000196805
		)
}

CapTable	"metal3_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000114807, 5.49258e-05, 3.07448e-05, 1.81022e-05, 1.09084e-05, 6.65778e-06, 4.09474e-06, 2.5315e-06, 1.57305e-06, 9.83934e-07, 6.21138e-07, 3.98128e-07, 2.6188e-07, 1.82242e-07, 1.35312e-07, 1.06293e-07, 
			0.000119886, 5.81532e-05, 3.2814e-05, 1.94336e-05, 1.17647e-05, 7.20776e-06, 4.4488e-06, 2.76634e-06, 1.73212e-06, 1.09589e-06, 7.03268e-07, 4.61138e-07, 3.17126e-07, 2.33106e-07, 1.82457e-07, 1.50167e-07, 
			0.000121028, 5.91792e-05, 3.35276e-05, 1.99249e-05, 1.20926e-05, 7.429e-06, 4.60418e-06, 2.87634e-06, 1.81586e-06, 1.16074e-06, 7.56704e-07, 5.1148e-07, 3.68018e-07, 2.83552e-07, 2.3109e-07, 1.96714e-07, 
			0.000121191, 5.95216e-05, 3.3796e-05, 2.01096e-05, 1.22286e-05, 7.52858e-06, 4.68136e-06, 2.9401e-06, 1.86783e-06, 1.20697e-06, 8.01938e-07, 5.61106e-07, 4.21238e-07, 3.36888e-07, 2.82956e-07, 2.46742e-07, 
			0.000119417, 5.90124e-05, 3.36064e-05, 2.00322e-05, 1.22042e-05, 7.54384e-06, 4.71588e-06, 2.9813e-06, 1.91209e-06, 1.25429e-06, 8.5622e-07, 6.24224e-07, 4.8781e-07, 4.02962e-07, 3.47156e-07, 3.08816e-07
		)
}

CapTable	"metal3_C_BOTTOM_GP_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.72986e-05, 3.46258e-05, 4.05316e-05, 4.54488e-05, 4.96048e-05, 5.31487e-05, 5.61911e-05, 5.8818e-05, 6.10982e-05, 6.30866e-05, 6.48277e-05, 6.63582e-05, 6.77077e-05, 6.89012e-05, 6.99593e-05, 7.08994e-05, 
			3.45748e-05, 4.18596e-05, 4.79834e-05, 5.31914e-05, 5.76568e-05, 6.15112e-05, 6.48569e-05, 6.7776e-05, 7.03346e-05, 7.25864e-05, 7.45749e-05, 7.63363e-05, 7.79007e-05, 7.92929e-05, 8.05343e-05, 8.16431e-05, 
			4.19924e-05, 4.92062e-05, 5.54016e-05, 6.07464e-05, 6.5384e-05, 6.94282e-05, 7.2971e-05, 7.60884e-05, 7.88412e-05, 8.12802e-05, 8.3448e-05, 8.53788e-05, 8.71023e-05, 8.8642e-05, 9.00214e-05, 9.12575e-05, 
			4.94835e-05, 5.66254e-05, 6.28516e-05, 6.82874e-05, 7.3051e-05, 7.72392e-05, 8.09352e-05, 8.42086e-05, 8.71166e-05, 8.97058e-05, 9.20166e-05, 9.40836e-05, 9.59349e-05, 9.75947e-05, 9.90853e-05, 0.000100424, 
			5.69468e-05, 6.40046e-05, 7.0231e-05, 7.57204e-05, 8.05688e-05, 8.486e-05, 8.86692e-05, 9.20614e-05, 9.50892e-05, 9.77966e-05, 0.000100222, 0.000102399, 0.000104354, 0.000106112, 0.000107694, 0.00010912
		)
}

CapTable	"metal3_C_LATERAL_32MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000139633, 8.46402e-05, 6.19774e-05, 4.87374e-05, 3.97882e-05, 3.32458e-05, 2.82246e-05, 2.42412e-05, 2.10038e-05, 1.83244e-05, 1.60751e-05, 1.41652e-05, 1.25287e-05, 1.11158e-05, 9.88858e-06, 8.817e-06, 
			0.000153858, 9.55754e-05, 7.08376e-05, 5.61816e-05, 4.61902e-05, 3.88348e-05, 3.31518e-05, 2.86132e-05, 2.49006e-05, 2.18082e-05, 1.91964e-05, 1.69661e-05, 1.50448e-05, 1.33782e-05, 1.19241e-05, 1.06493e-05, 
			0.000161947, 0.000102537, 7.67934e-05, 6.13736e-05, 5.0767e-05, 4.29018e-05, 3.6785e-05, 3.18696e-05, 2.78258e-05, 2.44398e-05, 2.1566e-05, 1.91012e-05, 1.69697e-05, 1.5114e-05, 1.34896e-05, 1.20615e-05, 
			0.000167673, 0.00010773, 8.13714e-05, 6.54276e-05, 5.4385e-05, 4.61438e-05, 3.96978e-05, 3.44914e-05, 3.01884e-05, 2.65702e-05, 2.34884e-05, 2.08364e-05, 1.85361e-05, 1.65283e-05, 1.47667e-05, 1.32146e-05, 
			0.000170495, 0.000111241, 8.4719e-05, 6.85106e-05, 5.72012e-05, 4.871e-05, 4.20328e-05, 3.66126e-05, 3.21128e-05, 2.83154e-05, 2.50696e-05, 2.22686e-05, 1.98325e-05, 1.7701e-05, 1.58268e-05, 1.41722e-05
		)
}

CapTable	"metal3_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			2.35676e-05, 3.17109e-05, 3.72978e-05, 4.08045e-05, 4.29079e-05, 4.41123e-05, 4.48029e-05, 4.519e-05, 4.54013e-05, 4.55169e-05, 4.55785e-05, 4.56067e-05, 4.56196e-05, 4.56236e-05, 4.5623e-05, 4.56199e-05, 
			3.47719e-05, 4.32949e-05, 4.91332e-05, 5.2803e-05, 5.49973e-05, 5.62679e-05, 5.699e-05, 5.73922e-05, 5.7613e-05, 5.773e-05, 5.77893e-05, 5.78184e-05, 5.78317e-05, 5.78362e-05, 5.78357e-05, 5.78327e-05, 
			4.63241e-05, 5.49564e-05, 6.0852e-05, 6.45515e-05, 6.67625e-05, 6.80402e-05, 6.87654e-05, 6.91675e-05, 6.93832e-05, 6.94958e-05, 6.95534e-05, 6.95825e-05, 6.95962e-05, 6.96008e-05, 6.96014e-05, 6.95996e-05, 
			5.80404e-05, 6.66978e-05, 7.2606e-05, 7.63091e-05, 7.8515e-05, 7.97885e-05, 8.05046e-05, 8.08982e-05, 8.11066e-05, 8.12166e-05, 8.12751e-05, 8.13055e-05, 8.13199e-05, 8.13264e-05, 8.13279e-05, 8.13268e-05, 
			6.97926e-05, 7.84068e-05, 8.42584e-05, 8.79218e-05, 9.00967e-05, 9.13425e-05, 9.20379e-05, 9.24205e-05, 9.26269e-05, 9.27375e-05, 9.27981e-05, 9.28331e-05, 9.28513e-05, 9.28623e-05, 9.28666e-05, 9.28679e-05
		)
}

CapTable	"metal3_C_TOP_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.90504e-05, 6.51747e-05, 7.57656e-05, 8.22567e-05, 8.60692e-05, 8.82753e-05, 8.95119e-05, 9.01909e-05, 9.05518e-05, 9.07249e-05, 9.07934e-05, 9.08173e-05, 9.08236e-05, 9.08242e-05, 9.08231e-05, 9.08218e-05, 
			7.33931e-05, 8.99991e-05, 0.000100941, 0.000107665, 0.000111626, 0.000113891, 0.000115152, 0.000115832, 0.000116173, 0.000116325, 0.000116386, 0.000116406, 0.000116411, 0.000116411, 0.00011641, 0.000116409, 
			9.82951e-05, 0.000114976, 0.00012598, 0.000132722, 0.000136678, 0.000138929, 0.000140158, 0.000140797, 0.000141116, 0.000141257, 0.00014131, 0.000141328, 0.000141333, 0.000141334, 0.000141333, 0.000141332, 
			0.000123473, 0.000140152, 0.000151126, 0.000157831, 0.000161746, 0.00016394, 0.000165124, 0.000165744, 0.000166045, 0.000166173, 0.000166221, 0.000166238, 0.000166244, 0.000166245, 0.000166245, 0.000166245, 
			0.000148606, 0.000165107, 0.000175944, 0.000182536, 0.000186345, 0.000188481, 0.000189637, 0.000190234, 0.000190516, 0.000190634, 0.00019068, 0.000190697, 0.000190704, 0.000190706, 0.000190707, 0.000190708
		)
}

CapTable	"metal3_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000111564, 5.08474e-05, 2.65746e-05, 1.43318e-05, 7.75286e-06, 4.14338e-06, 2.15816e-06, 1.07613e-06, 4.99924e-07, 2.10222e-07, 7.91216e-08, 2.59974e-08, 6.81552e-09, 2.19746e-09, 3.94178e-09, 8.2839e-09, 
			0.00011484, 5.258e-05, 2.74618e-05, 1.4753e-05, 7.91766e-06, 4.17912e-06, 2.137e-06, 1.03979e-06, 4.73958e-07, 2.0102e-07, 8.07274e-08, 3.16124e-08, 1.33535e-08, 8.77834e-09, 1.03034e-08, 1.43089e-08, 
			0.000114618, 5.25536e-05, 2.7372e-05, 1.46365e-05, 7.79446e-06, 4.06876e-06, 2.05662e-06, 9.95484e-07, 4.56852e-07, 2.0217e-07, 9.0651e-08, 4.347e-08, 2.47894e-08, 1.9192e-08, 1.95695e-08, 2.24234e-08, 
			0.000113817, 5.21642e-05, 2.7085e-05, 1.44049e-05, 7.62404e-06, 3.96052e-06, 1.99836e-06, 9.69766e-07, 4.55398e-07, 2.16442e-07, 1.09923e-07, 6.2469e-08, 4.20894e-08, 3.4573e-08, 3.3105e-08, 3.42358e-08, 
			0.000111394, 5.11652e-05, 2.65346e-05, 1.40742e-05, 7.44034e-06, 3.86954e-06, 1.96315e-06, 9.68464e-07, 4.7607e-07, 2.46504e-07, 1.38902e-07, 8.69316e-08, 6.16662e-08, 4.9715e-08, 4.43628e-08, 4.2111e-08
		)
}

CapTable	"metal3_C_BOTTOM_GP_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			3.36525e-05, 4.34448e-05, 5.12036e-05, 5.7408e-05, 6.2386e-05, 6.63997e-05, 6.96592e-05, 7.23309e-05, 7.45436e-05, 7.63961e-05, 7.79631e-05, 7.93014e-05, 8.04542e-05, 8.14545e-05, 8.23276e-05, 8.30936e-05, 
			4.4518e-05, 5.43522e-05, 6.23462e-05, 6.88386e-05, 7.41246e-05, 7.84534e-05, 8.20268e-05, 8.5006e-05, 8.75152e-05, 8.96483e-05, 9.148e-05, 9.30632e-05, 9.44435e-05, 9.56508e-05, 9.67149e-05, 9.76539e-05, 
			5.5529e-05, 6.52324e-05, 7.32442e-05, 7.98384e-05, 8.52826e-05, 8.9805e-05, 9.35906e-05, 9.67892e-05, 9.95176e-05, 0.000101864, 0.000103898, 0.000105673, 0.000107231, 0.000108605, 0.000109821, 0.000110899, 
			6.65068e-05, 7.60606e-05, 8.4054e-05, 9.07172e-05, 9.62842e-05, 0.000100963, 0.000104924, 0.000108307, 0.000111218, 0.000113743, 0.000115948, 0.000117884, 0.000119592, 0.000121105, 0.000122449, 0.000123644, 
			7.7295e-05, 8.6678e-05, 9.462e-05, 0.000101318, 0.000106972, 0.00011177, 0.000115871, 0.000119404, 0.000122468, 0.000125145, 0.000127496, 0.00012957, 0.000131409, 0.000133042, 0.000134499, 0.000135798
		)
}

CapTable	"metal3_C_LATERAL_22MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000135335, 7.92332e-05, 5.60014e-05, 4.2594e-05, 3.37502e-05, 2.74838e-05, 2.28338e-05, 1.92645e-05, 1.64507e-05, 1.4183e-05, 1.23215e-05, 1.07696e-05, 9.45918e-06, 8.34084e-06, 7.3781e-06, 6.5434e-06, 
			0.00014786, 8.88318e-05, 6.38318e-05, 4.92444e-05, 3.95314e-05, 3.25746e-05, 2.73482e-05, 2.3283e-05, 2.00348e-05, 1.73827e-05, 1.5179e-05, 1.33218e-05, 1.17385e-05, 1.03762e-05, 9.1951e-06, 8.16508e-06, 
			0.000154815, 9.50226e-05, 6.92748e-05, 5.40996e-05, 4.38854e-05, 3.649e-05, 3.08714e-05, 2.64518e-05, 2.28824e-05, 1.99389e-05, 1.74715e-05, 1.53759e-05, 1.35775e-05, 1.20211e-05, 1.06655e-05, 9.47832e-06, 
			0.000159906, 9.98524e-05, 7.3668e-05, 5.80798e-05, 4.74948e-05, 3.9757e-05, 3.3823e-05, 2.91134e-05, 2.52784e-05, 2.20926e-05, 1.94049e-05, 1.71094e-05, 1.51301e-05, 1.34105e-05, 1.19075e-05, 1.05875e-05, 
			0.000162478, 0.000103304, 7.7094e-05, 6.13032e-05, 5.0478e-05, 4.24946e-05, 3.63196e-05, 3.13784e-05, 2.73246e-05, 2.39362e-05, 2.10618e-05, 1.85957e-05, 1.64608e-05, 1.45998e-05, 1.29685e-05, 1.15324e-05
		)
}

CapTable	"metal3_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			6.05202e-05, 7.74968e-05, 8.61924e-05, 9.01191e-05, 9.18563e-05, 9.2603e-05, 9.29178e-05, 9.30469e-05, 9.30823e-05, 9.3081e-05, 9.3084e-05, 9.30859e-05, 9.30875e-05, 9.30873e-05, 9.30881e-05, 9.30899e-05, 
			9.29405e-05, 0.00010997, 0.000118668, 0.000122665, 0.000124415, 0.000125163, 0.000125476, 0.000125608, 0.000125644, 0.000125645, 0.000125647, 0.000125649, 0.000125648, 0.000125649, 0.000125652, 0.000125653, 
			0.0001254, 0.000142351, 0.000151001, 0.000154963, 0.000156695, 0.000157432, 0.000157748, 0.000157891, 0.000157932, 0.00015793, 0.00015793, 0.000157932, 0.000157934, 0.000157935, 0.000157936, 0.000157937, 
			0.000158022, 0.000174913, 0.000183515, 0.000187452, 0.000189168, 0.000189903, 0.00019023, 0.000190386, 0.000190432, 0.000190426, 0.000190426, 0.00019043, 0.000190431, 0.000190432, 0.000190432, 0.000190433, 
			0.000190338, 0.000206974, 0.000215433, 0.000219327, 0.000221027, 0.00022176, 0.000222099, 0.000222277, 0.000222341, 0.000222339, 0.000222338, 0.000222338, 0.000222338, 0.000222339, 0.000222339, 0.00022234
		)
}

CapTable	"metal3_C_TOP_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			4.79774e-05, 6.29326e-05, 7.07907e-05, 7.45024e-05, 7.60994e-05, 7.67662e-05, 7.70166e-05, 7.70913e-05, 7.71097e-05, 7.7111e-05, 7.7107e-05, 7.71051e-05, 7.71035e-05, 7.71047e-05, 7.71039e-05, 7.71011e-05, 
			7.29709e-05, 8.80657e-05, 9.60091e-05, 9.96865e-05, 0.00010127, 0.000101904, 0.000102127, 0.000102192, 0.000102206, 0.000102204, 0.000102202, 0.0001022, 0.000102202, 0.000102201, 0.000102197, 0.000102196, 
			9.81099e-05, 0.000113112, 0.000120983, 0.000124583, 0.000126113, 0.000126715, 0.000126913, 0.000126964, 0.000126977, 0.000126979, 0.000126982, 0.00012698, 0.000126975, 0.000126974, 0.000126973, 0.000126972, 
			0.000123281, 0.00013818, 0.000145952, 0.000149492, 0.000150979, 0.000151536, 0.000151707, 0.000151759, 0.000151773, 0.000151782, 0.000151782, 0.000151775, 0.000151774, 0.000151773, 0.000151773, 0.000151772, 
			0.000148351, 0.000163031, 0.000170636, 0.000174089, 0.000175494, 0.000175997, 0.000176154, 0.000176212, 0.000176229, 0.000176227, 0.000176228, 0.000176228, 0.000176228, 0.000176227, 0.000176227, 0.000176226
		)
}

CapTable	"metal3_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			9.44724e-05, 3.46346e-05, 1.40199e-05, 5.70546e-06, 2.25626e-06, 8.248e-07, 2.56626e-07, 5.28232e-08, 0, 0, 0, 0, 0, 0, 0, 0, 
			9.44386e-05, 3.46432e-05, 1.39741e-05, 5.63088e-06, 2.18496e-06, 7.84544e-07, 2.45796e-07, 5.04966e-08, 0, 0, 0, 0, 0, 0, 0, 0, 
			9.31802e-05, 3.41672e-05, 1.37035e-05, 5.49254e-06, 2.12116e-06, 7.6734e-07, 2.51234e-07, 5.43744e-08, 0, 0, 0, 0, 0, 0, 0, 0, 
			9.21424e-05, 3.37482e-05, 1.35009e-05, 5.38456e-06, 2.08134e-06, 7.72118e-07, 2.68124e-07, 6.00258e-08, 0, 0, 0, 0, 0, 0, 0, 0, 
			8.98584e-05, 3.30036e-05, 1.32381e-05, 5.2739e-06, 2.06392e-06, 8.11894e-07, 3.13114e-07, 8.10382e-08, 0, 0, 0, 0, 0, 0, 0, 0
		)
}

CapTable	"metal3_C_BOTTOM_GP_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			7.29299e-05, 9.29894e-05, 0.000105719, 0.000114007, 0.000119603, 0.000123514, 0.000126332, 0.000128413, 0.000129982, 0.000131182, 0.000132113, 0.000132841, 0.000133417, 0.000133875, 0.000134242, 0.000134538, 
			0.000106163, 0.000126223, 0.00013947, 0.000148419, 0.000154657, 0.000159139, 0.000162441, 0.000164925, 0.000166824, 0.000168295, 0.000169447, 0.000170354, 0.000171076, 0.000171653, 0.000172117, 0.000172494, 
			0.000139327, 0.000159364, 0.000172927, 0.000182289, 0.00018895, 0.000193812, 0.000197441, 0.000200199, 0.000202326, 0.000203983, 0.000205287, 0.000206321, 0.000207145, 0.000207807, 0.000208341, 0.000208775, 
			0.000172761, 0.00019284, 0.000206638, 0.000216303, 0.000223255, 0.000228381, 0.000232237, 0.000235188, 0.000237472, 0.000239261, 0.000240673, 0.000241795, 0.000242692, 0.000243416, 0.000244001, 0.000244478, 
			0.000205864, 0.000225791, 0.000239689, 0.000249531, 0.000256669, 0.000261961, 0.000265961, 0.00026904, 0.000271434, 0.000273315, 0.000274803, 0.00027599, 0.000276945, 0.000277715, 0.000278342, 0.000278856
		)
}

CapTable	"metal3_C_LATERAL_12MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.4, 0.8, 1.2, 1.6, 2)
		wireSpacing		= (0.4, 0.8, 1.2, 1.6, 2, 2.4, 2.8, 3.2, 3.6, 4, 4.4, 4.8, 5.2, 5.6, 6, 6.4)
		capValue			= (
			0.000115478, 5.87826e-05, 3.68242e-05, 2.52288e-05, 1.82152e-05, 1.36198e-05, 1.04429e-05, 8.16102e-06, 6.47528e-06, 5.2034e-06, 4.22816e-06, 3.47076e-06, 2.87634e-06, 2.40562e-06, 2.02982e-06, 1.7275e-06, 
			0.000124326, 6.59584e-05, 4.25902e-05, 2.98536e-05, 2.19266e-05, 1.66026e-05, 1.28456e-05, 1.01015e-05, 8.04694e-06, 6.48016e-06, 5.26844e-06, 4.32086e-06, 3.57306e-06, 2.97822e-06, 2.5016e-06, 2.11706e-06, 
			0.000129494, 7.06696e-05, 4.652e-05, 3.30898e-05, 2.45672e-05, 1.8755e-05, 1.46027e-05, 1.15406e-05, 9.23054e-06, 7.4585e-06, 6.08156e-06, 5.00062e-06, 4.1447e-06, 3.4618e-06, 2.91306e-06, 2.46906e-06, 
			0.000133183, 7.40794e-05, 4.93974e-05, 3.54636e-05, 2.6528e-05, 2.0375e-05, 1.59458e-05, 1.26603e-05, 1.01707e-05, 8.25392e-06, 6.76008e-06, 5.58422e-06, 4.65074e-06, 3.90394e-06, 3.3021e-06, 2.81356e-06, 
			0.000134508, 7.62226e-05, 5.14134e-05, 3.7219e-05, 2.80304e-05, 2.16644e-05, 1.70617e-05, 1.36259e-05, 1.10135e-05, 8.99648e-06, 7.42006e-06, 6.1756e-06, 5.18452e-06, 4.38882e-06, 3.74494e-06, 3.21982e-06
		)
}

CapTable	"metal4_C_BOTTOM_GP_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.7796e-05, 2.21432e-05, 2.60102e-05, 2.96364e-05, 3.3084e-05, 3.6359e-05, 3.94497e-05, 4.23458e-05, 4.50409e-05, 4.75333e-05, 4.98262e-05, 5.19258e-05, 5.38409e-05, 5.55818e-05, 5.71601e-05, 5.85875e-05, 
			2.0988e-05, 2.53976e-05, 2.95448e-05, 3.34838e-05, 3.72264e-05, 4.07648e-05, 4.40884e-05, 4.71916e-05, 5.00718e-05, 5.27309e-05, 5.51748e-05, 5.74116e-05, 5.94519e-05, 6.13072e-05, 6.29902e-05, 6.45135e-05, 
			2.4681e-05, 2.92512e-05, 3.35986e-05, 3.77296e-05, 4.16422e-05, 4.53298e-05, 4.87842e-05, 5.20026e-05, 5.49863e-05, 5.77389e-05, 6.02679e-05, 6.25826e-05, 6.46944e-05, 6.66159e-05, 6.83597e-05, 6.99393e-05, 
			2.8817e-05, 3.35048e-05, 3.79768e-05, 4.22204e-05, 4.62298e-05, 5.00016e-05, 5.35298e-05, 5.68158e-05, 5.9859e-05, 6.26666e-05, 6.5246e-05, 6.76078e-05, 6.97636e-05, 7.17262e-05, 7.35086e-05, 7.51244e-05, 
			3.324e-05, 3.80166e-05, 4.25616e-05, 4.68704e-05, 5.09376e-05, 5.47594e-05, 5.83332e-05, 6.1659e-05, 6.47402e-05, 6.7583e-05, 7.0196e-05, 7.25886e-05, 7.4775e-05, 7.67654e-05, 7.85749e-05, 8.02164e-05
		)
}

CapTable	"metal4_C_LATERAL_51MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.00023335, 0.000138381, 0.000101657, 8.06256e-05, 6.64082e-05, 5.59182e-05, 4.77646e-05, 4.12096e-05, 3.58162e-05, 3.13048e-05, 2.74846e-05, 2.42196e-05, 2.1409e-05, 1.89761e-05, 1.68604e-05, 1.50137e-05, 
			0.000250624, 0.000150396, 0.000110536, 8.75092e-05, 7.19356e-05, 6.04802e-05, 5.16102e-05, 4.45048e-05, 3.86764e-05, 3.38126e-05, 2.97012e-05, 2.61918e-05, 2.31732e-05, 2.05612e-05, 1.82898e-05, 1.6307e-05, 
			0.000259568, 0.000156908, 0.000115457, 9.13954e-05, 7.51068e-05, 6.31372e-05, 5.38818e-05, 4.64778e-05, 4.0411e-05, 3.53524e-05, 3.10784e-05, 2.74312e-05, 2.42942e-05, 2.1579e-05, 1.92174e-05, 1.71547e-05, 
			0.00026416, 0.000160581, 0.000118352, 9.37416e-05, 7.70762e-05, 6.48274e-05, 5.53552e-05, 4.77802e-05, 4.1575e-05, 3.64012e-05, 3.20302e-05, 2.82992e-05, 2.5089e-05, 2.23094e-05, 1.98904e-05, 1.77762e-05, 
			0.000267022, 0.000162917, 0.000120264, 9.53416e-05, 7.84424e-05, 6.60206e-05, 5.64148e-05, 4.8732e-05, 4.24378e-05, 3.7189e-05, 3.2753e-05, 2.89654e-05, 2.5705e-05, 2.28806e-05, 2.0421e-05, 1.82701e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			1.9886e-05, 2.50584e-05, 2.97002e-05, 3.40352e-05, 3.81134e-05, 4.19309e-05, 4.54746e-05, 4.87374e-05, 5.17192e-05, 5.44268e-05, 5.68722e-05, 5.90709e-05, 6.10407e-05, 6.27997e-05, 6.43668e-05, 6.57601e-05, 
			2.4013e-05, 2.93374e-05, 3.43298e-05, 3.90268e-05, 4.343e-05, 4.75298e-05, 5.13197e-05, 5.47992e-05, 5.79734e-05, 6.0854e-05, 6.34555e-05, 6.5796e-05, 6.78943e-05, 6.97704e-05, 7.1444e-05, 7.29344e-05, 
			2.8748e-05, 3.4281e-05, 3.95006e-05, 4.44018e-05, 4.89796e-05, 5.32296e-05, 5.71496e-05, 6.0744e-05, 6.40218e-05, 6.69959e-05, 6.96833e-05, 7.21026e-05, 7.42736e-05, 7.62167e-05, 7.79522e-05, 7.94994e-05, 
			3.3982e-05, 3.96448e-05, 4.49902e-05, 5e-05, 5.46692e-05, 5.89974e-05, 6.29866e-05, 6.66446e-05, 6.99804e-05, 7.30092e-05, 7.57472e-05, 7.82144e-05, 8.04296e-05, 8.24147e-05, 8.41906e-05, 8.5775e-05, 
			3.9516e-05, 4.52652e-05, 5.06766e-05, 5.5742e-05, 6.04616e-05, 6.48334e-05, 6.88636e-05, 7.25594e-05, 7.59326e-05, 7.89952e-05, 8.17676e-05, 8.42668e-05, 8.65132e-05, 8.85284e-05, 9.03313e-05, 9.19423e-05
		)
}

CapTable	"metal4_C_LATERAL_41MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000231752, 0.000136308, 9.92018e-05, 7.78778e-05, 6.34526e-05, 5.28314e-05, 4.46126e-05, 3.80466e-05, 3.26862e-05, 2.82418e-05, 2.45148e-05, 2.13622e-05, 1.86775e-05, 1.63793e-05, 1.44034e-05, 1.26985e-05, 
			0.00024845, 0.00014778, 0.000107583, 8.43182e-05, 6.8592e-05, 5.70562e-05, 4.81644e-05, 4.10838e-05, 3.53172e-05, 3.05434e-05, 2.65438e-05, 2.31616e-05, 2.02814e-05, 1.78146e-05, 1.56922e-05, 1.38592e-05, 
			0.000256856, 0.000153821, 0.000112104, 8.78702e-05, 7.14864e-05, 5.94834e-05, 5.02434e-05, 4.2893e-05, 3.69102e-05, 3.19588e-05, 2.78098e-05, 2.43002e-05, 2.13096e-05, 1.87464e-05, 1.65391e-05, 1.46309e-05, 
			0.000260996, 0.000157123, 0.000114702, 8.9981e-05, 7.32698e-05, 6.10256e-05, 5.15974e-05, 4.40974e-05, 3.79916e-05, 3.29368e-05, 2.86988e-05, 2.51116e-05, 2.20524e-05, 1.94283e-05, 1.71664e-05, 1.5209e-05, 
			0.000263496, 0.00015918, 0.000116399, 9.1417e-05, 7.45104e-05, 6.21216e-05, 5.25804e-05, 4.49876e-05, 3.88034e-05, 3.36808e-05, 2.93834e-05, 2.57432e-05, 2.26368e-05, 1.99696e-05, 1.76687e-05, 1.56757e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			2.248e-05, 2.86998e-05, 3.4298e-05, 3.94828e-05, 4.42968e-05, 4.87332e-05, 5.27799e-05, 5.64358e-05, 5.97107e-05, 6.26231e-05, 6.51973e-05, 6.74613e-05, 6.94446e-05, 7.11767e-05, 7.26856e-05, 7.39981e-05, 
			2.7884e-05, 3.43574e-05, 4.03792e-05, 4.59698e-05, 5.1131e-05, 5.58578e-05, 6.01506e-05, 6.40208e-05, 6.74847e-05, 7.05667e-05, 7.32952e-05, 7.57004e-05, 7.78132e-05, 7.9664e-05, 8.12819e-05, 8.26941e-05, 
			3.4013e-05, 4.07378e-05, 4.70036e-05, 5.2802e-05, 5.81326e-05, 6.30006e-05, 6.74152e-05, 7.13928e-05, 7.4954e-05, 7.81268e-05, 8.09392e-05, 8.34238e-05, 8.56104e-05, 8.75308e-05, 8.92129e-05, 9.06853e-05, 
			4.0685e-05, 4.7541e-05, 5.39238e-05, 5.9816e-05, 6.52232e-05, 7.0157e-05, 7.46324e-05, 7.8666e-05, 8.22818e-05, 8.55072e-05, 8.83714e-05, 9.09054e-05, 9.31405e-05, 9.51063e-05, 9.68324e-05, 9.83469e-05, 
			4.765e-05, 5.45816e-05, 6.10156e-05, 6.6952e-05, 7.24e-05, 7.73706e-05, 8.18826e-05, 8.59522e-05, 8.96042e-05, 9.28654e-05, 9.57646e-05, 9.83336e-05, 0.000100604, 0.000102602, 0.000104361, 0.000105904
		)
}

CapTable	"metal4_C_LATERAL_31MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000229776, 0.00013378, 9.626e-05, 7.46292e-05, 5.99912e-05, 4.9241e-05, 4.09658e-05, 3.44052e-05, 2.91002e-05, 2.4751e-05, 2.11496e-05, 1.81453e-05, 1.56245e-05, 1.34997e-05, 1.1702e-05, 1.0176e-05, 
			0.000245752, 0.000144609, 0.000104073, 8.05782e-05, 6.4715e-05, 5.31192e-05, 4.42304e-05, 3.72042e-05, 3.1532e-05, 2.68842e-05, 2.30336e-05, 1.98172e-05, 1.71136e-05, 1.48295e-05, 1.2892e-05, 1.12426e-05, 
			0.00025354, 0.000150131, 0.000108167, 8.3786e-05, 6.73354e-05, 5.53294e-05, 4.61378e-05, 3.88762e-05, 3.3014e-05, 2.82072e-05, 2.42208e-05, 2.08862e-05, 1.80786e-05, 1.57022e-05, 1.36821e-05, 1.19587e-05, 
			0.000257204, 0.000153061, 0.000110479, 8.5683e-05, 6.89618e-05, 5.6758e-05, 4.74096e-05, 4.0021e-05, 3.40512e-05, 2.91508e-05, 2.50816e-05, 2.16726e-05, 1.87975e-05, 1.63597e-05, 1.42836e-05, 1.25091e-05, 
			0.000259346, 0.000154853, 0.000111983, 8.6979e-05, 7.0101e-05, 5.77804e-05, 4.83384e-05, 4.08698e-05, 3.48298e-05, 2.98666e-05, 2.57404e-05, 2.22794e-05, 1.93565e-05, 1.68749e-05, 1.47584e-05, 1.29467e-05
		)
}

CapTable	"metal4_C_BOTTOM_GP_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			3.0776e-05, 4.03672e-05, 4.86812e-05, 5.59332e-05, 6.22516e-05, 6.77366e-05, 7.24732e-05, 7.65428e-05, 8.0022e-05, 8.29863e-05, 8.55031e-05, 8.76346e-05, 8.94377e-05, 9.09622e-05, 9.22486e-05, 9.33363e-05, 
			4.0586e-05, 5.05382e-05, 5.9298e-05, 6.69552e-05, 7.36242e-05, 7.94112e-05, 8.44128e-05, 8.87168e-05, 9.24066e-05, 9.55612e-05, 9.82491e-05, 0.000100537, 0.000102481, 0.000104131, 0.000105533, 0.000106723, 
			5.1212e-05, 6.13648e-05, 7.03114e-05, 7.81346e-05, 8.49548e-05, 9.08806e-05, 9.60112e-05, 0.000100438, 0.000104244, 0.000107506, 0.000110297, 0.000112681, 0.000114713, 0.000116446, 0.000117924, 0.000119183, 
			6.2311e-05, 7.2508e-05, 8.1508e-05, 8.93924e-05, 9.62754e-05, 0.000102268, 0.000107471, 0.000111971, 0.000115851, 0.000119186, 0.000122048, 0.0001245, 0.000126598, 0.000128392, 0.000129927, 0.000131241, 
			7.3614e-05, 8.38152e-05, 9.28238e-05, 0.000100733, 0.000107656, 0.000113695, 0.000118949, 0.000123504, 0.000127441, 0.000130834, 0.000133753, 0.000136259, 0.000138409, 0.000140253, 0.000141835, 0.000143192
		)
}

CapTable	"metal4_C_LATERAL_21MAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.000223944, 0.000126609, 8.84418e-05, 6.66368e-05, 5.21244e-05, 4.16804e-05, 3.38148e-05, 2.77182e-05, 2.29e-05, 1.90397e-05, 1.59159e-05, 1.33684e-05, 1.12783e-05, 9.55482e-06, 8.12742e-06, 6.94066e-06, 
			0.00023798, 0.000136035, 9.5257e-05, 7.18678e-05, 5.63138e-05, 4.51418e-05, 3.67372e-05, 3.02222e-05, 2.50674e-05, 2.09288e-05, 1.75699e-05, 1.48213e-05, 1.25573e-05, 1.06823e-05, 9.12216e-06, 7.81878e-06, 
			0.00024452, 0.000140772, 9.88676e-05, 7.47794e-05, 5.87502e-05, 4.72324e-05, 3.85598e-05, 3.18264e-05, 2.64874e-05, 2.219e-05, 1.8692e-05, 1.58205e-05, 1.34471e-05, 1.14745e-05, 9.82718e-06, 8.44568e-06, 
			0.00024751, 0.000143346, 0.000101016, 7.66206e-05, 6.03786e-05, 4.86896e-05, 3.9868e-05, 3.30048e-05, 2.755e-05, 2.31478e-05, 1.95545e-05, 1.6596e-05, 1.41432e-05, 1.20982e-05, 1.03849e-05, 8.94342e-06, 
			0.00024939, 0.000145073, 0.000102561, 7.80092e-05, 6.16294e-05, 4.9825e-05, 4.0901e-05, 3.39434e-05, 2.84014e-05, 2.39184e-05, 2.02504e-05, 1.72229e-05, 1.47068e-05, 1.26037e-05, 1.08373e-05, 9.34746e-06
		)
}

CapTable	"metal4_C_BOTTOM_GPMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			6.0919e-05, 7.99198e-05, 9.38718e-05, 0.000104396, 0.000112557, 0.000118989, 0.000124088, 0.000128133, 0.000131333, 0.000133853, 0.000135828, 0.000137369, 0.000138564, 0.000139488, 0.000140197, 0.000140739, 
			8.7569e-05, 0.000106634, 0.000120924, 0.000131872, 0.00014045, 0.000147255, 0.000152679, 0.000157001, 0.000160436, 0.000163156, 0.000165303, 0.00016699, 0.000168311, 0.000169344, 0.000170147, 0.000170773, 
			0.000114726, 0.00013379, 0.000148227, 0.000159371, 0.000168149, 0.000175141, 0.000180732, 0.000185203, 0.000188771, 0.00019161, 0.000193861, 0.000195642, 0.000197047, 0.000198154, 0.000199027, 0.000199713, 
			0.000142186, 0.000161171, 0.000175646, 0.000186874, 0.000195741, 0.000202823, 0.000208507, 0.000213067, 0.000216719, 0.000219637, 0.000221964, 0.000223816, 0.000225287, 0.000226455, 0.000227384, 0.000228124, 
			0.000169849, 0.000188799, 0.000203279, 0.000214549, 0.000223476, 0.000230618, 0.000236361, 0.000240981, 0.000244693, 0.000247669, 0.000250051, 0.000251955, 0.000253476, 0.000254693, 0.000255666, 0.000256447
		)
}

CapTable	"metal4_C_LATERALMAX" {
		wireWidthSize		= 5
		wireSpacingSize	= 16
		wireWidth			= (0.44, 0.88, 1.32, 1.76, 2.2)
		wireSpacing		= (0.46, 0.92, 1.38, 1.84, 2.3, 2.76, 3.22, 3.68, 4.14, 4.6, 5.06, 5.52, 5.98, 6.44, 6.9, 7.36)
		capValue			= (
			0.00020751, 0.000109049, 7.14052e-05, 5.07188e-05, 3.74836e-05, 2.83156e-05, 2.16756e-05, 1.67415e-05, 1.30202e-05, 1.01903e-05, 8.0289e-06, 6.3754e-06, 5.11056e-06, 4.14436e-06, 3.40794e-06, 2.8483e-06, 
			0.000218364, 0.000116747, 7.71548e-05, 5.5192e-05, 4.10602e-05, 3.1239e-05, 2.41062e-05, 1.87902e-05, 1.47668e-05, 1.16935e-05, 9.33312e-06, 7.5148e-06, 6.11178e-06, 5.0284e-06, 4.19166e-06, 3.54524e-06, 
			0.000223732, 0.000120914, 8.04348e-05, 5.78688e-05, 4.32982e-05, 3.31462e-05, 2.5755e-05, 2.02308e-05, 1.6036e-05, 1.28188e-05, 1.03359e-05, 8.412e-06, 6.91694e-06, 5.75268e-06, 4.84424e-06, 4.13394e-06, 
			0.000226386, 0.000123373, 8.25404e-05, 5.96828e-05, 4.49058e-05, 3.45856e-05, 2.7047e-05, 2.13968e-05, 1.70916e-05, 1.37765e-05, 1.12058e-05, 9.2024e-06, 7.63506e-06, 6.4048e-06, 5.43602e-06, 4.67046e-06, 
			0.000228192, 0.000125071, 8.40746e-05, 6.10628e-05, 4.61468e-05, 3.57152e-05, 2.8082e-05, 2.23466e-05, 1.7964e-05, 1.4578e-05, 1.19422e-05, 9.87896e-06, 8.2565e-06, 6.97548e-06, 5.9599e-06, 5.15126e-06
		)
}

CapModel	"polyConfig1" {
		refLayer				= "CP"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GPMIN"
		topCapDataNom			= "poly_C_TOP_GPNOM"
		topCapDataMax			= "poly_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERALMIN"
		lateralCapDataNom		= "poly_C_LATERALNOM"
		lateralCapDataMax		= "poly_C_LATERALMAX"
}

CapModel	"polyConfig2" {
		refLayer				= "CP"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_12MIN"
		topCapDataNom			= "poly_C_TOP_GP_12NOM"
		topCapDataMax			= "poly_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_12MIN"
		lateralCapDataNom		= "poly_C_LATERAL_12NOM"
		lateralCapDataMax		= "poly_C_LATERAL_12MAX"
}

CapModel	"polyConfig3" {
		refLayer				= "CP"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_13MIN"
		topCapDataNom			= "poly_C_TOP_GP_13NOM"
		topCapDataMax			= "poly_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_13MIN"
		lateralCapDataNom		= "poly_C_LATERAL_13NOM"
		lateralCapDataMax		= "poly_C_LATERAL_13MAX"
}

CapModel	"polyConfig4" {
		refLayer				= "CP"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= "poly_C_TOP_GP_14MIN"
		topCapDataNom			= "poly_C_TOP_GP_14NOM"
		topCapDataMax			= "poly_C_TOP_GP_14MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_14MIN"
		lateralCapDataNom		= "poly_C_LATERAL_14NOM"
		lateralCapDataMax		= "poly_C_LATERAL_14MAX"
}

CapModel	"polyConfig5" {
		refLayer				= "CP"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "poly_C_BOTTOM_GP_15MIN"
		bottomCapDataNom		= "poly_C_BOTTOM_GP_15NOM"
		bottomCapDataMax		= "poly_C_BOTTOM_GP_15MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "poly_C_LATERAL_15MIN"
		lateralCapDataNom		= "poly_C_LATERAL_15NOM"
		lateralCapDataMax		= "poly_C_LATERAL_15MAX"
}

CapModel	"metal1Config1" {
		refLayer				= "METAL"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GPMIN"
		topCapDataNom			= "metal1_C_TOP_GPNOM"
		topCapDataMax			= "metal1_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERALMIN"
		lateralCapDataNom		= "metal1_C_LATERALNOM"
		lateralCapDataMax		= "metal1_C_LATERALMAX"
}

CapModel	"metal1Config2" {
		refLayer				= "METAL"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_12MIN"
		topCapDataNom			= "metal1_C_TOP_GP_12NOM"
		topCapDataMax			= "metal1_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_12MAX"
}

CapModel	"metal1Config3" {
		refLayer				= "METAL"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_13MIN"
		topCapDataNom			= "metal1_C_TOP_GP_13NOM"
		topCapDataMax			= "metal1_C_TOP_GP_13MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_13MAX"
}

CapModel	"metal1Config4" {
		refLayer				= "METAL"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_14MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_14NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_14MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_14MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_14NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_14MAX"
}

CapModel	"metal1Config6" {
		refLayer				= "METAL"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL2"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_21MIN"
		topCapDataNom			= "metal1_C_TOP_GP_21NOM"
		topCapDataMax			= "metal1_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_21MAX"
}

CapModel	"metal1Config7" {
		refLayer				= "METAL"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_22MIN"
		topCapDataNom			= "metal1_C_TOP_GP_22NOM"
		topCapDataMax			= "metal1_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_22MAX"
}

CapModel	"metal1Config8" {
		refLayer				= "METAL"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal1_C_TOP_GP_23MIN"
		topCapDataNom			= "metal1_C_TOP_GP_23NOM"
		topCapDataMax			= "metal1_C_TOP_GP_23MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_23MAX"
}

CapModel	"metal1Config9" {
		refLayer				= "METAL"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal1_C_BOTTOM_GP_24MIN"
		bottomCapDataNom		= "metal1_C_BOTTOM_GP_24NOM"
		bottomCapDataMax		= "metal1_C_BOTTOM_GP_24MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal1_C_LATERAL_24MIN"
		lateralCapDataNom		= "metal1_C_LATERAL_24NOM"
		lateralCapDataMax		= "metal1_C_LATERAL_24MAX"
}

CapModel	"metal2Config1" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GPMIN"
		topCapDataNom			= "metal2_C_TOP_GPNOM"
		topCapDataMax			= "metal2_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERALMIN"
		lateralCapDataNom		= "metal2_C_LATERALNOM"
		lateralCapDataMax		= "metal2_C_LATERALMAX"
}

CapModel	"metal2Config2" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_12MIN"
		topCapDataNom			= "metal2_C_TOP_GP_12NOM"
		topCapDataMax			= "metal2_C_TOP_GP_12MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_12MAX"
}

CapModel	"metal2Config3" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_13MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_13NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_13MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_13MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_13NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_13MAX"
}

CapModel	"metal2Config6" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_21MIN"
		topCapDataNom			= "metal2_C_TOP_GP_21NOM"
		topCapDataMax			= "metal2_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_21MAX"
}

CapModel	"metal2Config7" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_22MIN"
		topCapDataNom			= "metal2_C_TOP_GP_22NOM"
		topCapDataMax			= "metal2_C_TOP_GP_22MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_22MAX"
}

CapModel	"metal2Config8" {
		refLayer				= "METAL2"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_23MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_23NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_23MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_23MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_23NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_23MAX"
}

CapModel	"metal2Config11" {
		refLayer				= "METAL2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL3"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_31MIN"
		topCapDataNom			= "metal2_C_TOP_GP_31NOM"
		topCapDataMax			= "metal2_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_31MAX"
}

CapModel	"metal2Config12" {
		refLayer				= "METAL2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal2_C_TOP_GP_32MIN"
		topCapDataNom			= "metal2_C_TOP_GP_32NOM"
		topCapDataMax			= "metal2_C_TOP_GP_32MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_32MAX"
}

CapModel	"metal2Config13" {
		refLayer				= "METAL2"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal2_C_BOTTOM_GP_33MIN"
		bottomCapDataNom		= "metal2_C_BOTTOM_GP_33NOM"
		bottomCapDataMax		= "metal2_C_BOTTOM_GP_33MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal2_C_LATERAL_33MIN"
		lateralCapDataNom		= "metal2_C_LATERAL_33NOM"
		lateralCapDataMax		= "metal2_C_LATERAL_33MAX"
}

CapModel	"metal3Config1" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "METAL2"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GPMIN"
		topCapDataNom			= "metal3_C_TOP_GPNOM"
		topCapDataMax			= "metal3_C_TOP_GPMAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERALMIN"
		lateralCapDataNom		= "metal3_C_LATERALNOM"
		lateralCapDataMax		= "metal3_C_LATERALMAX"
}

CapModel	"metal3Config2" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "METAL2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_12MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_12NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_12MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_12MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_12NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_12MAX"
}

CapModel	"metal3Config6" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_21MIN"
		topCapDataNom			= "metal3_C_TOP_GP_21NOM"
		topCapDataMax			= "metal3_C_TOP_GP_21MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_21MAX"
}

CapModel	"metal3Config7" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_22MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_22NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_22MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_22MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_22NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_22MAX"
}

CapModel	"metal3Config11" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_31MIN"
		topCapDataNom			= "metal3_C_TOP_GP_31NOM"
		topCapDataMax			= "metal3_C_TOP_GP_31MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_31MAX"
}

CapModel	"metal3Config12" {
		refLayer				= "METAL3"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_32MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_32NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_32MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_32MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_32NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_32MAX"
}

CapModel	"metal3Config16" {
		refLayer				= "METAL3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= "METAL4"
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= "metal3_C_TOP_GP_41MIN"
		topCapDataNom			= "metal3_C_TOP_GP_41NOM"
		topCapDataMax			= "metal3_C_TOP_GP_41MAX"
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_41MAX"
}

CapModel	"metal3Config17" {
		refLayer				= "METAL3"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal3_C_BOTTOM_GP_42MIN"
		bottomCapDataNom		= "metal3_C_BOTTOM_GP_42NOM"
		bottomCapDataMax		= "metal3_C_BOTTOM_GP_42MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal3_C_LATERAL_42MIN"
		lateralCapDataNom		= "metal3_C_LATERAL_42NOM"
		lateralCapDataMax		= "metal3_C_LATERAL_42MAX"
}

CapModel	"metal4Config1" {
		refLayer				= "METAL4"
		groundPlaneBelow		= "METAL3"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GPMIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GPNOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GPMAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERALMIN"
		lateralCapDataNom		= "metal4_C_LATERALNOM"
		lateralCapDataMax		= "metal4_C_LATERALMAX"
}

CapModel	"metal4Config6" {
		refLayer				= "METAL4"
		groundPlaneBelow		= "METAL2"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_21MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_21NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_21MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_21MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_21NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_21MAX"
}

CapModel	"metal4Config11" {
		refLayer				= "METAL4"
		groundPlaneBelow		= "METAL"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_31MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_31NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_31MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_31MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_31NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_31MAX"
}

CapModel	"metal4Config16" {
		refLayer				= "METAL4"
		groundPlaneBelow		= "CP"
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_41MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_41NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_41MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_41MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_41NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_41MAX"
}

CapModel	"metal4Config21" {
		refLayer				= "METAL4"
		groundPlaneBelow		= ""
		groundPlaneAbove		= ""
		bottomCapType			= "Table"
		bottomCapDataMin		= "metal4_C_BOTTOM_GP_51MIN"
		bottomCapDataNom		= "metal4_C_BOTTOM_GP_51NOM"
		bottomCapDataMax		= "metal4_C_BOTTOM_GP_51MAX"
		topCapType			= "Table"
		topCapDataMin			= ""
		topCapDataNom			= ""
		topCapDataMax			= ""
		lateralCapType			= "Table"
		lateralCapDataMin		= "metal4_C_LATERAL_51MIN"
		lateralCapDataNom		= "metal4_C_LATERAL_51NOM"
		lateralCapDataMax		= "metal4_C_LATERAL_51MAX"
}
