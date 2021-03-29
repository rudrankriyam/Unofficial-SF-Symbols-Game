//
//  SFSymbolsFinder.swift
//
//
//  Created by Santoso, Michael Abadi on 30/12/2563 BE.
//

import SwiftUI

// MARK: - SFFinderConvertable

/// SFFinderConvertable: describe the theme provider capabilities
/// - image: return a SwiftUI Image
/// - systemName: return a system name of sf symbols as a String
public protocol SFFinderConvertable {
    var image: Image { get }
    var systemName: String { get }
}

public extension SFFinderConvertable {
    var image: Image {
        return Image(systemName: systemName)
    }

    var systemName: String {
        if let sfValidator = self as? SFSymbolsHasValidator {
            return sfValidator.validator.validateSystemName(for: self)
        } else {
            return ""
        }
    }
}

protocol SFSymbolsEnum: SFSymbolsHasValidator {
    var enumRawValue: String { get }
}

protocol SFSymbolsHasValidator {
    var validator: SFSymbolsValidation { get }
}

extension SFSymbolsHasValidator {
    var validator: SFSymbolsValidation {
        return SFSymbolsValidator()
    }
}

// MARK: - General

/// General category for sf symbols, not included in any category
public enum General: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case lineHorizontal3
    case lineHorizontal3Decrease
    case lineHorizontal3DecreaseCircle
    case lineHorizontal3DecreaseCircleFill
    case squareGrid3x2
    case squareGrid3x2Fill
    case squareGrid2x2
    case squareGrid2x2Fill
    case squareGrid4x3Fill
    case squareLefthalfFill
    case squareRighthalfFill
    case dotSquare
    case dotSquareFill
    case squareSplit2x1
    case squareSplit2x1Fill
    case squareSplit1x2
    case squareSplit1x2Fill
    case squareSplit2x2
    case squareSplit2x2Fill
    case squaresBelowRectangle
    case squareOnSquare
    case squareFillOnSquareFill
    case plusSquareOnSquare
    case plusSquareFillOnSquareFill
    case squareOnCircle
    case squareFillOnCircleFill
    case squareStack
    case squareStackFill
    case squareAndLineVerticalAndSquare
    case squareFillAndLineVerticalSquareFill
    case squareFillAndLineVerticalAndSquare
    case squareAndLineVerticalAndSquareFill
    case squareStack3dDownRight
    case squareStack3dDownRightFill
    case squareStack3dUp
    case squareStack3dUpFill
    case squareStack3dUpSlash
    case squareStack3dUpSlashFill
    case xmark
    case xmarkCircle
    case xmarkCircleFill
    case xmarkSquare
    case xmarkSquareFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Communication

/// Communication category for sf symbols
public enum Communication: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case mic
    case micFill
    case micCircle
    case micCircleFill
    case micSlash
    case micSlashFill

    case message
    case messageFill
    case messageCircle
    case messageCircleFill

    case bubbleRight
    case bubbleRightFill
    case bubbleLeft
    case bubbleLeftFill

    case exclamationmarkBubble
    case exclamationmarkBubbleFill

    case quoteBubble
    case quoteBubbleFill

    case tBubble
    case tBubbleFill

    case textBubble
    case textBubbleFill

    case captionsBubble
    case captionsBubbleFill

    case plusBubble
    case plusBubbleFill

    case ellipsesBubble
    case ellipsesBubbleFill

    case bubbleLeftAndBubbleRight
    case bubbleLeftAndBubbleRightFill

    case phone
    case phoneFill
    case phoneCircle
    case phoneCircleFill
    case phoneBadgePlus
    case phoneFillBadgePlus
    case phoneArrowUpRight
    case phoneFillArrowUpRight
    case phoneArrowDownLeft
    case phoneFillArrowDownLeft
    case phoneArrowRight
    case phoneFillArrowRight
    case phoneDown
    case phoneDownFill
    case phoneDownCircle
    case phoneDownCircleFill

    case teletype
    case teletypeAnswer

    case video
    case videoFill
    case videoCircle
    case videoCircleFill
    case videoSlash
    case videoSlashFill
    case videoBadgePlus
    case videoBadgePlusFill

    case arrowUpRightVideo
    case arrowUpRightVideoFill
    case arrowDownLeftVideo
    case arrowDownLeftVideoFill

    case questionmarkVideo
    case questionmarkVideoFill

    case envelope
    case envelopeFill
    case envelopeCircle
    case envelopeCircleFill
    case envelopeOpen
    case envelopeOpenFill
    case envelopeBadge
    case envelopeBadegFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Weather

/// Weather category for sf symbols
public enum Weather: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case sunMin
    case sunMinFill
    case sunMax
    case sunMaxFill
    case sunrise
    case sunriseFill
    case sunset
    case sunsetFill
    case sunDust
    case sunDustFill
    case sunHazeFill

    case moon
    case moonFill
    case moonCircle
    case moonCircleFill
    case zzz
    case moonZzz
    case moonZzzFill
    case sparkles
    case moonStars
    case moonStarsFill

    case cloud
    case cloudFill
    case cloudDrizzle
    case cloudDrizzleFill
    case cloudRain
    case cloudRainFill
    case cloudHeavyrain
    case cloudHeavyrainFill
    case cloudFog
    case cloudFogFill
    case cloudHail
    case cloudHailFill
    case cloudSnow
    case cloudSnowfill
    case cloudSleet
    case cloudSleetFill
    case cloudBolt
    case cloudBoltFill
    case cloudSun
    case cloudSunFill
    case cloudSunRain
    case cloudSunRainFill
    case cloudSunBolt
    case cloudSunBoltFill
    case cloudMoon
    case cloudMoonFill
    case cloudMoonRain
    case cloudMoonRainFill
    case cloudBoltRain
    case cloudBoltRainFill
    case cloudMoonBolt
    case cloudMoonBoltFill

    case smoke
    case smokeFill
    case wind
    case snow
    case windSnow
    case tornado
    case tropicalstorm
    case huricane

    case thermometerSun
    case thermometerSnowflake
    case thermometer

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - ObjectAndTools

/// Object and tools category sf symbols
public enum ObjectAndTools: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case pencil
    case pencilCircle
    case pencilCircleFill
    case pencilSlash
    case squareAndPencil
    case pencilAndEllipsisRectangle
    case pencilAndOutline

    case trash
    case trashFill
    case trashCircle
    case trashCircleFill
    case trashSlash
    case trashSlashFill

    case folder
    case folderFill
    case folderCircle
    case folderCircleFill
    case folderBadgePlus
    case folderFillBadgePlus
    case folderBadgeMinus
    case folderFillBadgeMinus
    case folderBadgePersonCrop
    case folderFillBadgePersonCrop

    case paperplane
    case paperplaneFill

    case tray
    case trayFill
    case trayAndArrowUp
    case trayAndArrowUpFill
    case trayAndArrowDown
    case trayAndArrowDownFill
    case tray2
    case tray2Fill
    case trayFull
    case trayFullFill

    case archiveBox
    case archiveBoxFill
    case binXmark
    case binXmarkFill
    case arrowUpBin
    case arrowUpBinFill

    case calendar
    case calendarCircle
    case calendarCircleFill
    case calendarBadgePlus
    case calendarBadgeMinus

    case book
    case bookFill
    case bookCircle
    case bookCircleFill
    case bookmark
    case bookmarkFill

    case rosette
    case paperclip
    case paperclipCircle
    case paperclicCircleFill
    case rectangleAndPaperclip
    case link
    case linkCircle
    case linkCircleFill

    case pencilTip
    case pencilTipCropCircle
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus

    case umbrella
    case umbrellaFill

    case speaker
    case speakerFill
    case speakerSlash
    case speakerSlashFill
    case speakerZzz
    case speakerZzzFill
    case speaker1
    case speaker1Fill
    case speaker2
    case speaker2Fill
    case speaker3
    case speaker3Fill

    case magnifyingglass
    case magnifyingglassCircle
    case magnifyingglassCircleFill
    case plusMagnifyingglass
    case minusMagnifyingglass
    case oneMagnifyingglass

    case flag
    case flagFill
    case flagCircle
    case flagCircleFill
    case flagSlash
    case flagSlashFill

    case bell
    case bellFill
    case bellCircle
    case bellCircleFill
    case bellSlash
    case bellSlashFill

    case tag
    case tagFill
    case tagCircle
    case tagCircleFill

    case flashlightOffFill
    case flashlightOnFill

    case camera
    case cameraFill
    case cameraCircle
    case cameraCircleFill
    case cameraRotate
    case cameraRotateFill
    case cameraOnRectangle
    case cameraOnRectangleFill

    case gear
    case scissors
    case scissorsBadgeEllipsis
    case wandAndRays
    case wandAndRaysInverse
    case wandAndStars
    case wandAndStarsInverse
    case crop
    case cropRotate
    case dial
    case dialFill

    case gauge
    case gaugeBadgePlus
    case gaugeBadgeMinus
    case speedometer
    case metronome
    case tuningfork
    case paintbrush
    case paintbrushFill
    case bandage
    case bandageFill
    case wrench
    case wrenchFill
    case hammer
    case hammerFill
    case eyedropper
    case eyedropperHalffull
    case eyedropperFull
    case printer
    case printerFill
    case briefcase
    case briefcaseFill

    case lock
    case lockFill
    case lockCircle
    case lockCircleFill
    case lockSlash
    case lockSlashFill
    case lockOpen
    case lockOpenFill
    case lockRotation
    case lockRotationOpen

    case pin
    case pinFill
    case pinCircle
    case pinCircleFill
    case pinSlash
    case pinSlashFill

    case mappin
    case mappinCircle
    case mappinCircleFill
    case mappinSlash
    case mappinAndEllipse
    case map
    case mapFill

    case antennaRadiowavesLeftAndRight
    case guitars
    case bedDouble
    case bedDoubleFill
    case film
    case filmFill
    case cameraViewfinder
    case shield
    case shieldFill
    case shieldSlash
    case shieldSlashFill
    case lockShield
    case lockShieldFill
    case checkmarkShield
    case checkmarkShieldFill
    case xmarkShield
    case xmarkShieldFill
    case exclamationmarkShield
    case exclamationmarkShieldFill
    case shieldLefthalfFill
    case cubeBox
    case cubeBoxFill
    case clock
    case clockFill
    case alarm
    case alarmFill
    case stopwatch
    case stopwatchFill
    case timer
    case gamecontroller
    case gamecontrollerFill
    case headphones
    case gift
    case giftFill
    case hourglass
    case hourglassBottomhalfFill
    case hourglassTophalfFill
    case perspective
    case aspectratio
    case aspectrationFill
    case skew
    case eyeglasses

    case lightbulb
    case lightbulbFill
    case lightbulbSlash
    case lightbulbSlashFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Devices

/// Devices category for sf symbols
public enum Devices: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case keyboard
    case keyboardChevronCompactDown
    case hifispeaker
    case hifispeakerFill
    case printer
    case printerFill
    case tv
    case tvFill
    case tvCircle
    case tvCircleFill
    case tvMusicNote
    case tvMusicNoteFill
    case desktopComputer
    case gameController
    case gameControllerFill
    case headphones

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Connectivity

/// Connectivity category for sf symbols
public enum Connectivity: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case wifi
    case wifiSlash
    case wifiExclamationmark
    case dotRadiowavesLeftAndRight
    case dotRadiowavesRight
    case radiowavesLeft
    case radiowavesRight
    case antennaRadiowavesLeftAndRight

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Transportation

/// Transportation category for sf symbols
public enum Transportation: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case car
    case carFill
    case tramFill
    case airplane

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Human

/// Human category for sf symbol
public enum Human: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case person
    case personFill
    case personCircle
    case personCircleFill
    case personBadgePlus
    case personBadgePlusFill
    case personBadgeMinus
    case personBadgeMinusFill
    case person2
    case person2Fill
    case person3
    case person3Fill
    case personCropCircle
    case personCropCircleFill
    case personCropCircleBadgePlus
    case personCropCircleFillBadgePlus
    case personCropCircleBadgeMinus
    case personCropCircleFillBadgeMinus
    case personCropCircleBadgeCheckmark
    case personCropCircleFillBadgeCheckmark
    case personCropCircleBadgeXmark
    case personCropCircleFillBadgeXmark
    case personCropCircleBadgeExclam
    case personCropCircleFillBadgeExclam
    case personCropSquare
    case personCropSquareFill
    case eye
    case eyeFill
    case eyeSlash
    case eyeSlashFill
    case rectangleStackPersonCrop
    case rectangleStackPersonCropFill
    case person2SquareStack
    case person2SquareStackFill
    case ear
    case handRaised
    case handRaisedFill
    case handRaisedSlash
    case handRaisedSlashFill
    case handThumbsup
    case handThumbsupFill
    case handThumbsdown
    case handThumbsdownFill
    case handDraw
    case handDrawFill
    case handPointLeft
    case handPointLeftFill
    case handPointRight
    case handPointRightFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Nature

/// Nature category for sf symbols
public enum Nature: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case flame
    case flameFill
    case bolt
    case boltFill
    case boltCircle
    case boltCircleFill
    case boltSlash
    case boltSlashFill
    case ant
    case antFill
    case antCircle
    case antCircleFill
    case hare
    case hareFill
    case tortoise
    case tortoiseFill
    case leafArrowCirclepath

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Editing

