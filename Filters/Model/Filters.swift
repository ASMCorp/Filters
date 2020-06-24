//
//  Filters.swift
//  Filters
//
//  Created by Asaduzzaman Anik on 6/24/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

import Foundation

struct Filters {
    private let filters = ["CIBoxBlur",
    "CIDiscBlur",
    "CIGaussianBlur",
    "CIMaskedVariableBlur",
    "CIMedianFilter",
    "CIMotionBlur",
    "CINoiseReduction",
    "CIColorClamp",
    "CIColorControls",
    "CIColorMatrix",
    "CIColorPolynomial",
    "CIExposureAdjust",
    "CIGammaAdjust",
    "CIHueAdjust",
    "CILinearToSRGBToneCurve",
    "CISRGBToneCurveToLinear",
    "CITemperatureAndTint",
    "CIToneCurve",
    "CIVibrance",
    "CIWhitePointAdjust",
    "CIColorCrossPolynomial",
    "CIColorCube",
    "CIColorCubeWithColorSpace",
    "CIColorInvert",
    "CIColorMap",
    "CIColorMonochrome",
    "CIColorPosterize",
    "CIFalseColor",
    "CIMaskToAlpha",
    "CIMaximumComponent",
    "CIMinimumComponent",
    "CIPhotoEffectChrome",
    "CIPhotoEffectFade",
    "CIPhotoEffectInstant",
    "CIPhotoEffectMono",
    "CIPhotoEffectNoir",
    "CIPhotoEffectProcess",
    "CIPhotoEffectTonal",
    "CIPhotoEffectTransfer",
    "CISepiaTone",
    "CIVignette",
    "CIVignetteEffect",
    "CIAdditionCompositing",
    "CIColorBlendMode",
    "CIColorBurnBlendMode",
    "CIColorDodgeBlendMode",
    "CIDarkenBlendMode",
    "CIDifferenceBlendMode",
    "CIDivideBlendMode",
    "CIExclusionBlendMode",
    "CIHardLightBlendMode",
    "CIHueBlendMode",
    "CILightenBlendMode",
    "CILinearBurnBlendMode",
    "CILinearDodgeBlendMode",
    "CILuminosityBlendMode",
    "CIMaximumCompositing",
    "CIMinimumCompositing",
    "CIMultiplyBlendMode",
    "CIMultiplyCompositing",
    "CIOverlayBlendMode",
    "CIPinLightBlendMode",
    "CISaturationBlendMode",
    "CIScreenBlendMode",
    "CISoftLightBlendMode",
    "CISourceAtopCompositing",
    "CISourceInCompositing",
    "CISourceOutCompositing",
    "CISourceOverCompositing",
    "CISubtractBlendMode"]
    
    func getFilterName(index: Int) -> String {
        return filters[index]
    }
    
    func getFilterCount() -> Int {
        return filters.count
    }
    
}
