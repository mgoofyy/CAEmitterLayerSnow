//
//  MapleLeaf.swift
//  
//
//  Created by goofygao on 15/9/13.
//
//

import UIKit

class MapleLeaf: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let emitter = layer as! CAEmitterLayer
        emitter.emitterPosition = CGPoint(x: bounds.size.width / 2, y: 0)
        emitter.emitterSize = bounds.size
        emitter.emitterShape = kCAEmitterLayerRectangle
        
        let emitterCell = CAEmitterCell()
        emitterCell.contents = UIImage(named: "flake.png")!.CGImage
        emitterCell.birthRate = 200
        emitterCell.lifetime = 3.5
        emitterCell.color = UIColor.whiteColor().CGColor
        emitterCell.redRange = 0.6
        emitterCell.blueRange = 0.1
        emitterCell.greenRange = 0.0
        emitterCell.velocity = 3
        emitterCell.velocityRange = 350
        emitterCell.emissionRange = CGFloat(M_PI_2)
        emitterCell.emissionLongitude = CGFloat(-M_PI)
        emitterCell.yAcceleration = 200
        emitterCell.xAcceleration = 0
        emitterCell.scale = 0.33
        emitterCell.scaleRange = 1.25
        emitterCell.scaleSpeed = -0.25
        emitterCell.alphaRange = 0.1
        emitterCell.alphaSpeed = -0.15
        emitter.emitterCells = [emitterCell]
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class func layerClass() -> AnyClass {
        return CAEmitterLayer.self
    }


}
