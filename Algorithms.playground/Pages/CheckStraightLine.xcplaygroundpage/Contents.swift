func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    if coordinates.count == 2 {
      return true
    }
  
    let x1 = coordinates[0][0]
    let y1 = coordinates[0][1]
    let x2 = coordinates[1][0]
    let y2 = coordinates[1][1]
    let slope = x2 - x1 == 0 ? 0 : (y2 - y1) / (x2 - x1)
  
    var prevCoordinate = coordinates[1]
    
    for coordinate in coordinates[2...] {
      let currCoordinateX = coordinate[0]
      let currCoordinateY = coordinate[1]
      let prevCoordinateX = prevCoordinate[0]
      let prevCoordinateY = prevCoordinate[1]
      let currSlope = currCoordinateX - prevCoordinateX == 0 ? 0 : (currCoordinateY - prevCoordinateY) / (currCoordinateX - prevCoordinateX)
      
      if (currSlope != slope) {
        return false
      }
    }
  
    return true
    
}