/// Editing category for editing sf symbols
public enum Editing: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case pencil
    case pencilCircle
    case pencilCircleFill
    case pencilSlash
    case squareAndPencil
    case pencilAndOutline
    case pencilTip
    case pencilTipCropCircle
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus
    case eyeSlash
    case eyeSlashFill
    case signature
    case scissors
    case scissorsBadgeEllipsis
    case wandAndRays
    case wandAndRaysInverse
    case wandAndStars
    case wandAndStarsInverse
    case crop
    case cropRotate
    case dial
    case dialFill
    case paintbrush
    case paintbrushFill
    case bandage
    case bandageFill
    case eyedropper
    case eyedropperHalffull
    case eyedropperFull
    case rotateLeft
    case rotateLeftFill
    case rotateRight
    case rotateRightFill
    case selectionPinInOut
    case sliderHorizontalBelowRectangle
    case perspective
    case aspectratio
    case aspectratioFill
    case skew
    case flipHorizontal
    case flipHorizontalFill
    case scribble
    case lasso
    case sliderHorizontal3
    case circleLefthalfFill
    case circleRighthalfFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - TextFormatting

/// Text formatting category for sf symbols
public enum TextFormatting: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case paragraph
    case listDash
    case listBullet
    case listBulletIndent
    case listNumber
    case increaseIndent
    case decreaseIndent
    case decreaseQuotelevel
    case increaseQuotelevel
    case textAlignleft
    case textAligncenter
    case textAlignright
    case textJustify
    case textJustifyleft
    case textJustifyright
    case a
    case textformatSize
    case textformatAlt
    case textformat
    case textformatSubscript
    case textformatSuperscript
    case bold
    case italic
    case underline
    case strikethrough
    case boldItalicUnderline
    case boldUnderline
    case textCursor
    case textformatAbc
    case textformatAbcDottedunderline
    case textformat123
    case textbox

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Media

/// Media category for sf symbols
public enum Media: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case play
    case playFill
    case playCircle
    case playCircleFill
    case playRectangle
    case playRectangleFill
    case pause
    case pauseFill
    case pauseCircle
    case pauseCircleFill
    case pauseRectangle
    case pauseRectangleFill
    case stop
    case stopFill
    case stopCircle
    case stopCircleFill
    case playpause
    case playpauseFill
    case backward
    case backwardFill
    case forward
    case forwardFill
    case backwardEnd
    case backwardEndFill
    case forwardEnd
    case forwardEndFill
    case backwardEndAlt
    case backwardEndAltFill
    case forwardEndAlt
    case forwardEndAltFill
    case shuffle
    case `repeat`
    case repeat1
    case goforward
    case gobackward
    case goforward10
    case gobackward10
    case goforward15
    case gobackward15
    case goforward30
    case gobackward30
    case goforward45
    case gobackward45
    case goforward60
    case gobackward60
    case goforward75
    case gobackward75
    case goforward90
    case gobackward90
    case goforward10Ar
    case gobackward10Ar
    case goforward15Ar
    case gobackward15Ar
    case goforward30Ar
    case gobackward30Ar
    case goforward45Ar
    case gobackward45Ar
    case goforward60Ar
    case gobackward60Ar
    case goforward75Ar
    case gobackward75Ar
    case goforward90Ar
    case gobackward90Ar
    case goforward10Hi
    case gobackward10Hi
    case goforward15Hi
    case gobackward15Hi
    case goforward30Hi
    case gobackward30Hi
    case goforward45Hi
    case gobackward45Hi
    case goforward60Hi
    case gobackward60Hi
    case goforward75Hi
    case gobackward75Hi
    case goforward90Hi
    case gobackward90Hi
    case goforwardPlus
    case gobackwardMinus

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Keyboard

/// Keyboard category for sf symbols
public enum Keyboard: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case command
    case option
    case alt
    case deleteRight
    case deleteRightFill
    case clear
    case clearFill
    case deleteLeft
    case deleteLeftFill
    case shift
    case shiftFill
    case capslock
    case capslockFill
    case escape
    case power
    case globe
    case sunMin
    case sunMinFill
    case sunMax
    case sunMaxFill
    case lightMin
    case lightMax
    case keyboard
    case keyboardCheveronCompactDown
    case eject
    case ejectFill
    case control
    case projective

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Commerce

/// Commerce category for sf symbols
public enum Commerce: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case signature
    case bag
    case bagFill
    case bagBadgePlus
    case bagFillBadgePlus
    case bagBadgeMinus
    case bagFillBadgeMinus
    case cart
    case cartFill
    case cartBadgePlus
    case cartFillBadgePlus
    case cartBadgeMinus
    case cartFillBadgeMinus
    case creditcard
    case creditcardFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Time

/// Time category for finding sf symbols
public enum Time: String, SFFinderConvertable, CaseIterable {
    // MARK: iOS 13+

    case clock
    case clockFill
    case alarm
    case alarmFill
    case stopwatch
    case stopwatchFill
    case timer

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Health

/// Health category representation
public enum Health: String, SFFinderConvertable, CaseIterable {
    // MARK: iOS 13+

    case heart
    case heartFill
    case heartCircle
    case heartCircleFill
    case bandage
    case bandageFill
    case bedDouble
    case bedDoubleFill
    case waveformPathEcg
    case staroflife
    case staroflifeFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Shapes

/// Shape category representation
public enum Shapes: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case rectangle
    case rectangleFill
    case shield
    case shieldFill
    case hexagon
    case hexagonFill
    case app
    case appFill
    case triangle
    case triangleFill
    case capsule
    case capsuleFill
    case circle
    case circleFill
    case square
    case squareFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Arrows

/// SF Symbols for arrow representation
public enum Arrows: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case arrowshapeTurnUpLeft
    case arrowshapeTurnUpLeftFill
    case arrowshapeTurnUpLeftCircle
    case arrowshapeTurnUpLeftCircleFill
    case arrowshapeTurnUpRight
    case arrowshapeTurnUpRightFill
    case arrowshapeTurnUpRightCircle
    case arrowshapeTurnUpRightCircleFill
    case arrowshapeTurnUpLeft2
    case arrowshapeTurnUpLeft2Fill
    case location
    case locationFill
    case locationSlash
    case locationSlashFill
    case locationNorth
    case locationNorthFill
    case locationCircle
    case locationCircleFill
    case locationNorthLine
    case locationNorthLineFill
    case chevronUp
    case chevronUpCircle
    case chevronUpCircleFill
    case chevronUpSquare
    case chevronUpSquareFill
    case chevronDown
    case chevronDownCircle
    case chevronDownCircleFill
    case chevronDownSquare
    case chevronDownSquareFill
    case chevronLeft
    case chevronLeftCircle
    case chevronLeftCircleFill
    case chevronLeftSquare
    case chevronLeftSquareFill
    case chevronRight
    case chevronRightCircle
    case chevronRightCircleFill
    case chevronRightSquare
    case chevronRightSquareFill
    case chevronLeft2
    case chevronRight2
    case chevronUpChevronDown
    case chevronCompactUp
    case chevronCompactDown
    case chevronCompactLeft
    case chevronCompactRight
    case arrowUp
    case arrowUpCircle
    case arrowUpCircleFill
    case arrowUpSquare
    case arrowUpSquareFill
    case arrowDown
    case arrowDownCircle
    case arrowDownCircleFill
    case arrowDownSquare
    case arrowDownSquareFill
    case arrowLeft
    case arrowLeftCircle
    case arrowLeftCircleFill
    case arrowLeftSquare
    case arrowLeftSquareFill
    case arrowRight
    case arrowRightCircle
    case arrowRightCircleFill
    case arrowRightSquare
    case arrowRightSquareFill
    case arrowUpLeft
    case arrowUpLeftCircle
    case arrowUpLeftCircleFill
    case arrowUpLeftSquare
    case arrowUpLeftSquareFill
    case arrowUpRight
    case arrowUpRightCircle
    case arrowUpRightCircleFill
    case arrowUpRightSquare
    case arrowUpRightSquareFill
    case arrowDownLeft
    case arrowDownLeftCircle
    case arrowDownLeftCircleFill
    case arrowDownLeftSquare
    case arrowDownLeftSquareFill
    case arrowDownRight
    case arrowDownRightCircle
    case arrowDownRightCircleFill
    case arrowDownRightSquare
    case arrowDownRightSquareFill
    case arrowUpArrowDown
    case arrowUpArrowDownCircle
    case arrowUpArrowDownCircleFill
    case arrowUpArrowDownSquare
    case arrowUpArrowDownSquareFill
    case arrowRightArrowLeft
    case arrowRightArrowLeftCircle
    case arrowRightArrowLeftCircleFill
    case arrowRightArrowLeftSquare
    case arrowRightArrowLeftSquareFill
    case arrowTurnRightUp
    case arrowTurnRightDown
    case arrowTurnDownLeft
    case arrowTurnDownRight
    case arrowTurnLeftUp
    case arrowTurnLeftDown
    case arrowTurnUpLeft
    case arrowTurnUpRight
    case arrowUturnUp
    case arrowUturnUpCircle
    case arrowUturnUpCircleFill
    case arrowUturnUpSquare
    case arrowUturnUpSquareFill
    case arrowUturnDown
    case arrowUturnDownCircle
    case arrowUturnDownCircleFill
    case arrowUturnDownSquare
    case arrowUturnDownSquareFill
    case arrowUturnLeft
    case arrowUturnLeftCircle
    case arrowUturnLeftCircleFill
    case arrowUturnLeftCircleBadgeEllipsis
    case arrowUturnLeftSquare
    case arrowUturnLeftSquareFill
    case arrowUturnRight
    case arrowUturnRightCircle
    case arrowUturnRightCircleFill
    case arrowUturnRightSquare
    case arrowUturnRightSquareFill
    case arrowUpAndDown
    case arrowUpAndDownCircle
    case arrowUpAndDownCircleFill
    case arrowUpAndDownSquare
    case arrowUpAndDownSquareFill
    case arrowLeftAndRight
    case arrowLeftAndRightCircle
    case arrowLeftAndRightCircleFill
    case arrowLeftAndRightSquare
    case arrowLeftAndRightSquareFill
    case arrowUpToLineAlt
    case arrowUpToLine
    case arrowDownToLineAlt
    case arrowDownToLine
    case arrowLeftToLineAlt
    case arrowLeftToLine
    case arrowRightToLineAlt
    case arrowRightToLine
    case `return`
    case arrowClockwise
    case arrowClockwiseCircle
    case arrowClockwiseCircleFill
    case arrowCounterclockwise
    case arrowCounterclockwiseCircle
    case arrowCounterclockwiseCircleFill
    case arrowUpLeftAndArrowDownRight
    case arrowDownRightAndArrowUpLeft
    case arrow2Squarepath
    case arrow2Circlepath
    case arrow2CirclepathCircle
    case arrow2CirclepathCircleFill
    case arrow3Trianglepath
    case leafArrowCirclepath
    case arrowUpRightDiamond
    case arrowUpRightDiamondFill
    case arrowMerge
    case arrowSwap
    case arrowBranch
    case arrowtriangleUp
    case arrowtriangleUpFill
    case arrowtriangleUpCircle
    case arrowtriangleUpCircleFill
    case arrowtriangleUpSquare
    case arrowtriangleUpSquareFill
    case arrowtriangleDown
    case arrowtriangleDownFill
    case arrowtriangleDownCircle
    case arrowtriangleDownCircleFill
    case arrowtriangleDownSquare
    case arrowtriangleDownSquareFill
    case arrowtriangleLeft
    case arrowtriangleLeftFill
    case arrowtriangleLeftCircle
    case arrowtriangleLeftCircleFill
    case arrowtriangleLeftSquare
    case arrowtriangleLeftSquareFill
    case arrowtriangleRight
    case arrowtriangleRightFill
    case arrowtriangleRightCircle
    case arrowtriangleRightCircleFill
    case arrowtriangleRightSquare
    case arrowtriangleRightSquareFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Indices

/// SFSymbols for indices category symbols
public enum Indices: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case questionmarkCircle
    case questionmarkCircleFill
    case questionmarkSquare
    case questionmarkSquareFill
    case exclamationmarkCircle
    case exclamationmarkCircleFill
    case exclamationmarkSquare
    case exclamationmarkSquareFill

    /// Supported character for find alphabet symbols
    public enum Character: String {
        case a
        case b
        case c
        case d
        case e
        case f
        case g
        case h
        case i
        case j
        case k
        case l
        case m
        case n
        case o
        case p
        case q
        case r
        case s
        case t
        case u
        case v
        case w
        case x
        case y
        case z
    }

    /// Available currency for the currency symbol finder
    public enum AvailableCurrency: String {
        case dollar
        case cent
        case yen
        case sterling
        case franc
        case florin
        case turkishlira
        case ruble
        case euro
        case dong
        case indianrupee
        case tenge
        case peseta
        case peso
        case kip
        case won
        case lira
        case austral
        case hryvnia
        case naira
        case guarani
        case coloncurrency
        case cedi
        case cruzeiro
        case tugrik
        case mill
        case sheqel
        case manat
        case rupee
        case baht
        case lari
        case bitcoin
    }

