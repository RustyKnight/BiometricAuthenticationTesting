//
//  BioStyleKit.swift
//  BiometricTesting
//
//  Created by AuthorName on 9/7/18.
//  Copyright © 2018 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class BioStyleKit : NSObject {
    
    //// Cache
    
    private struct Cache {
        static var imageOfTextLayer: UIImage?
        static var textLayerTargets: [AnyObject]?
        static var imageOfShadowLayer: UIImage?
        static var shadowLayerTargets: [AnyObject]?
    }
    
    //// Drawing Methods
    
    @objc dynamic public class func drawTextLayer(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 1125, height: 2436), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 1125, height: 2436), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 1125, y: resizedFrame.height / 2436)
        
        
        //// Color Declarations
        let color = UIColor(red: 0.878, green: 0.337, blue: 0.992, alpha: 1.000)
        
        //// Group
        //// text Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let textRect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let textTextContent = "Super happy "
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left
        let textFontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: textStyle,
        ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 2 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text2Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text2TextContent = "awsome"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .left
        let text2FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text2Style,
        ] as [NSAttributedString.Key: Any]
        
        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 3 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text3Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text3TextContent = "fun time"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .left
        let text3FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text3Style,
        ] as [NSAttributedString.Key: Any]
        
        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 4 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text4Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text4TextContent = "messanging"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .left
        let text4FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text4Style,
        ] as [NSAttributedString.Key: Any]
        
        let text4TextHeight: CGFloat = text4TextContent.boundingRect(with: CGSize(width: text4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text4FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text4Rect)
        text4TextContent.draw(in: CGRect(x: text4Rect.minX, y: text4Rect.minY + (text4Rect.height - text4TextHeight) / 2, width: text4Rect.width, height: text4TextHeight), withAttributes: text4FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// text 5 Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text5Rect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let text5TextContent = "Super happy "
        let text5Style = NSMutableParagraphStyle()
        text5Style.alignment = .left
        let text5FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text5Style,
        ] as [NSAttributedString.Key: Any]
        
        let text5TextHeight: CGFloat = text5TextContent.boundingRect(with: CGSize(width: text5Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text5FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text5Rect)
        text5TextContent.draw(in: CGRect(x: text5Rect.minX, y: text5Rect.minY + (text5Rect.height - text5TextHeight) / 2, width: text5Rect.width, height: text5TextHeight), withAttributes: text5FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 6 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text6Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text6TextContent = "awsome"
        let text6Style = NSMutableParagraphStyle()
        text6Style.alignment = .left
        let text6FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text6Style,
        ] as [NSAttributedString.Key: Any]
        
        let text6TextHeight: CGFloat = text6TextContent.boundingRect(with: CGSize(width: text6Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text6FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text6Rect)
        text6TextContent.draw(in: CGRect(x: text6Rect.minX, y: text6Rect.minY + (text6Rect.height - text6TextHeight) / 2, width: text6Rect.width, height: text6TextHeight), withAttributes: text6FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 7 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text7Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text7TextContent = "fun time"
        let text7Style = NSMutableParagraphStyle()
        text7Style.alignment = .left
        let text7FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text7Style,
        ] as [NSAttributedString.Key: Any]
        
        let text7TextHeight: CGFloat = text7TextContent.boundingRect(with: CGSize(width: text7Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text7FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text7Rect)
        text7TextContent.draw(in: CGRect(x: text7Rect.minX, y: text7Rect.minY + (text7Rect.height - text7TextHeight) / 2, width: text7Rect.width, height: text7TextHeight), withAttributes: text7FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 8 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text8Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text8TextContent = "messanging"
        let text8Style = NSMutableParagraphStyle()
        text8Style.alignment = .left
        let text8FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text8Style,
        ] as [NSAttributedString.Key: Any]
        
        let text8TextHeight: CGFloat = text8TextContent.boundingRect(with: CGSize(width: text8Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text8FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text8Rect)
        text8TextContent.draw(in: CGRect(x: text8Rect.minX, y: text8Rect.minY + (text8Rect.height - text8TextHeight) / 2, width: text8Rect.width, height: text8TextHeight), withAttributes: text8FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawCanvas2(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 1125, height: 2436), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 1125, height: 2436), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 1125, y: resizedFrame.height / 2436)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 1125, resizedFrame.height / 2436)
        
        
        //// Color Declarations
        let color = UIColor(red: 0.878, green: 0.337, blue: 0.992, alpha: 1.000)
        let color3 = color.withAlphaComponent(0.5)
        
        //// Shadow Declarations
        let shadow2 = NSShadow()
        shadow2.shadowColor = color
        shadow2.shadowOffset = CGSize(width: 0, height: 0)
        shadow2.shadowBlurRadius = 50
        
        //// Group 2
        //// text 9 Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text9Rect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let text9TextContent = "Super happy "
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text9Style = NSMutableParagraphStyle()
        text9Style.alignment = .left
        let text9FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text9Style,
        ] as [NSAttributedString.Key: Any]
        
        let text9TextHeight: CGFloat = text9TextContent.boundingRect(with: CGSize(width: text9Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text9FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text9Rect)
        text9TextContent.draw(in: CGRect(x: text9Rect.minX, y: text9Rect.minY + (text9Rect.height - text9TextHeight) / 2, width: text9Rect.width, height: text9TextHeight), withAttributes: text9FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 10 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text10Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text10TextContent = "awsome"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text10Style = NSMutableParagraphStyle()
        text10Style.alignment = .left
        let text10FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text10Style,
        ] as [NSAttributedString.Key: Any]
        
        let text10TextHeight: CGFloat = text10TextContent.boundingRect(with: CGSize(width: text10Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text10FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text10Rect)
        text10TextContent.draw(in: CGRect(x: text10Rect.minX, y: text10Rect.minY + (text10Rect.height - text10TextHeight) / 2, width: text10Rect.width, height: text10TextHeight), withAttributes: text10FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 11 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text11Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text11TextContent = "fun time"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text11Style = NSMutableParagraphStyle()
        text11Style.alignment = .left
        let text11FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text11Style,
        ] as [NSAttributedString.Key: Any]
        
        let text11TextHeight: CGFloat = text11TextContent.boundingRect(with: CGSize(width: text11Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text11FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text11Rect)
        text11TextContent.draw(in: CGRect(x: text11Rect.minX, y: text11Rect.minY + (text11Rect.height - text11TextHeight) / 2, width: text11Rect.width, height: text11TextHeight), withAttributes: text11FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 12 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text12Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text12TextContent = "messanging"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text12Style = NSMutableParagraphStyle()
        text12Style.alignment = .left
        let text12FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text12Style,
        ] as [NSAttributedString.Key: Any]
        
        let text12TextHeight: CGFloat = text12TextContent.boundingRect(with: CGSize(width: text12Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text12FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text12Rect)
        text12TextContent.draw(in: CGRect(x: text12Rect.minX, y: text12Rect.minY + (text12Rect.height - text12TextHeight) / 2, width: text12Rect.width, height: text12TextHeight), withAttributes: text12FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        
        
        //// Group
        //// text Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let textRect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let textTextContent = "Super happy "
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left
        let textFontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: textStyle,
        ] as [NSAttributedString.Key: Any]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 2 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text2Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text2TextContent = "awsome"
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .left
        let text2FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text2Style,
        ] as [NSAttributedString.Key: Any]
        
        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 3 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text3Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text3TextContent = "fun time"
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .left
        let text3FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text3Style,
        ] as [NSAttributedString.Key: Any]
        
        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 4 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text4Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text4TextContent = "messanging"
        let text4Style = NSMutableParagraphStyle()
        text4Style.alignment = .left
        let text4FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text4Style,
        ] as [NSAttributedString.Key: Any]
        
        let text4TextHeight: CGFloat = text4TextContent.boundingRect(with: CGSize(width: text4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text4FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text4Rect)
        text4TextContent.draw(in: CGRect(x: text4Rect.minX, y: text4Rect.minY + (text4Rect.height - text4TextHeight) / 2, width: text4Rect.width, height: text4TextHeight), withAttributes: text4FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// text 5 Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text5Rect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let text5TextContent = "Super happy "
        let text5Style = NSMutableParagraphStyle()
        text5Style.alignment = .left
        let text5FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text5Style,
        ] as [NSAttributedString.Key: Any]
        
        let text5TextHeight: CGFloat = text5TextContent.boundingRect(with: CGSize(width: text5Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text5FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text5Rect)
        text5TextContent.draw(in: CGRect(x: text5Rect.minX, y: text5Rect.minY + (text5Rect.height - text5TextHeight) / 2, width: text5Rect.width, height: text5TextHeight), withAttributes: text5FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 6 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text6Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text6TextContent = "awsome"
        let text6Style = NSMutableParagraphStyle()
        text6Style.alignment = .left
        let text6FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text6Style,
        ] as [NSAttributedString.Key: Any]
        
        let text6TextHeight: CGFloat = text6TextContent.boundingRect(with: CGSize(width: text6Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text6FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text6Rect)
        text6TextContent.draw(in: CGRect(x: text6Rect.minX, y: text6Rect.minY + (text6Rect.height - text6TextHeight) / 2, width: text6Rect.width, height: text6TextHeight), withAttributes: text6FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 7 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text7Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text7TextContent = "fun time"
        let text7Style = NSMutableParagraphStyle()
        text7Style.alignment = .left
        let text7FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text7Style,
        ] as [NSAttributedString.Key: Any]
        
        let text7TextHeight: CGFloat = text7TextContent.boundingRect(with: CGSize(width: text7Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text7FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text7Rect)
        text7TextContent.draw(in: CGRect(x: text7Rect.minX, y: text7Rect.minY + (text7Rect.height - text7TextHeight) / 2, width: text7Rect.width, height: text7TextHeight), withAttributes: text7FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        
        //// Text 8 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text8Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text8TextContent = "messanging"
        let text8Style = NSMutableParagraphStyle()
        text8Style.alignment = .left
        let text8FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color,
            .paragraphStyle: text8Style,
        ] as [NSAttributedString.Key: Any]
        
        let text8TextHeight: CGFloat = text8TextContent.boundingRect(with: CGSize(width: text8Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text8FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text8Rect)
        text8TextContent.draw(in: CGRect(x: text8Rect.minX, y: text8Rect.minY + (text8Rect.height - text8TextHeight) / 2, width: text8Rect.width, height: text8TextHeight), withAttributes: text8FontAttributes)
        context.restoreGState()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc dynamic public class func drawShadowLayer(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 1125, height: 2436), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 1125, height: 2436), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 1125, y: resizedFrame.height / 2436)
        let resizedShadowScale: CGFloat = min(resizedFrame.width / 1125, resizedFrame.height / 2436)
        
        
        //// Color Declarations
        let color = UIColor(red: 0.878, green: 0.337, blue: 0.992, alpha: 1.000)
        let color3 = color.withAlphaComponent(0.5)
        
        //// Shadow Declarations
        let shadow2 = NSShadow()
        shadow2.shadowColor = color
        shadow2.shadowOffset = CGSize(width: 0, height: 0)
        shadow2.shadowBlurRadius = 50
        
        //// Group 2
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        context.beginTransparencyLayer(auxiliaryInfo: nil)
        
        
        //// text 9 Drawing
        context.saveGState()
        context.translateBy(x: 50, y: 334.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text9Rect = CGRect(x: 0, y: 0, width: 1023.46, height: 246.2)
        let text9TextContent = "Super happy "
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text9Style = NSMutableParagraphStyle()
        text9Style.alignment = .left
        let text9FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text9Style,
        ] as [NSAttributedString.Key: Any]
        
        let text9TextHeight: CGFloat = text9TextContent.boundingRect(with: CGSize(width: text9Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text9FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text9Rect)
        text9TextContent.draw(in: CGRect(x: text9Rect.minX, y: text9Rect.minY + (text9Rect.height - text9TextHeight) / 2, width: text9Rect.width, height: text9TextHeight), withAttributes: text9FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 10 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 543.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text10Rect = CGRect(x: 0, y: 0, width: 968, height: 246.2)
        let text10TextContent = "awsome"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text10Style = NSMutableParagraphStyle()
        text10Style.alignment = .left
        let text10FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text10Style,
        ] as [NSAttributedString.Key: Any]
        
        let text10TextHeight: CGFloat = text10TextContent.boundingRect(with: CGSize(width: text10Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text10FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text10Rect)
        text10TextContent.draw(in: CGRect(x: text10Rect.minX, y: text10Rect.minY + (text10Rect.height - text10TextHeight) / 2, width: text10Rect.width, height: text10TextHeight), withAttributes: text10FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 11 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 734.06)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text11Rect = CGRect(x: 0, y: 0, width: 815, height: 246.2)
        let text11TextContent = "fun time"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text11Style = NSMutableParagraphStyle()
        text11Style.alignment = .left
        let text11FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text11Style,
        ] as [NSAttributedString.Key: Any]
        
        let text11TextHeight: CGFloat = text11TextContent.boundingRect(with: CGSize(width: text11Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text11FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text11Rect)
        text11TextContent.draw(in: CGRect(x: text11Rect.minX, y: text11Rect.minY + (text11Rect.height - text11TextHeight) / 2, width: text11Rect.width, height: text11TextHeight), withAttributes: text11FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        //// Text 12 Drawing
        context.saveGState()
        context.translateBy(x: 70, y: 905.23)
        context.rotate(by: -13.22 * CGFloat.pi/180)
        
        let text12Rect = CGRect(x: 0, y: 0, width: 877, height: 246.2)
        let text12TextContent = "messanging"
        context.saveGState()
        context.setShadow(offset: CGSize(width: shadow2.shadowOffset.width * resizedShadowScale, height: shadow2.shadowOffset.height * resizedShadowScale), blur: shadow2.shadowBlurRadius * resizedShadowScale, color: (shadow2.shadowColor as! UIColor).cgColor)
        let text12Style = NSMutableParagraphStyle()
        text12Style.alignment = .left
        let text12FontAttributes = [
            .font: UIFont(name: "Papyrus", size: 148)!,
            .foregroundColor: color3,
            .paragraphStyle: text12Style,
        ] as [NSAttributedString.Key: Any]
        
        let text12TextHeight: CGFloat = text12TextContent.boundingRect(with: CGSize(width: text12Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: text12FontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: text12Rect)
        text12TextContent.draw(in: CGRect(x: text12Rect.minX, y: text12Rect.minY + (text12Rect.height - text12TextHeight) / 2, width: text12Rect.width, height: text12TextHeight), withAttributes: text12FontAttributes)
        context.restoreGState()
        context.restoreGState()
        
        
        context.restoreGState()
        
        
        context.endTransparencyLayer()
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    //// Generated Images
    
    @objc dynamic public class var imageOfTextLayer: UIImage {
        if Cache.imageOfTextLayer != nil {
            return Cache.imageOfTextLayer!
        }
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1125, height: 2436), false, 0)
        BioStyleKit.drawTextLayer()
        
        Cache.imageOfTextLayer = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return Cache.imageOfTextLayer!
    }
    
    @objc dynamic public class var imageOfShadowLayer: UIImage {
        if Cache.imageOfShadowLayer != nil {
            return Cache.imageOfShadowLayer!
        }
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1125, height: 2436), false, 0)
        BioStyleKit.drawShadowLayer()
        
        Cache.imageOfShadowLayer = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return Cache.imageOfShadowLayer!
    }
    
    //// Customization Infrastructure
    
    @objc @IBOutlet dynamic var textLayerTargets: [AnyObject]! {
        get { return Cache.textLayerTargets }
        set {
            Cache.textLayerTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: BioStyleKit.imageOfTextLayer)
            }
        }
    }
    
    @objc @IBOutlet dynamic var shadowLayerTargets: [AnyObject]! {
        get { return Cache.shadowLayerTargets }
        set {
            Cache.shadowLayerTargets = newValue
            for target: AnyObject in newValue {
                let _ = target.perform(NSSelectorFromString("setImage:"), with: BioStyleKit.imageOfShadowLayer)
            }
        }
    }
    
    
    
    
    @objc(BioStyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
