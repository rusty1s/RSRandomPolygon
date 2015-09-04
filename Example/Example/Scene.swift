//
//  Scene.swift
//  Example
//
//  Created by Matthias Fey on 12.08.15.
//  Copyright © 2015 Matthias Fey. All rights reserved.
//

import SpriteKit
import RSRandomPolygon

class Scene : SKScene {
    
    override func didMoveToView(view: SKView) {
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        backgroundColor = SKColor.whiteColor()
        
        //let polygon = RandomPolygon.generateWithNumberOfVertices(16, radius: 50, xScale: 1.5, irregularity: 0.5, spikeyness: 0.55
        let polygon = RandomPolygon.generateWithSize(CGSize(width: 100, height: 100), numberOfVertices: 3000, algorithm: .ConvexBottom)
        
        let polygonNode = SKShapeNode()
        polygonNode.position = CGPoint(x: -50, y: -50)
        polygonNode.lineWidth = 0
        polygonNode.strokeColor = SKColor.blackColor()
        polygonNode.fillColor = SKColor.redColor()
        polygonNode.path = CGPath.pathOfPoints(polygon)
        addChild(polygonNode)
    }
}

extension CGPath {
    
    class func pathOfPoints(points: [CGPoint]) -> CGPath {
        let path = CGPathCreateMutable()
        for (index, point) in points.enumerate() {
            if index == 0 { CGPathMoveToPoint(path, nil, point.x, point.y) }
            else { CGPathAddLineToPoint(path, nil, point.x, point.y) }
        }
        if points.count > 2 { CGPathCloseSubpath(path) }
        
        return path
    }
}