    /// SFSymbols for retrieving currency symbols
//    public enum Currency: SFFinderConvertable, SFSymbolsHasValidator, CaseIterable {
//        // MARK: iOS 13+
//
//        case circle(currency: AvailableCurrency)
//        case circleFill(currency: AvailableCurrency)
//        case square(currency: AvailableCurrency)
//        case squareFill(currency: AvailableCurrency)
//
//    }
//
//    /// SFSymbols for retrieving the number symbols
//    /// Using Generic type in case want to put 01 or 02 as a String instead Int
//    public enum Number<Type>: SFFinderConvertable, SFSymbolsHasValidator, CaseIterable {
//        // MARK: iOS 13+
//
//        case circle(number: Type)
//        case circleFill(number: Type)
//        case altCircle(number: Type)
//        case altCircleFill(number: Type)
//        case square(number: Type)
//        case squareFill(number: Type)
//        case altSquare(number: Type)
//        case altSquareFill(number: Type)
//
//    }
//
//    /// SFSymbols for getting the alphabet symbols
//    public enum Alphabet: SFFinderConvertable, SFSymbolsHasValidator, CaseIterable {
//        // MARK: iOS 13+
//
//        case circle(character: Character)
//        case circleFill(character: Character)
//        case square(character: Character)
//        case squareFill(character: Character)
//
//    }
//
    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Math

/// SFSymbol for mathematics operation
public enum Math: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 13+

    case sum
    case percent
    case function
    case plus
    case plusCircle
    case plusCircleFill
    case plusSquare
    case plusSquareFill
    case minus
    case minusCircle
    case minusCircleFill
    case minusSquare
    case minusSquareFill
    case plusminus
    case plusminusCircle
    case plusminusCircleFill
    case plusSlashMinus
    case minusSlashPlus
    case multiply
    case multiplyCircle
    case multiplyCircleFill
    case multiplySquare
    case multiplySquareFill
    case divide
    case divideCircle
    case divideCircleFill
    case divideSquare
    case divideSquareFill
    case equal
    case equalCircle
    case equalCircleFill
    case equalSquare
    case equalSquareFill
    case lessthan
    case lessthanCircle
    case lessthanCircleFill
    case lessthanSquare
    case lessthanSquareFill
    case greaterthan
    case greaterthanCircle
    case greaterthanCircleFill
    case greaterthanSquare
    case greaterthanSquareFill
    case number
    case numberCircle
    case numberCircleFill
    case numberSquare
    case numberSquareFill
    case xSquareroot

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Gaming

/// SFSymbol for gaming icon
public enum Gaming: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    // MARK: iOS 14+
    case circleGridCross
    case circleGridCrossFill
    case circleGridCrossLeftFill
    case circleGridCrossUpFill
    case circleGridCrossRightFill
    case circleGridCrossDownFill
    case circleSquare
    case circleFillSquareFill
    case house
    case houseFill
    case houseCircle
    case houseCircleFill
    case rectangleOnRectangle
    case rectangleFillOnRectangleFill
    case rectangleFillOnRectangleFillCircle
    case rectangleFillOnRectangleFillCircleFill
    case gamecontroller
    case gamecontrollerFill
    case lJoystick
    case lJoystickFill
    case rJoystick
    case rJoystickFill
    case lJoystickDown
    case lJoystickDownFill
    case rJoystickDown
    case rJoystickDownFill
    case dpad
    case dpadFill
    case dpadLeftFill
    case dpadUpFill
    case dpadRightFill
    case dpadDownFill
    case circleCircle
    case circleCircleFill
    case squareCircle
    case squareCircleFill
    case triangleCircle
    case triangleCircleFill
    case rectangleRoundedtop
    case rectangleRoundedtopFill
    case rectangleRoundedbottom
    case rectangleRoundedbottomFill
    case lRectangleRoundedbottom
    case lRectangleRoundedbottomFill
    case l1RectangleRoundedbottom
    case l1RectangleRoundedbottomFill
    case l2RectangleRoundedtop
    case l2RectangleRoundedtopFill
    case rRectangleRoundedbottom
    case rRectangleRoundedbottomFill
    case r1RectangleRoundedbottom
    case r1RectangleRoundedbottomFill
    case r2RectangleRoundedtop
    case r2RectangleRoundedtopFill
    case lbRectangleRoundedbottom
    case lbRectangleRoundedbottomFill
    case rbRectangleRoundedbottom
    case rbRectangleRoundedbottomFill
    case ltRectangleRoundedtop
    case ltRectangleRoundedtopFill
    case rtRectangleRoundedtop
    case rtRectangleRoundedtopFill
    case zlRectangleRoundedtop
    case zlRectangleRoundedtopFill
    case zrRectangleRoundedtop
    case zrRectangleRoundedtopFill
    case lineHorizontal3Circle
    case lineHorizontal3CircleFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - Multicolor

/// SFSymbol for multicolor icon
public enum Multicolor: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {

    // MARK: iOS 14+

    case squareGrid3x1FolderBadgePlus
    case squareGrid3x1FolderFillBadgePlus
    case paperplaneCircleFill
    case externaldriveBadgePlus
    case externaldriveFillBadgePlus
    case externaldriveBadgeMinus
    case externaldriveFillBadgeMinus
    case externaldriveBadgeCheckmark
    case externaldriveFillBadgeCheckmark
    case externaldriveBadgeXmark
    case externaldriveFillBadgeXmark
    case docBadgePlus
    case docFillBadgePlus
    case noteTextBadgePlus
    case arrowshapeTurnUpBackwardCircleFill
    case arrowshapeTurnUpForwardCircleFill
    case arrowshapeTurnUpLeft2CircleFill
    case arrowshapeTurnUpBackward2CircleFill
    case bookmarkCircleFill
    case linkBadgePlus
    case personFillBadgePlus
    case personFillBadgeMinus
    case personCropCircleBadgeExclamationmark
    case personCropCircleFillBadgeExclamationmark
    case thermometerSunFill
    case filemenuAndSelection
    case badgePlusRadiowavesForward
    case circlebadgeFill
    case teletypeCircleFill
    case videoFillBadgePlus
    case videoBadgeCheckmark
    case videoFillBadgeCheckmark
    case carCircleFill
    case crossCircleFill
    case leafFill
    case rectangleBadgePlus
    case rectangleFillBadgePlus
    case rectangleBadgeMinus
    case rectangleFillBadgeMinus
    case macwindowBadgePlus
    case earBadgeCheckmark
    case giftCircleFill
    case airplaneCircleFill
    case hourglassBadgePlus
    case atCircleFill
    case arrowTriangleTurnUpRightCircleFill

    // MARK: iOS 13+
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus
    case trashCircleFill
    case folderCircleFill
    case folderBadgePlus
    case folderFillBadgePlus
    case folderBadgeMinus
    case folderFillBadgeMinus
    case calendarCircleFill
    case calendarBadgePlus
    case calendarBadgeMinus
    case arrowshapeTurnUpLeftCircleFill
    case arrowshapeTurnUpRightCircleFill
    case bookmarkFill
    case paperclip
    case linkCircleFill
    case personBadgePlus
    case personBadgeMinus
    case personCropCircleBadgePlus
    case personCropCircleFillBadgePlus
    case personCropCircleBadgeMinus
    case personCropCircleFillBadgeMinus
    case personCropCircleBadgeCheckmark
    case personCropCircleFillBadgeCheckmark
    case personCropCircleBadgeXmark
    case personCropCircleFillBadgeXmark
    case sunMaxFill
    case sunriseFill
    case sunsetFill
    case sunDustFill
    case sunHazeFill
    case moonFill
    case moonCircleFill
    case sparkles
    case moonStarsFill
    case cloudFill
    case cloudDrizzleFill
    case cloudRainFill
    case cloudHeavyrainFill
    case cloudFogFill
    case cloudHailFill
    case cloudSnowFill
    case cloudSleetFill
    case cloudBoltFill
    case cloudBoltRainFill
    case cloudSunFill
    case cloudSunRainFill
    case cloudSunBoltFill
    case cloudMoonFill
    case cloudMoonRainFill
    case cloudMoonBoltFill
    case smokeFill
    case wind
    case windSnow
    case snow
    case tornado
    case tropicalstorm
    case hurricane
    case thermometerSnowflake
    case thermometer
    case exclamationmarkTriangleFill
    case dropTriangleFill
    case memoriesBadgePlus
    case memoriesBadgeMinus
    case badgePlusRadiowavesRight
    case starFill
    case starCircleFill
    case flagFill
    case flagCircleFill
    case locationCircleFill
    case bellCircleFill
    case messageCircleFill
    case phoneCircleFill
    case phoneBadgePlus
    case phoneFillBadgePlus
    case phoneDownCircleFill
    case videoCircleFill
    case videoBadgePlus
    case envelopeCircleFill
    case bagBadgePlus
    case bagFillBadgePlus
    case bagBadgeMinus
    case bagFillBadgeMinus
    case cartBadgePlus
    case cartFillBadgePlus
    case cartBadgeMinus
    case cartFillBadgeMinus
    case gaugeBadgePlus
    case gaugeBadgeMinus
    case wifi
    case pinCircleFill
    case mappinCircleFill
    case rectangleBadgeCheckmark
    case rectangleFillBadgeCheckmark
    case rectangleBadgeXmark
    case rectangleFillBadgeXmark
    case rectangleStackBadgePlus
    case rectangleStackFillBadgePlus
    case rectangleStackBadgeMinus
    case rectangleStackFillBadgeMinus
    case alarm
    case timer
    case waveformPathBadgePlus
    case waveformPathBadgeMinus
    case gift
    case giftFill
    case textBadgePlus
    case textBadgeMinus
    case textBadgeCheckmark
    case textBadgeXmark
    case infoCircleFill
    case atBadgePlus
    case atBadgeMinus
    case plusCircleFill
    case minusCircleFill
    case xmarkOctagonFill
    case checkmarkCircleFill

    var enumRawValue: String {
        return rawValue
    }
}

// MARK: - All

/// All category for sf symbols, not included in any category, exclude the number need to use Indices
public enum All: String, SFFinderConvertable, SFSymbolsEnum, CaseIterable {
    case squareAndArrowUp
    case squareAndArrowUpFill
    case squareAndArrowDown
    case squareAndArrowDownFill
    case squareAndArrowUpOnSquare
    case squareAndArrowUpOnSquareFill
    case squareAndArrowDownOnSquare
    case squareAndArrowDownOnSquareFill
    case pencil
    case pencilCircle
    case pencilCircleFill
    case pencilSlash
    case squareAndPencil
    case rectangleAndPencilAndEllipsis
    case scribble
    case scribbleVariable
    case highlighter
    case pencilAndOutline
    case pencilTip
    case pencilTipCropCircle
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus
    case pencilTipCropCircleBadgeArrowForward
    case lasso
    case lassoSparkles
    case trash
    case trashFill
    case trashCircle
    case trashCircleFill
    case trashSlash
    case trashSlashFill
    case folder
    case folderFill
    case folderCircle
    case folderCircleFill
    case folderBadgePlus
    case folderFillBadgePlus
    case folderBadgeMinus
    case folderFillBadgeMinus
    case folderBadgeQuestionmark
    case folderFillBadgeQuestionmark
    case folderBadgePersonCrop
    case folderFillBadgePersonCrop
    case squareGrid3x1FolderBadgePlus
    case squareGrid3x1FolderFillBadgePlus
    case folderBadgeGear
    case folderFillBadgeGear
    case plusRectangleOnFolder
    case plusRectangleFillOnFolderFill
    case questionmarkFolder
    case questionmarkFolderFill
    case paperplane
    case paperplaneFill
    case paperplaneCircle
    case paperplaneCircleFill
    case tray
    case trayFill
    case trayCircle
    case trayCircleFill
    case trayAndArrowUp
    case trayAndArrowUpFill
    case trayAndArrowDown
    case trayAndArrowDownFill
    case tray2
    case tray2Fill
    case trayFull
    case trayFullFill
    case externaldrive
    case externaldriveFill
    case externaldriveBadgePlus
    case externaldriveFillBadgePlus
    case externaldriveBadgeMinus
    case externaldriveFillBadgeMinus
    case externaldriveBadgeCheckmark
    case externaldriveFillBadgeCheckmark
    case externaldriveBadgeXmark
    case externaldriveFillBadgeXmark
    case externaldriveBadgePersonCrop
    case externaldriveFillBadgePersonCrop
    case externaldriveBadgeIcloud
    case externaldriveFillBadgeIcloud
    case externaldriveBadgeWifi
    case externaldriveFillBadgeWifi
    case externaldriveBadgeTimemachine
    case externaldriveFillBadgeTimemachine
    case internaldrive
    case internaldriveFill
    case opticaldiscdrive
    case opticaldiscdriveFill
    case externaldriveConnectedToLineBelow
    case externaldriveConnectedToLineBelowFill
    case archivebox
    case archiveboxFill
    case archiveboxCircle
    case archiveboxCircleFill
    case xmarkBin
    case xmarkBinFill
    case xmarkBinCircle
    case xmarkBinCircleFill
    case arrowUpBin
    case arrowUpBinFill
    case doc
    case docFill
    case docCircle
    case docCircleFill
    case docBadgePlus
    case docFillBadgePlus
    case docBadgeGearshape
    case docBadgeGearshapeFill
    case docBadgeEllipsis
    case docFillBadgeEllipsis
    case lockDoc
    case lockDocFill
    case arrowUpDoc
    case arrowUpDocFill
    case arrowDownDoc
    case arrowDownDocFill
    case docText
    case docTextFill
    case docZipper
    case docOnDoc
    case docOnDocFill
    case docOnClipboard
    case arrowRightDocOnClipboard
    case arrowUpDocOnClipboard
    case arrowTriangle2CirclepathDocOnClipboard
    case docOnClipboardFill
    case docRichtext
    case docRichtextFill
    case docPlaintext
    case docPlaintextFill
    case docAppend
    case docAppendFill
    case docTextBelowEcg
    case docTextBelowEcgFill
    case chartBarDocHorizontal
    case chartBarDocHorizontalFill
    case listBulletRectangle
    case terminal
    case terminalFill
    case docTextMagnifyingglass
    case note
    case noteText
    case noteTextBadgePlus
    case calendar
    case calendarCircle
    case calendarCircleFill
    case calendarBadgePlus
    case calendarBadgeMinus
    case calendarBadgeClock
    case calendarBadgeExclamationmark
    case arrowshapeTurnUpLeft
    case arrowshapeTurnUpLeftFill
    case arrowshapeTurnUpLeftCircle
    case arrowshapeTurnUpLeftCircleFill
    case arrowshapeTurnUpBackward
    case arrowshapeTurnUpBackwardFill
    case arrowshapeTurnUpBackwardCircle
    case arrowshapeTurnUpBackwardCircleFill
    case arrowshapeTurnUpRight
    case arrowshapeTurnUpRightFill
    case arrowshapeTurnUpRightCircle
    case arrowshapeTurnUpRightCircleFill
    case arrowshapeTurnUpForward
    case arrowshapeTurnUpForwardFill
    case arrowshapeTurnUpForwardCircle
    case arrowshapeTurnUpForwardCircleFill
    case arrowshapeTurnUpLeft2
    case arrowshapeTurnUpLeft2Fill
    case arrowshapeTurnUpLeft2Circle
    case arrowshapeTurnUpLeft2CircleFill
    case arrowshapeTurnUpBackward2
    case arrowshapeTurnUpBackward2Fill
    case arrowshapeTurnUpBackward2Circle
    case arrowshapeTurnUpBackward2CircleFill
    case arrowshapeZigzagRight
    case arrowshapeZigzagRightFill
    case arrowshapeZigzagForward
    case arrowshapeZigzagForwardFill
    case arrowshapeBounceRight
    case arrowshapeBounceRightFill
    case arrowshapeBounceForward
    case arrowshapeBounceForwardFill
    case book
    case bookFill
    case bookCircle
    case bookCircleFill
    case newspaper
    case newspaperFill
    case booksVertical
    case booksVerticalFill
    case bookClosed
    case bookClosedFill
    case characterBookClosed
    case characterBookClosedFill
    case textBookClosed
    case textBookClosedFill
    case greetingcard
    case greetingcardFill
    case bookmark
    case bookmarkFill
    case bookmarkCircle
    case bookmarkCircleFill
    case bookmarkSlash
    case bookmarkSlashFill
    case rosette
    case graduationcap
    case graduationcapFill
    case ticket
    case ticketFill
    case paperclip
    case paperclipCircle
    case paperclipCircleFill
    case paperclipBadgeEllipsis
    case rectangleAndPaperclip
    case rectangleDashedAndPaperclip
    case link
    case linkCircle
    case linkCircleFill
    case linkBadgePlus
    case personalhotspot
    case lineweight
    case person
    case personFill
    case personFillTurnRight
    case personFillTurnDown
    case personFillTurnLeft
    case personFillCheckmark
    case personFillXmark
    case personFillQuestionmark
    case personCircle
    case personCircleFill
    case personBadgePlus
    case personFillBadgePlus
    case personBadgeMinus
    case personFillBadgeMinus
    case personAndArrowLeftAndArrowRight
    case personFillAndArrowLeftAndArrowRight
    case person2
    case person2Fill
    case person2Circle
    case person2CircleFill
    case person3
    case person3Fill
    case personCropCircle
    case personCropCircleFill
    case personCropCircleBadgePlus
    case personCropCircleFillBadgePlus
    case personCropCircleBadgeMinus
    case personCropCircleFillBadgeMinus
    case personCropCircleBadgeCheckmark
    case personCropCircleFillBadgeCheckmark
    case personCropCircleBadgeXmark
    case personCropCircleFillBadgeXmark
    case personCropCircleBadgeQuestionmark
    case personCropCircleFillBadgeQuestionmark
    case personCropCircleBadgeExclamationmark
    case personCropCircleFillBadgeExclamationmark
    case personCropSquare
    case personCropSquareFill
    case rectangleStackPersonCrop
    case rectangleStackPersonCropFill
    case person2SquareStack
    case person2SquareStackFill
    case personCropSquareFillAndAtRectangle
    case squareAndAtRectangle
    case command
    case commandCircle
    case commandCircleFill
    case commandSquare
    case commandSquareFill
    case option
    case alt
    case deleteRight
    case deleteRightFill
    case clear
    case clearFill
    case deleteLeft
    case deleteLeftFill
    case shift
    case shiftFill
    case capslock
    case capslockFill
    case escape
    case restart
    case restartCircle
    case sleep
    case wake
    case power
    case togglepower
    case poweron
    case poweroff
    case powersleep
    case directcurrent
    case dotArrowtrianglesUpRightDownLeftCircle
    case globe
    case network
    case sunMin
    case sunMinFill
    case sunMax
    case sunMaxFill
    case sunrise
    case sunriseFill
    case sunset
    case sunsetFill
    case sunDust
    case sunDustFill
    case sunHaze
    case sunHazeFill
    case moon
    case moonFill
    case moonCircle
    case moonCircleFill
    case zzz
    case moonZzz
    case moonZzzFill
    case sparkle
    case sparkles
    case moonStars
    case moonStarsFill
    case cloud
    case cloudFill
    case cloudDrizzle
    case cloudDrizzleFill
    case cloudRain
    case cloudRainFill
    case cloudHeavyrain
    case cloudHeavyrainFill
    case cloudFog
    case cloudFogFill
    case cloudHail
    case cloudHailFill
    case cloudSnow
    case cloudSnowFill
    case cloudSleet
    case cloudSleetFill
    case cloudBolt
    case cloudBoltFill
    case cloudBoltRain
    case cloudBoltRainFill
    case cloudSun
    case cloudSunFill
    case cloudSunRain
    case cloudSunRainFill
    case cloudSunBolt
    case cloudSunBoltFill
    case cloudMoon
    case cloudMoonFill
    case cloudMoonRain
    case cloudMoonRainFill
    case cloudMoonBolt
    case cloudMoonBoltFill
    case smoke
    case smokeFill
    case wind
    case windSnow
    case snow
    case tornado
    case tropicalstorm
    case hurricane
    case thermometerSun
    case thermometerSunFill
    case thermometerSnowflake
    case thermometer
    case aqiLow
    case aqiMedium
    case aqiHigh
    case umbrella
    case umbrellaFill
    case flame
    case flameFill
    case lightMin
    case lightMax
    case rays
    case slowmo
    case timelapse
    case cursorarrowRays
    case cursorarrow
    case cursorarrowSquare
    case cursorarrowAndSquareOnSquareDashed
    case cursorarrowClick
    case cursorarrowClick2
    case contextualmenuAndCursorarrow
    case filemenuAndCursorarrow
    case filemenuAndSelection
    case dotCircleAndCursorarrow
    case cursorarrowMotionlines
    case cursorarrowMotionlinesClick
    case cursorarrowClickBadgeClock
    case keyboard
    case keyboardBadgeEllipsis
    case keyboardChevronCompactDown
    case keyboardChevronCompactLeft
    case keyboardOnehandedLeft
    case keyboardOnehandedRight
    case rectangle3Offgrid
    case rectangle3OffgridFill
    case squareGrid3x2
    case squareGrid3x2Fill
    case rectangleGrid3x2
    case rectangleGrid3x2Fill
    case squareGrid2x2
    case squareGrid2x2Fill
    case rectangleGrid2x2
    case rectangleGrid2x2Fill
    case squareGrid3x1BelowLineGrid1x2
    case squareGrid3x1FillBelowLineGrid1x2
    case squareGrid4x3Fill
    case rectangleGrid1x2
    case rectangleGrid1x2Fill
    case circleGrid2x2
    case circleGrid2x2Fill
    case circleGrid3x3
    case circleGrid3x3Fill
    case squareGrid3x3
    case squareGrid3x3Fill
    case squareGrid3x3TopleftFill
    case squareGrid3x3TopmiddleFill
    case squareGrid3x3ToprightFill
    case squareGrid3x3MiddleleftFill
    case squareGrid3x3MiddleFill
    case squareGrid3x3MiddlerightFill
    case squareGrid3x3BottomleftFill
    case squareGrid3x3BottommiddleFill
    case squareGrid3x3BottomrightFill
    case circlesHexagongrid
    case circlesHexagongridFill
    case circlesHexagonpath
    case circlesHexagonpathFill
    case circleGridCross
    case circleGridCrossFill
    case circleGridCrossLeftFill
    case circleGridCrossUpFill
    case circleGridCrossRightFill
    case circleGridCrossDownFill
    case seal
    case sealFill
    case checkmarkSeal
    case checkmarkSealFill
    case xmarkSeal
    case xmarkSealFill
    case exclamationmarkTriangle
    case exclamationmarkTriangleFill
    case drop
    case dropFill
    case dropTriangle
    case dropTriangleFill
    case play
    case playFill
    case playCircle
    case playCircleFill
    case playRectangle
    case playRectangleFill
    case playSlash
    case playSlashFill
    case pause
    case pauseFill
    case pauseCircle
    case pauseCircleFill
    case pauseRectangle
    case pauseRectangleFill
    case stop
    case stopFill
    case stopCircle
    case stopCircleFill
    case recordCircle
    case recordCircleFill
    case playpause
    case playpauseFill
    case backward
    case backwardFill
    case forward
    case forwardFill
    case backwardEnd
    case backwardEndFill
    case forwardEnd
    case forwardEndFill
    case backwardEndAlt
    case backwardEndAltFill
    case forwardEndAlt
    case forwardEndAltFill
    case backwardFrame
    case backwardFrameFill
    case forwardFrame
    case forwardFrameFill
    case eject
    case ejectFill
    case ejectCircle
    case ejectCircleFill
    case mount
    case mountFill
    case memories
    case memoriesBadgePlus
    case memoriesBadgeMinus
    case shuffle
    case shuffleCircle
    case shuffleCircleFill
    case `repeat`
    case repeatCircle
    case repeatCircleFill
    case repeat1
    case repeat1Circle
    case repeat1CircleFill
    case infinity
    case infinityCircle
    case infinityCircleFill
    case megaphone
    case megaphoneFill
    case speaker
    case speakerFill
    case speakerSlash
    case speakerSlashFill
    case speakerSlashCircle
    case speakerSlashCircleFill
    case speakerZzz
    case speakerZzzFill
    case speakerWave1
    case speakerWave1Fill
    case speakerWave2
    case speakerWave2Fill
    case speakerWave2Circle
    case speakerWave2CircleFill
    case speakerWave3
    case speakerWave3Fill
    case badgePlusRadiowavesRight
    case badgePlusRadiowavesForward
    case musicNote
    case musicNoteList
    case musicQuarternote3
    case musicMic
    case arrowRectanglepath
    case goforward
    case gobackward
    case goforward10
    case gobackward10
    case goforward15
    case gobackward15
    case goforward30
    case gobackward30
    case goforward45
    case gobackward45
    case goforward60
    case gobackward60
    case goforward75
    case gobackward75
    case goforward90
    case gobackward90
    case goforwardPlus
    case gobackwardMinus
    case swift
    case magnifyingglass
    case magnifyingglassCircle
    case magnifyingglassCircleFill
    case plusMagnifyingglass
    case minusMagnifyingglass
    case oneMagnifyingglass
    case arrowUpLeftAndDownRightMagnifyingglass
    case textMagnifyingglass
    case loupe
    case mic
    case micFill
    case micCircle
    case micCircleFill
    case micSlash
    case micSlashFill
    case lineDiagonal
    case lineDiagonalArrow
    case circle
    case circleFill
    case circleLefthalfFill
    case circleRighthalfFill
    case circleBottomhalfFill
    case circleTophalfFill
    case largecircleFillCircle
    case smallcircleFillCircle
    case smallcircleFillCircleFill
    case circleDashed
    case circleDashedInsetFill
    case circlebadge
    case circlebadgeFill
    case circlebadge2
    case circlebadge2Fill
    case smallcircleCircle
    case smallcircleCircleFill
    case target
    case capsule
    case capsuleFill
    case capsulePortrait
    case capsulePortraitFill
    case oval
    case ovalFill
    case ovalPortrait
    case ovalPortraitFill
    case placeholdertextFill
    case square
    case squareFill
    case squareLefthalfFill
    case squareRighthalfFill
    case squareBottomhalfFill
    case squareTophalfFill
    case squareSlash
    case squareSlashFill
    case dotSquare
    case dotSquareFill
    case circleSquare
    case circleFillSquareFill
    case squareDashed
    case squareDashedInsetFill
    case questionmarkSquareDashed
    case squareshape
    case squareshapeFill
    case squareshapeDashedSquareshape
    case squareshapeSquareshapeDashed
    case dotSquareshape
    case dotSquareshapeFill
    case app
    case appFill
    case rectangle
    case rectangleFill
    case rectangleSlash
    case rectangleSlashFill
    case rectanglePortrait
    case rectanglePortraitFill
    case triangle
    case triangleFill
    case triangleLefthalfFill
    case triangleRighthalfFill
    case diamond
    case diamondFill
    case octagon
    case octagonFill
    case hexagon
    case hexagonFill
    case suitHeart
    case suitHeartFill
    case suitClub
    case suitClubFill
    case suitSpade
    case suitSpadeFill
    case suitDiamond
    case suitDiamondFill
    case heart
    case heartFill
    case heartCircle
    case heartCircleFill
    case heartSlash
    case heartSlashFill
    case heartSlashCircle
    case heartSlashCircleFill
    case heartTextSquare
    case heartTextSquareFill
    case boltHeart
    case boltHeartFill
    case arrowUpHeart
    case arrowUpHeartFill
    case arrowDownHeart
    case arrowDownHeartFill
    case arrowClockwiseHeart
    case arrowClockwiseHeartFill
    case rhombus
    case rhombusFill
    case star
    case starFill
    case starLeadinghalfFill
    case starCircle
    case starCircleFill
    case starSquare
    case starSquareFill
    case starSlash
    case starSlashFill
    case lineHorizontalStarFillLineHorizontal
    case flag
    case flagFill
    case flagCircle
    case flagCircleFill
    case flagSlash
    case flagSlashFill
    case flagSlashCircle
    case flagSlashCircleFill
    case flagBadgeEllipsis
    case flagBadgeEllipsisFill
    case location
    case locationFill
    case locationSlash
    case locationSlashFill
    case locationNorth
    case locationNorthFill
    case locationCircle
    case locationCircleFill
    case locationNorthLine
    case locationNorthLineFill
    case bell
    case bellFill
    case bellCircle
    case bellCircleFill
    case bellSlash
    case bellSlashFill
    case bellSlashCircle
    case bellSlashCircleFill
    case bellBadge
    case bellBadgeFill
    case tag
    case tagFill
    case tagCircle
    case tagCircleFill
    case tagSlash
    case tagSlashFill
    case bolt
    case boltFill
    case boltCircle
    case boltCircleFill
    case boltSlash
    case boltSlashFill
    case boltSlashCircle
    case boltSlashCircleFill
    case boltBadgeA
    case boltBadgeAFill
    case boltHorizontal
    case boltHorizontalFill
    case boltHorizontalCircle
    case boltHorizontalCircleFill
    case eye
    case eyeFill
    case eyeCircle
    case eyeCircleFill
    case eyeSlash
    case eyeSlashFill
    case eyes
    case eyesInverse
    case eyebrow
    case nose
    case noseFill
    case mustache
    case mustacheFill
    case mouth
    case mouthFill
    case icloud
    case icloudFill
    case icloudCircle
    case icloudCircleFill
    case icloudSlash
    case icloudSlashFill
    case exclamationmarkIcloud
    case exclamationmarkIcloudFill
    case checkmarkIcloud
    case checkmarkIcloudFill
    case xmarkIcloud
    case xmarkIcloudFill
    case linkIcloud
    case linkIcloudFill
    case boltHorizontalIcloud
    case boltHorizontalIcloudFill
    case personIcloud
    case personIcloudFill
    case lockIcloud
    case lockIcloudFill
    case keyIcloud
    case keyIcloudFill
    case arrowClockwiseIcloud
    case arrowClockwiseIcloudFill
    case arrowCounterclockwiseIcloud
    case arrowCounterclockwiseIcloudFill
    case icloudAndArrowDown
    case icloudAndArrowDownFill
    case icloudAndArrowUp
    case icloudAndArrowUpFill
    case flashlightOffFill
    case flashlightOnFill
    case camera
    case cameraFill
    case cameraCircle
    case cameraCircleFill
    case cameraBadgeEllipsis
    case cameraFillBadgeEllipsis
    case arrowTriangle2CirclepathCamera
    case arrowTriangle2CirclepathCameraFill
    case cameraOnRectangle
    case cameraOnRectangleFill
    case message
    case messageFill
    case messageCircle
    case messageCircleFill
    case arrowUpMessage
    case arrowUpMessageFill
    case plusMessage
    case plusMessageFill
    case bubbleRight
    case bubbleRightFill
    case bubbleLeft
    case bubbleLeftFill
    case exclamationmarkBubble
    case exclamationmarkBubbleFill
    case quoteBubble
    case quoteBubbleFill
    case tBubble
    case tBubbleFill
    case textBubble
    case textBubbleFill
    case captionsBubble
    case captionsBubbleFill
    case plusBubble
    case plusBubbleFill
    case rectangle3OffgridBubbleLeft
    case rectangle3OffgridBubbleLeftFill
    case ellipsisBubble
    case ellipsisBubbleFill
    case phoneBubbleLeft
    case phoneBubbleLeftFill
    case videoBubbleLeft
    case videoBubbleLeftFill
    case bubbleMiddleBottom
    case bubbleMiddleBottomFill
    case bubbleMiddleTop
    case bubbleMiddleTopFill
    case bubbleLeftAndBubbleRight
    case bubbleLeftAndBubbleRightFill
    case phone
    case phoneFill
    case phoneCircle
    case phoneCircleFill
    case phoneBadgePlus
    case phoneFillBadgePlus
    case phoneConnection
    case phoneFillConnection
    case phoneArrowUpRight
    case phoneFillArrowUpRight
    case phoneArrowDownLeft
    case phoneFillArrowDownLeft
    case phoneArrowRight
    case phoneFillArrowRight
    case phoneDown
    case phoneDownFill
    case phoneDownCircle
    case phoneDownCircleFill
    case teletype
    case teletypeCircle
    case teletypeCircleFill
    case teletypeAnswer
    case video
    case videoFill
    case videoCircle
    case videoCircleFill
    case videoSlash
    case videoSlashFill
    case videoBadgePlus
    case videoFillBadgePlus
    case videoBadgeCheckmark
    case videoFillBadgeCheckmark
    case arrowUpRightVideo
    case arrowUpRightVideoFill
    case arrowDownLeftVideo
    case arrowDownLeftVideoFill
    case questionmarkVideo
    case questionmarkVideoFill
    case envelope
    case envelopeFill
    case envelopeCircle
    case envelopeCircleFill
    case envelopeArrowTriangleBranch
    case envelopeArrowTriangleBranchFill
    case envelopeOpen
    case envelopeOpenFill
    case envelopeBadge
    case envelopeBadgeFill
    case envelopeBadgeShieldLeadinghalfFill
    case envelopeFillBadgeShieldTrailinghalfFill
    case mailStack
    case mailStackFill
    case mail
    case mailFill
    case mailAndTextMagnifyingglass
    case rectangleAndTextMagnifyingglass
    case arrowUpRightAndArrowDownLeftRectangle
    case arrowUpRightAndArrowDownLeftRectangleFill
    case gear
    case gearshape
    case gearshapeFill
    case gearshape2
    case gearshape2Fill
    case signature
    case line3CrossedSwirlCircle
    case line3CrossedSwirlCircleFill
    case scissors
    case scissorsBadgeEllipsis
    case ellipsis
    case ellipsisCircle
    case ellipsisCircleFill
    case ellipsisRectangle
    case ellipsisRectangleFill
    case bag
    case bagFill
    case bagCircle
    case bagCircleFill
    case bagBadgePlus
    case bagFillBadgePlus
    case bagBadgeMinus
    case bagFillBadgeMinus
    case cart
    case cartFill
    case cartCircle
    case cartCircleFill
    case cartBadgePlus
    case cartFillBadgePlus
    case cartBadgeMinus
    case cartFillBadgeMinus
    case creditcard
    case creditcardFill
    case creditcardCircle
    case creditcardCircleFill
    case giftcard
    case giftcardFill
    case walletPass
    case walletPassFill
    case wandAndRays
    case wandAndRaysInverse
    case wandAndStars
    case wandAndStarsInverse
    case crop
    case cropRotate
    case dialMin
    case dialMinFill
    case dialMax
    case dialMaxFill
    case gyroscope
    case nosign
    case gauge
    case gaugeBadgePlus
    case gaugeBadgeMinus
    case speedometer
    case barometer
    case metronome
    case metronomeFill
    case amplifier
    case dieFace1
    case dieFace1Fill
    case dieFace2
    case dieFace2Fill
    case dieFace3
    case dieFace3Fill
    case dieFace4
    case dieFace4Fill
    case dieFace5
    case dieFace5Fill
    case dieFace6
    case dieFace6Fill
    case squareGrid3x3FillSquare
    case pianokeys
    case pianokeysInverse
    case tuningfork
    case paintbrush
    case paintbrushFill
    case paintbrushPointed
    case paintbrushPointedFill
    case bandage
    case bandageFill
    case ruler
    case rulerFill
    case level
    case levelFill
    case wrench
    case wrenchFill
    case hammer
    case hammerFill
    case eyedropper
    case eyedropperHalffull
    case eyedropperFull
    case wrenchAndScrewdriver
    case wrenchAndScrewdriverFill
    case applescript
    case applescriptFill
    case scroll
    case scrollFill
    case stethoscope
    case printer
    case printerFill
    case printerFillAndPaperFill
    case printerDotmatrix
    case printerDotmatrixFill
    case printerDotmatrixFillAndPaperFill
    case scanner
    case scannerFill
    case faxmachine
    case briefcase
    case briefcaseFill
    case `case`
    case caseFill
    case latch2Case
    case latch2CaseFill
    case crossCase
    case crossCaseFill
    case puzzlepiece
    case puzzlepieceFill
    case homekit
    case house
    case houseFill
    case houseCircle
    case houseCircleFill
    case musicNoteHouse
    case musicNoteHouseFill
    case buildingColumns
    case buildingColumnsFill
    case squareSplitBottomrightquarter
    case squareSplitBottomrightquarterFill
    case building
    case buildingFill
    case building2
    case building2Fill
    case building2CropCircle
    case building2CropCircleFill
    case lock
    case lockFill
    case lockCircle
    case lockCircleFill
    case lockSquare
    case lockSquareFill
    case lockSquareStack
    case lockSquareStackFill
    case lockRectangle
    case lockRectangleFill
    case lockRectangleStack
    case lockRectangleStackFill
    case lockRectangleOnRectangle
    case lockRectangleOnRectangleFill
    case lockShield
    case lockShieldFill
    case lockSlash
    case lockSlashFill
    case lockOpen
    case lockOpenFill
    case lockRotation
    case lockRotationOpen
    case key
    case keyFill
    case wifi
    case wifiSlash
    case wifiExclamationmark
    case pin
    case pinFill
    case pinCircle
    case pinCircleFill
    case pinSlash
    case pinSlashFill
    case mappin
    case mappinCircle
    case mappinCircleFill
    case mappinSlash
    case mappinAndEllipse
    case map
    case mapFill
    case safari
    case safariFill
    case move3d
    case scale3d
    case rotate3d
    case torus
    case rotateLeft
    case rotateLeftFill
    case rotateRight
    case rotateRightFill
    case selectionPinInOut
    case timelineSelection
    case cpu
    case memorychip
    case opticaldisc
    case tv
    case tvFill
    case tvCircle
    case tvCircleFill
    case fourkTv
    case fourkTvFill
    case tvMusicNote
    case tvMusicNoteFill
    case playTv
    case playTvFill
    case photoTv
    case tvAndHifispeakerFill
    case tvAndMediabox
    case display
    case displayTrianglebadgeExclamationmark
    case display2
    case desktopcomputer
    case pc
    case macproGen1
    case macproGen2
    case macproGen2Fill
    case macproGen3
    case serverRack
    case xserve
    case macproGen3Server
    case laptopcomputer
    case laptopcomputerAndIphone
    case macmini
    case macminiFill
    case airportExpress
    case airportExtremeTower
    case airportExtreme
    case ipod
    case flipphone
    case candybarphone
    case iphoneHomebutton
    case iphoneHomebuttonLandscape
    case iphoneHomebuttonRadiowavesLeftAndRight
    case iphoneHomebuttonSlash
    case iphone
    case iphoneLandscape
    case iphoneRadiowavesLeftAndRight
    case iphoneSlash
    case iphoneHomebuttonBadgePlay
    case iphoneBadgePlay
    case ipadHomebuttonBadgePlay
    case ipadBadgePlay
    case ipadHomebuttonLandscapeBadgePlay
    case ipadLandscapeBadgePlay
    case arrowTurnUpForwardIphone
    case arrowTurnUpForwardIphoneFill
    case appsIphone
    case appsIphoneBadgePlus
    case appsIphoneLandscape
    case ipodtouch
    case ipodtouchLandscape
    case ipodshuffleGen1
    case ipodshuffleGen2
    case ipodshuffleGen3
    case ipodshuffleGen4
    case ipadHomebutton
    case ipad
    case appsIpad
    case ipadHomebuttonLandscape
    case ipadLandscape
    case appsIpadLandscape
    case applewatch
    case applewatchWatchface
    case exclamationmarkApplewatch
    case lockApplewatch
    case applewatchRadiowavesLeftAndRight
    case applewatchSlash
    case earpods
    case airpods
    case airpodRight
    case airpodLeft
    case airpodspro
    case airpodproRight
    case airpodproLeft
    case homepod
    case homepodFill
    case homepod2
    case homepod2Fill
    case hifispeakerAndHomepod
    case hifispeakerAndHomepodFill
    case hifispeaker
    case hifispeakerFill
    case hifispeaker2
    case hifispeaker2Fill
    case radio
    case radioFill
    case appletv
    case appletvFill
    case signpostLeft
    case signpostLeftFill
    case signpostRight
    case signpostRightFill
    case airplayvideo
    case airplayaudio
    case dotRadiowavesLeftAndRight
    case dotRadiowavesRight
    case dotRadiowavesForward
    case wave3Left
    case wave3LeftCircle
    case wave3LeftCircleFill
    case wave3Backward
    case wave3BackwardCircle
    case wave3BackwardCircleFill
    case wave3Right
    case wave3RightCircle
    case wave3RightCircleFill
    case wave3Forward
    case wave3ForwardCircle
    case wave3ForwardCircleFill
    case antennaRadiowavesLeftAndRight
    case pip
    case pipFill
    case pipExit
    case pipEnter
    case pipSwap
    case pipRemove
    case rectangleArrowtriangle2Outward
    case rectangleArrowtriangle2Inward
    case rectanglePortraitArrowtriangle2Outward
    case rectanglePortraitArrowtriangle2Inward
    case guitars
    case guitarsFill
    case car
    case carFill
    case carCircle
    case carCircleFill
    case boltCar
    case boltCarFill
    case car2
    case car2Fill
    case bus
    case busFill
    case busDoubledecker
    case busDoubledeckerFill
    case tram
    case tramFill
    case tramCircle
    case tramCircleFill
    case tramTunnelFill
    case bicycle
    case bicycleCircle
    case bicycleCircleFill
    case bedDouble
    case bedDoubleFill
    case lungs
    case lungsFill
    case pills
    case pillsFill
    case cross
    case crossFill
    case crossCircle
    case crossCircleFill
    case hare
    case hareFill
    case tortoise
    case tortoiseFill
    case ant
    case antFill
    case antCircle
    case antCircleFill
    case ladybug
    case ladybugFill
    case leaf
    case leafFill
    case leafArrowTriangleCirclepath
    case film
    case filmFill
    case sportscourt
    case sportscourtFill
    case faceSmiling
    case faceSmilingFill
    case faceDashed
    case faceDashedFill
    case crown
    case crownFill
    case comb
    case combFill
    case qrcode
    case barcode
    case viewfinder
    case viewfinderCircle
    case viewfinderCircleFill
    case barcodeViewfinder
    case qrcodeViewfinder
    case plusViewfinder
    case cameraViewfinder
    case faceid
    case docTextViewfinder
    case docTextFillViewfinder
    case locationViewfinder
    case locationFillViewfinder
    case personFillViewfinder
    case rectangleInsetFill
    case rectangleLefthalfInsetFill
    case rectangleRighthalfInsetFill
    case rectangleTopthirdInset
    case rectangleBottomthirdInsetFill
    case rectangleLeftthirdInsetFill
    case rectangleRightthirdInsetFill
    case rectangleCenterInsetFill
    case rectangleInsetTopleftFill
    case rectangleInsetToprightFill
    case rectangleInsetBottomleftFill
    case rectangleInsetBottomrightFill
    case rectangleLefthalfInsetFillArrowLeft
    case rectangleRighthalfInsetFillArrowRight
    case rectangleLefthalfFill
    case rectangleRighthalfFill
    case personCropRectangle
    case personCropRectangleFill
    case arrowUpAndPersonRectanglePortrait
    case arrowUpAndPersonRectangleTurnRight
    case arrowUpAndPersonRectangleTurnLeft
    case photo
    case photoFill
    case textBelowPhoto
    case textBelowPhotoFill
    case checkerboardRectangle
    case cameraMeteringCenterWeightedAverage
    case cameraMeteringCenterWeighted
    case cameraMeteringMatrix
    case cameraMeteringMultispot
    case cameraMeteringNone
    case cameraMeteringPartial
    case cameraMeteringSpot
    case cameraMeteringUnknown
    case cameraAperture
    case rectangleDashed
    case rectangleDashedBadgeRecord
    case rectangleBadgePlus
    case rectangleFillBadgePlus
    case rectangleBadgeMinus
    case rectangleFillBadgeMinus
    case rectangleBadgeCheckmark
    case rectangleFillBadgeCheckmark
    case rectangleBadgeXmark
    case rectangleFillBadgeXmark
    case rectangleBadgePersonCrop
    case rectangleFillBadgePersonCrop
    case sidebarLeft
    case sidebarRight
    case sidebarLeading
    case sidebarTrailing
    case sidebarSquaresLeft
    case sidebarSquaresRight
    case sidebarSquaresLeading
    case sidebarSquaresTrailing
    case macwindow
    case macwindowBadgePlus
    case dockRectangle
    case dockArrowUpRectangle
    case dockArrowDownRectangle
    case menubarRectangle
    case menubarDockRectangle
    case menubarDockRectangleBadgeRecord
    case menubarArrowUpRectangle
    case menubarArrowDownRectangle
    case macwindowOnRectangle
    case textAndCommandMacwindow
    case keyboardMacwindow
    case uiwindowSplit2x1
    case rectangleSplit3x1
    case rectangleSplit3x1Fill
    case squareSplit2x1
    case squareSplit2x1Fill
    case squareSplit1x2
    case squareSplit1x2Fill
    case squareSplit2x2
    case squareSplit2x2Fill
    case squareSplitDiagonal2x2
    case squareSplitDiagonal2x2Fill
    case squareSplitDiagonal
    case squareSplitDiagonalFill
    case mosaic
    case mosaicFill
    case squaresBelowRectangle
    case rectangleSplit3x3
    case rectangleSplit3x3Fill
    case rectangleSplit2x1
    case rectangleSplit2x1Fill
    case rectangleSplit1x2
    case rectangleSplit1x2Fill
    case rectangleSplit2x2
    case rectangleSplit2x2Fill
    case tablecells
    case tablecellsFill
    case tablecellsBadgeEllipsis
    case tablecellsBadgeEllipsisFill
    case rectangleOnRectangle
    case rectangleFillOnRectangleFill
    case rectangleFillOnRectangleFillCircle
    case rectangleFillOnRectangleFillCircleFill
    case rectangleOnRectangleSlash
    case rectangleFillOnRectangleFillSlashFill
    case plusRectangleOnRectangle
    case plusRectangleFillOnRectangleFill
    case photoOnRectangle
    case photoFillOnRectangleFill
    case rectangleOnRectangleAngled
    case rectangleFillOnRectangleAngledFill
    case photoOnRectangleAngled
    case rectangleStack
    case rectangleStackFill
    case rectangleStackBadgePlus
    case rectangleStackFillBadgePlus
    case rectangleStackBadgeMinus
    case rectangleStackFillBadgeMinus
    case rectangleStackBadgePersonCrop
    case rectangleStackFillBadgePersonCrop
    case sparklesRectangleStack
    case sparklesRectangleStackFill
    case rSquareOnSquare
    case rSquareFillOnSquareFill
    case jSquareOnSquare
    case jSquareFillOnSquareFill
    case hSquareOnSquare
    case hSquareFillOnSquareFill
    case squareOnSquare
    case squareFillOnSquareFill
    case squareFillOnSquare
    case sparklesSquareFillOnSquare
    case squareOnSquareDashed
    case plusSquareOnSquare
    case plusSquareFillOnSquareFill
    case squareOnCircle
    case squareFillOnCircleFill
    case squareOnSquareSquareshapeControlhandles
    case squareshapeControlhandlesOnSquareshapeControlhandles
    case squareStack
    case squareStackFill
    case pano
    case panoFill
    case squareAndLineVerticalAndSquare
    case squareFillAndLineVerticalSquareFill
    case squareFillAndLineVerticalAndSquare
    case squareAndLineVerticalAndSquareFill
    case flowchart
    case flowchartFill
    case rectangleConnectedToLineBelow
    case shield
    case shieldSlash
    case shieldFill
    case shieldSlashFill
    case shieldLefthalfFill
    case shieldLefthalfFillSlash
    case shieldCheckerboard
    case switch2
    case pointTopleftDownCurvedtoPointBottomrightUp
    case pointFillTopleftDownCurvedtoPointFillBottomrightUp
    case sliderHorizontal3
    case sliderHorizontalBelowRectangle
    case sliderHorizontalBelowSquareFillAndSquare
    case sliderVertical3
    case cube
    case cubeFill
    case cubeTransparent
    case cubeTransparentFill
    case shippingbox
    case shippingboxFill
    case arkit
    case cone
    case coneFill
    case pyramid
    case pyramidFill
    case squareStack3dDownRight
    case squareStack3dDownRightFill
    case squareStack3dDownForward
    case squareStack3dDownForwardFill
    case squareStack3dUp
    case squareStack3dUpFill
    case squareStack3dUpSlash
    case squareStack3dUpSlashFill
    case squareStack3dUpBadgeA
    case squareStack3dUpBadgeAFill
    case squareStack3dForwardDottedline
    case squareStack3dForwardDottedlineFill
    case livephoto
    case livephotoSlash
    case livephotoBadgeA
    case livephotoPlay
    case scope
    case helm
    case clock
    case clockFill
    case deskclock
    case deskclockFill
    case alarm
    case alarmFill
    case stopwatch
    case stopwatchFill
    case timer
    case timerSquare
    case clockArrowCirclepath
    case exclamationmarkArrowCirclepath
    case clockArrow2Circlepath
    case gamecontroller
    case gamecontrollerFill
    case lJoystick
    case lJoystickFill
    case rJoystick
    case rJoystickFill
    case lJoystickDown
    case lJoystickDownFill
    case rJoystickDown
    case rJoystickDownFill
    case dpad
    case dpadFill
    case dpadLeftFill
    case dpadUpFill
    case dpadRightFill
    case dpadDownFill
    case circleCircle
    case circleCircleFill
    case squareCircle
    case squareCircleFill
    case triangleCircle
    case triangleCircleFill
    case rectangleRoundedtop
    case rectangleRoundedtopFill
    case rectangleRoundedbottom
    case rectangleRoundedbottomFill
    case lRectangleRoundedbottom
    case lRectangleRoundedbottomFill
    case l1RectangleRoundedbottom
    case l1RectangleRoundedbottomFill
    case l2RectangleRoundedtop
    case l2RectangleRoundedtopFill
    case rRectangleRoundedbottom
    case rRectangleRoundedbottomFill
    case r1RectangleRoundedbottom
    case r1RectangleRoundedbottomFill
    case r2RectangleRoundedtop
    case r2RectangleRoundedtopFill
    case lbRectangleRoundedbottom
    case lbRectangleRoundedbottomFill
    case rbRectangleRoundedbottom
    case rbRectangleRoundedbottomFill
    case ltRectangleRoundedtop
    case ltRectangleRoundedtopFill
    case rtRectangleRoundedtop
    case rtRectangleRoundedtopFill
    case zlRectangleRoundedtop
    case zlRectangleRoundedtopFill
    case zrRectangleRoundedtop
    case zrRectangleRoundedtopFill
    case paintpalette
    case paintpaletteFill
    case figureWalk
    case figureWalkCircle
    case figureWalkCircleFill
    case figureWalkDiamond
    case figureWalkDiamondFill
    case figureStand
    case figureStandLineDottedFigureStand
    case figureWave
    case figureWaveCircle
    case figureWaveCircleFill
    case ear
    case earBadgeCheckmark
    case earTrianglebadgeExclamationmark
    case earFill
    case hearingaidEar
    case handRaised
    case handRaisedFill
    case handRaisedSlash
    case handRaisedSlashFill
    case handThumbsup
    case handThumbsupFill
    case handThumbsdown
    case handThumbsdownFill
    case handPointUpLeft
    case handPointUpLeftFill
    case handDraw
    case handDrawFill
    case handTap
    case handTapFill
    case handPointLeft
    case handPointLeftFill
    case handPointRight
    case handPointRightFill
    case handPointUp
    case handPointUpFill
    case handPointUpBraille
    case handPointUpBrailleFill
    case handPointDown
    case handPointDownFill
    case handWave
    case handWaveFill
    case handsClap
    case handsClapFill
    case handsSparkles
    case handsSparklesFill
    case rectangleCompressVertical
    case rectangleExpandVertical
    case rectangleAndArrowUpRightAndArrowDownLeft
    case rectangleAndArrowUpRightAndArrowDownLeftSlash
    case square2Stack3d
    case square2Stack3dTopFill
    case square2Stack3dBottomFill
    case square3Stack3d
    case square3Stack3dTopFill
    case square3Stack3dMiddleFill
    case square3Stack3dBottomFill
    case cylinder
    case cylinderFill
    case cylinderSplit1x2
    case cylinderSplit1x2Fill
    case chartBar
    case chartBarFill
    case chartPie
    case chartPieFill
    case chartBarXaxis
    case dotSquareshapeSplit2x2
    case squareshapeSplit2x2Dotted
    case squareshapeSplit2x2
    case squareshapeSplit3x3
    case burst
    case burstFill
    case waveformPathEcg
    case waveformPathEcgRectangle
    case waveformPathEcgRectangleFill
    case waveformPath
    case waveformPathBadgePlus
    case waveformPathBadgeMinus
    case waveform
    case waveformCircle
    case waveformCircleFill
    case staroflife
    case staroflifeFill
    case staroflifeCircle
    case staroflifeCircleFill
    case simcard
    case simcardFill
    case simcard2
    case simcard2Fill
    case esim
    case esimFill
    case sdcard
    case sdcardFill
    case touchid
    case bonjour
    case atom
    case scalemass
    case scalemassFill
    case headphones
    case headphonesCircle
    case headphonesCircleFill
    case gift
    case giftFill
    case giftCircle
    case giftCircleFill
    case plusApp
    case plusAppFill
    case arrowDownApp
    case arrowDownAppFill
    case arrowUpForwardApp
    case arrowUpForwardAppFill
    case appBadge
    case appBadgeFill
    case appclip
    case appGift
    case appGiftFill
    case airplane
    case airplaneCircle
    case airplaneCircleFill
    case studentdesk
    case hourglass
    case hourglassBadgePlus
    case hourglassBottomhalfFill
    case hourglassTophalfFill
    case banknote
    case banknoteFill
    case paragraphsign
    case purchased
    case purchasedCircle
    case purchasedCircleFill
    case perspective
    case aspectratio
    case aspectratioFill
    case cameraFilters
    case skew
    case arrowLeftAndRightRighttriangleLeftRighttriangleRight
    case arrowLeftAndRightRighttriangleLeftRighttriangleRightFill
    case arrowUpAndDownRighttriangleUpRighttriangleDown
    case arrowUpAndDownRighttriangleUpFillRighttriangleDownFill
    case arrowtriangleLeftAndLineVerticalAndArrowtriangleRight
    case arrowtriangleLeftFillAndLineVerticalAndArrowtriangleRightFill
    case arrowtriangleRightAndLineVerticalAndArrowtriangleLeft
    case arrowtriangleRightFillAndLineVerticalAndArrowtriangleLeftFill
    case grid
    case gridCircle
    case gridCircleFill
    case burn
    case lifepreserver
    case lifepreserverFill
    case recordingtape
    case eyeglasses
    case binoculars
    case binocularsFill
    case battery100
    case battery25
    case battery0
    case battery100Bolt
    case minusPlusBatteryblock
    case minusPlusBatteryblockFill
    case boltFillBatteryblock
    case boltFillBatteryblockFill
    case lightbulb
    case lightbulbFill
    case lightbulbSlash
    case lightbulbSlashFill
    case fiberchannel
    case squareFillTextGrid1x2
    case listDash
    case listBullet
    case listTriangle
    case listBulletIndent
    case listNumber
    case listStar
    case increaseIndent
    case decreaseIndent
    case decreaseQuotelevel
    case increaseQuotelevel
    case listBulletBelowRectangle
    case textBadgePlus
    case textBadgeMinus
    case textBadgeCheckmark
    case textBadgeXmark
    case textBadgeStar
    case textInsert
    case textAppend
    case textQuote
    case textAlignleft
    case textAligncenter
    case textAlignright
    case textJustify
    case textJustifyleft
    case textJustifyright
    case textRedaction
    case listAndFilm
    case lineHorizontal3
    case lineHorizontal3Decrease
    case lineHorizontal3DecreaseCircle
    case lineHorizontal3DecreaseCircleFill
    case lineHorizontal3Circle
    case lineHorizontal3CircleFill
    case lineHorizontal2DecreaseCircle
    case lineHorizontal2DecreaseCircleFill
    case character
    case textformatSizeSmaller
    case textformatSizeLarger
    case abc
    case textformatAlt
    case textformat
    case textformatSize
    case textformatSuperscript
    case textformatSubscript
    case bold
    case italic
    case underline
    case strikethrough
    case shadow
    case boldItalicUnderline
    case boldUnderline
    case view2d
    case view3d
    case textCursor
    case fx
    case fCursive
    case fCursiveCircle
    case fCursiveCircleFill
    case k
    case sum
    case percent
    case function
    case textformatAbc
    case textformatAbcDottedunderline
    case fn
    case textformat123
    case textbox
    case aMagnify
    case info
    case infoCircle
    case infoCircleFill
    case at
    case atCircle
    case atCircleFill
    case atBadgePlus
    case atBadgeMinus
    case questionmark
    case questionmarkCircle
    case questionmarkCircleFill
    case questionmarkSquare
    case questionmarkSquareFill
    case questionmarkDiamond
    case questionmarkDiamondFill
    case exclamationmark
    case exclamationmark2
    case exclamationmark3
    case exclamationmarkCircle
    case exclamationmarkCircleFill
    case exclamationmarkSquare
    case exclamationmarkSquareFill
    case exclamationmarkOctagon
    case exclamationmarkOctagonFill
    case exclamationmarkShield
    case exclamationmarkShieldFill
    case plus
    case plusCircle
    case plusCircleFill
    case plusSquare
    case plusSquareFill
    case plusRectangle
    case plusRectangleFill
    case plusRectanglePortrait
    case plusRectanglePortraitFill
    case plusDiamond
    case plusDiamondFill
    case minus
    case minusCircle
    case minusCircleFill
    case minusSquare
    case minusSquareFill
    case minusRectangle
    case minusRectangleFill
    case minusRectanglePortrait
    case minusRectanglePortraitFill
    case minusDiamond
    case minusDiamondFill
    case plusminus
    case plusminusCircle
    case plusminusCircleFill
    case plusSlashMinus
    case minusSlashPlus
    case multiply
    case multiplyCircle
    case multiplyCircleFill
    case multiplySquare
    case multiplySquareFill
    case xmarkRectangle
    case xmarkRectangleFill
    case xmarkRectanglePortrait
    case xmarkRectanglePortraitFill
    case xmarkDiamond
    case xmarkDiamondFill
    case xmarkShield
    case xmarkShieldFill
    case xmarkOctagon
    case xmarkOctagonFill
    case divide
    case divideCircle
    case divideCircleFill
    case divideSquare
    case divideSquareFill
    case equal
    case equalCircle
    case equalCircleFill
    case equalSquare
    case equalSquareFill
    case lessthan
    case lessthanCircle
    case lessthanCircleFill
    case lessthanSquare
    case lessthanSquareFill
    case greaterthan
    case greaterthanCircle
    case greaterthanCircleFill
    case greaterthanSquare
    case greaterthanSquareFill
    case chevronLeftSlashChevronRight
    case curlybraces
    case curlybracesSquare
    case curlybracesSquareFill
    case number
    case numberCircle
    case numberCircleFill
    case numberSquare
    case numberSquareFill
    case xSquareroot
    case xmark
    case xmarkCircle
    case xmarkCircleFill
    case xmarkSquare
    case xmarkSquareFill
    case checkmark
    case checkmarkCircle
    case checkmarkCircleFill
    case checkmarkSquare
    case checkmarkSquareFill
    case checkmarkRectangle
    case checkmarkRectangleFill
    case checkmarkRectanglePortrait
    case checkmarkRectanglePortraitFill
    case checkmarkShield
    case checkmarkShieldFill
    case chevronLeft
    case chevronLeftCircle
    case chevronLeftCircleFill
    case chevronLeftSquare
    case chevronLeftSquareFill
    case chevronBackward
    case chevronBackwardCircle
    case chevronBackwardCircleFill
    case chevronBackwardSquare
    case chevronBackwardSquareFill
    case chevronRight
    case chevronRightCircle
    case chevronRightCircleFill
    case chevronRightSquare
    case chevronRightSquareFill
    case chevronForward
    case chevronForwardCircle
    case chevronForwardCircleFill
    case chevronForwardSquare
    case chevronForwardSquareFill
    case chevronLeft2
    case chevronBackward2
    case chevronRight2
    case chevronForward2
    case chevronUp
    case chevronUpCircle
    case chevronUpCircleFill
    case chevronUpSquare
    case chevronUpSquareFill
    case chevronDown
    case chevronDownCircle
    case chevronDownCircleFill
    case chevronDownSquare
    case chevronDownSquareFill
    case control
    case projective
    case chevronUpChevronDown
    case chevronCompactUp
    case chevronCompactDown
    case chevronCompactLeft
    case chevronCompactRight
    case arrowLeft
    case arrowLeftCircle
    case arrowLeftCircleFill
    case arrowLeftSquare
    case arrowLeftSquareFill
    case arrowBackward
    case arrowBackwardCircle
    case arrowBackwardCircleFill
    case arrowBackwardSquare
    case arrowBackwardSquareFill
    case arrowRight
    case arrowRightCircle
    case arrowRightCircleFill
    case arrowRightSquare
    case arrowRightSquareFill
    case arrowForward
    case arrowForwardCircle
    case arrowForwardCircleFill
    case arrowForwardSquare
    case arrowForwardSquareFill
    case arrowUp
    case arrowUpCircle
    case arrowUpCircleFill
    case arrowUpSquare
    case arrowUpSquareFill
    case arrowDown
    case arrowDownCircle
    case arrowDownCircleFill
    case arrowDownSquare
    case arrowDownSquareFill
    case arrowUpLeft
    case arrowUpLeftCircle
    case arrowUpLeftCircleFill
    case arrowUpLeftSquare
    case arrowUpLeftSquareFill
    case arrowUpBackward
    case arrowUpBackwardCircle
    case arrowUpBackwardCircleFill
    case arrowUpBackwardSquare
    case arrowUpBackwardSquareFill
    case arrowUpRight
    case arrowUpRightCircle
    case arrowUpRightCircleFill
    case arrowUpRightSquare
    case arrowUpRightSquareFill
    case arrowUpForward
    case arrowUpForwardCircle
    case arrowUpForwardCircleFill
    case arrowUpForwardSquare
    case arrowUpForwardSquareFill
    case arrowDownLeft
    case arrowDownLeftCircle
    case arrowDownLeftCircleFill
    case arrowDownLeftSquare
    case arrowDownLeftSquareFill
    case arrowDownBackward
    case arrowDownBackwardCircle
    case arrowDownBackwardCircleFill
    case arrowDownBackwardSquare
    case arrowDownBackwardSquareFill
    case arrowDownRight
    case arrowDownRightCircle
    case arrowDownRightCircleFill
    case arrowDownRightSquare
    case arrowDownRightSquareFill
    case arrowDownForward
    case arrowDownForwardCircle
    case arrowDownForwardCircleFill
    case arrowDownForwardSquare
    case arrowDownForwardSquareFill
    case arrowLeftArrowRight
    case arrowLeftArrowRightCircle
    case arrowLeftArrowRightCircleFill
    case arrowLeftArrowRightSquare
    case arrowLeftArrowRightSquareFill
    case arrowUpArrowDown
    case arrowUpArrowDownCircle
    case arrowUpArrowDownCircleFill
    case arrowUpArrowDownSquare
    case arrowUpArrowDownSquareFill
    case arrowTurnDownLeft
    case arrowTurnUpLeft
    case arrowTurnDownRight
    case arrowTurnUpRight
    case arrowTurnRightUp
    case arrowTurnLeftUp
    case arrowTurnRightDown
    case arrowTurnLeftDown
    case arrowUturnLeft
    case arrowUturnLeftCircle
    case arrowUturnLeftCircleFill
    case arrowUturnLeftCircleBadgeEllipsis
    case arrowUturnLeftSquare
    case arrowUturnLeftSquareFill
    case arrowUturnBackward
    case arrowUturnBackwardCircle
    case arrowUturnBackwardCircleFill
    case arrowUturnBackwardCircleBadgeEllipsis
    case arrowUturnBackwardSquare
    case arrowUturnBackwardSquareFill
    case arrowUturnRight
    case arrowUturnRightCircle
    case arrowUturnRightCircleFill
    case arrowUturnRightSquare
    case arrowUturnRightSquareFill
    case arrowUturnForward
    case arrowUturnForwardCircle
    case arrowUturnForwardCircleFill
    case arrowUturnForwardSquare
    case arrowUturnForwardSquareFill
    case arrowUturnUp
    case arrowUturnUpCircle
    case arrowUturnUpCircleFill
    case arrowUturnUpSquare
    case arrowUturnUpSquareFill
    case arrowUturnDown
    case arrowUturnDownCircle
    case arrowUturnDownCircleFill
    case arrowUturnDownSquare
    case arrowUturnDownSquareFill
    case arrowUpAndDownAndArrowLeftAndRight
    case arrowUpLeftAndDownRightAndArrowUpRightAndDownLeft
    case arrowLeftAndRight
    case arrowLeftAndRightCircle
    case arrowLeftAndRightCircleFill
    case arrowLeftAndRightSquare
    case arrowLeftAndRightSquareFill
    case arrowUpAndDown
    case arrowUpAndDownCircle
    case arrowUpAndDownCircleFill
    case arrowUpAndDownSquare
    case arrowUpAndDownSquareFill
    case arrowLeftToLineAlt
    case arrowLeftToLine
    case arrowRightToLineAlt
    case arrowRightToLine
    case arrowUpToLineAlt
    case arrowUpToLine
    case arrowDownToLineAlt
    case arrowDownToLine
    case arrowClockwise
    case arrowClockwiseCircle
    case arrowClockwiseCircleFill
    case arrowCounterclockwise
    case arrowCounterclockwiseCircle
    case arrowCounterclockwiseCircleFill
    case arrowUpLeftAndArrowDownRight
    case arrowUpLeftAndArrowDownRightCircle
    case arrowUpLeftAndArrowDownRightCircleFill
    case arrowUpBackwardAndArrowDownForward
    case arrowUpBackwardAndArrowDownForwardCircle
    case arrowUpBackwardAndArrowDownForwardCircleFill
    case arrowDownRightAndArrowUpLeft
    case arrowDownRightAndArrowUpLeftCircle
    case arrowDownRightAndArrowUpLeftCircleFill
    case arrowDownForwardAndArrowUpBackward
    case arrowDownForwardAndArrowUpBackwardCircle
    case arrowDownForwardAndArrowUpBackwardCircleFill
    case `return`
    case arrow2Squarepath
    case arrowTriangle2Circlepath
    case arrowTriangle2CirclepathCircle
    case arrowTriangle2CirclepathCircleFill
    case exclamationmarkArrowTriangle2Circlepath
    case arrowTriangleCapsulepath
    case arrow3Trianglepath
    case arrowTriangleTurnUpRightDiamond
    case arrowTriangleTurnUpRightDiamondFill
    case arrowTriangleTurnUpRightCircle
    case arrowTriangleTurnUpRightCircleFill
    case arrowTriangleMerge
    case arrowTriangleSwap
    case arrowTriangleBranch
    case arrowTrianglePull
    case arrowtriangleLeft
    case arrowtriangleLeftFill
    case arrowtriangleLeftCircle
    case arrowtriangleLeftCircleFill
    case arrowtriangleLeftSquare
    case arrowtriangleLeftSquareFill
    case arrowtriangleBackward
    case arrowtriangleBackwardFill
    case arrowtriangleBackwardCircle
    case arrowtriangleBackwardCircleFill
    case arrowtriangleBackwardSquare
    case arrowtriangleBackwardSquareFill
    case arrowtriangleRight
    case arrowtriangleRightFill
    case arrowtriangleRightCircle
    case arrowtriangleRightCircleFill
    case arrowtriangleRightSquare
    case arrowtriangleRightSquareFill
    case arrowtriangleForward
    case arrowtriangleForwardFill
    case arrowtriangleForwardCircle
    case arrowtriangleForwardCircleFill
    case arrowtriangleForwardSquare
    case arrowtriangleForwardSquareFill
    case arrowtriangleUp
    case arrowtriangleUpFill
    case arrowtriangleUpCircle
    case arrowtriangleUpCircleFill
    case arrowtriangleUpSquare
    case arrowtriangleUpSquareFill
    case arrowtriangleDown
    case arrowtriangleDownFill
    case arrowtriangleDownCircle
    case arrowtriangleDownCircleFill
    case arrowtriangleDownSquare
    case arrowtriangleDownSquareFill
    case slashCircle
    case slashCircleFill
    case asteriskCircle
    case asteriskCircleFill
    case aCircle
    case aCircleFill
    case aSquare
    case aSquareFill
    case bCircle
    case bCircleFill
    case bSquare
    case bSquareFill
    case cCircle
    case cCircleFill
    case cSquare
    case cSquareFill
    case dCircle
    case dCircleFill
    case dSquare
    case dSquareFill
    case eCircle
    case eCircleFill
    case eSquare
    case eSquareFill
    case fCircle
    case fCircleFill
    case fSquare
    case fSquareFill
    case gCircle
    case gCircleFill
    case gSquare
    case gSquareFill
    case hCircle
    case hCircleFill
    case hSquare
    case hSquareFill
    case iCircle
    case iCircleFill
    case iSquare
    case iSquareFill
    case jCircle
    case jCircleFill
    case jSquare
    case jSquareFill
    case kCircle
    case kCircleFill
    case kSquare
    case kSquareFill
    case lCircle
    case lCircleFill
    case lSquare
    case lSquareFill
    case mCircle
    case mCircleFill
    case mSquare
    case mSquareFill
    case nCircle
    case nCircleFill
    case nSquare
    case nSquareFill
    case oCircle
    case oCircleFill
    case oSquare
    case oSquareFill
    case pCircle
    case pCircleFill
    case pSquare
    case pSquareFill
    case qCircle
    case qCircleFill
    case qSquare
    case qSquareFill
    case rCircle
    case rCircleFill
    case rSquare
    case rSquareFill
    case sCircle
    case sCircleFill
    case sSquare
    case sSquareFill
    case tCircle
    case tCircleFill
    case tSquare
    case tSquareFill
    case uCircle
    case uCircleFill
    case uSquare
    case uSquareFill
    case vCircle
    case vCircleFill
    case vSquare
    case vSquareFill
    case wCircle
    case wCircleFill
    case wSquare
    case wSquareFill
    case xCircle
    case xCircleFill
    case xSquare
    case xSquareFill
    case yCircle
    case yCircleFill
    case ySquare
    case ySquareFill
    case zCircle
    case zCircleFill
    case zSquare
    case zSquareFill
    case dollarsignCircle
    case dollarsignCircleFill
    case dollarsignSquare
    case dollarsignSquareFill
    case centsignCircle
    case centsignCircleFill
    case centsignSquare
    case centsignSquareFill
    case yensignCircle
    case yensignCircleFill
    case yensignSquare
    case yensignSquareFill
    case sterlingsignCircle
    case sterlingsignCircleFill
    case sterlingsignSquare
    case sterlingsignSquareFill
    case francsignCircle
    case francsignCircleFill
    case francsignSquare
    case francsignSquareFill
    case florinsignCircle
    case florinsignCircleFill
    case florinsignSquare
    case florinsignSquareFill
    case turkishlirasignCircle
    case turkishlirasignCircleFill
    case turkishlirasignSquare
    case turkishlirasignSquareFill
    case rublesignCircle
    case rublesignCircleFill
    case rublesignSquare
    case rublesignSquareFill
    case eurosignCircle
    case eurosignCircleFill
    case eurosignSquare
    case eurosignSquareFill
    case dongsignCircle
    case dongsignCircleFill
    case dongsignSquare
    case dongsignSquareFill
    case indianrupeesignCircle
    case indianrupeesignCircleFill
    case indianrupeesignSquare
    case indianrupeesignSquareFill
    case tengesignCircle
    case tengesignCircleFill
    case tengesignSquare
    case tengesignSquareFill
    case pesetasignCircle
    case pesetasignCircleFill
    case pesetasignSquare
    case pesetasignSquareFill
    case pesosignCircle
    case pesosignCircleFill
    case pesosignSquare
    case pesosignSquareFill
    case kipsignCircle
    case kipsignCircleFill
    case kipsignSquare
    case kipsignSquareFill
    case wonsignCircle
    case wonsignCircleFill
    case wonsignSquare
    case wonsignSquareFill
    case lirasignCircle
    case lirasignCircleFill
    case lirasignSquare
    case lirasignSquareFill
    case australsignCircle
    case australsignCircleFill
    case australsignSquare
    case australsignSquareFill
    case hryvniasignCircle
    case hryvniasignCircleFill
    case hryvniasignSquare
    case hryvniasignSquareFill
    case nairasignCircle
    case nairasignCircleFill
    case nairasignSquare
    case nairasignSquareFill
    case guaranisignCircle
    case guaranisignCircleFill
    case guaranisignSquare
    case guaranisignSquareFill
    case coloncurrencysignCircle
    case coloncurrencysignCircleFill
    case coloncurrencysignSquare
    case coloncurrencysignSquareFill
    case cedisignCircle
    case cedisignCircleFill
    case cedisignSquare
    case cedisignSquareFill
    case cruzeirosignCircle
    case cruzeirosignCircleFill
    case cruzeirosignSquare
    case cruzeirosignSquareFill
    case tugriksignCircle
    case tugriksignCircleFill
    case tugriksignSquare
    case tugriksignSquareFill
    case millsignCircle
    case millsignCircleFill
    case millsignSquare
    case millsignSquareFill
    case shekelsignCircle
    case shekelsignCircleFill
    case shekelsignSquare
    case shekelsignSquareFill
    case manatsignCircle
    case manatsignCircleFill
    case manatsignSquare
    case manatsignSquareFill
    case rupeesignCircle
    case rupeesignCircleFill
    case rupeesignSquare
    case rupeesignSquareFill
    case bahtsignCircle
    case bahtsignCircleFill
    case bahtsignSquare
    case bahtsignSquareFill
    case larisignCircle
    case larisignCircleFill
    case larisignSquare
    case larisignSquareFill
    case bitcoinsignCircle
    case bitcoinsignCircleFill
    case bitcoinsignSquare
    case bitcoinsignSquareFill
    case brazilianrealsignCircle
    case brazilianrealsignCircleFill
    case brazilianrealsignSquare
    case brazilianrealsignSquareFill
    case applelogo

    var enumRawValue: String {
        return rawValue
    }
}

//
//  SFSymbolsValidator.swift
//
//
//  Created by Santoso, Michael Abadi on 1/1/2564 BE.
//

protocol SFSymbolsValidation {
    func validateSystemName<T: SFFinderConvertable>(for type: T) -> String
}

final class SFSymbolsValidator: SFSymbolsValidation {

    func validateSystemName<T>(for type: T) -> String where T : SFFinderConvertable {
        switch type {
//        case let type as Indices.Currency:
//            var finalName = ""
//            switch type {
//            case .circle(let currency):
//                finalName += "\(currency.rawValue)sign.circle"
//            case .circleFill(let currency):
//                finalName += "\(currency.rawValue)sign.circle.fill"
//            case .square(let currency):
//                finalName += "\(currency.rawValue)sign.square"
//            case .squareFill(let currency):
//                finalName += "\(currency.rawValue)sign.square.fill"
//            }
//            return finalName
//        case let type as Indices.Alphabet:
//            var finalName = ""
//            switch type {
//            case .circle(let character):
//                finalName += "\(character.rawValue).circle"
//            case .circleFill(let character):
//                finalName += "\(character.rawValue).circle.fill"
//            case .square(let character):
//                finalName += "\(character.rawValue).square"
//            case .squareFill(let character):
//                finalName += "\(character.rawValue).square.fill"
//            }
//            return finalName
//        case let type as Indices.Number<Int>:
//            var finalName = ""
//            switch type {
//            case .circle(let number):
//                finalName += "\(number).circle"
//            case .circleFill(let number):
//                finalName += "\(number).circle.fill"
//            case .altCircle(let number):
//                finalName += "\(number).alt.circle"
//            case .altCircleFill(let number):
//                finalName += "\(number).alt.circle.fill"
//            case .square(let number):
//                finalName += "\(number).square"
//            case .squareFill(let number):
//                finalName += "\(number).square.fill"
//            case .altSquare(let number):
//                finalName += "\(number).alt.square"
//            case .altSquareFill(let number):
//                finalName += "\(number).alt.square.fill"
//            }
//            return finalName
//        case let type as Indices.Number<String>:
//            var finalName = ""
//            switch type {
//            case .circle(let number):
//                finalName += "\(number).circle"
//            case .circleFill(let number):
//                finalName += "\(number).circle.fill"
//            case .altCircle(let number):
//                finalName += "\(number).alt.circle"
//            case .altCircleFill(let number):
//                finalName += "\(number).alt.circle.fill"
//            case .square(let number):
//                finalName += "\(number).square"
//            case .squareFill(let number):
//                finalName += "\(number).square.fill"
//            case .altSquare(let number):
//                finalName += "\(number).alt.square"
//            case .altSquareFill(let number):
//                finalName += "\(number).alt.square.fill"
//            }
//            return finalName
        case let type as SFSymbolsEnum:
            if let objectType = type as? ObjectAndTools, objectType == .oneMagnifyingglass {
                return "1.magnifyingglass"
            } else if let objectType = type as? All, (objectType == .fourkTv || objectType == .fourkTvFill) {
                if objectType == .fourkTv {
                    return "4.k.tv"
                } else {
                    return "4.k.tv.fill"
                }
            } else {
                var finalName = ""
                var previousChar: Character = Character("-")
                type.enumRawValue.forEach { char in
                    if char.isUppercase {
                        finalName += ".\(char.lowercased())"
                    } else if char.isNumber {
                        if previousChar == "x" {
                            finalName += char.description
                        } else {
                            finalName += ".\(char)"
                        }
                    } else {
                        finalName += char.description
                    }
                    previousChar = char
                }
                return finalName
            }
        default:
            return ""
        }
    }
}
