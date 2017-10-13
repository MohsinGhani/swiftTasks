//08-10-2017 Assignment Task 1:
//Create Matrix Class and Compare Two Matrix

import UIKit

class Matrix: Equatable,Comparable{
    private var _row: Int;
    private var _col: Int;
    private var _matrix = [[Int]]()
    private var _value: Int
    
    init(row:Int, col:Int, value: Int){
        self._row = row;
        self._col = col;
        self._value = value
        createMatrix()
    }
    
    private func createMatrix(){
        for _ in 1...self._col{
            var row = [Int]()
            for _ in 1...self._row{
                row.append(self._value)
            }
            self._matrix.append(row)
        }
    }
    
    func printMatrix(){
        for i in 0...self._col-1{
            print(self._matrix[i])
        }
    }
    
    static func ==(lhs:Matrix,rhs:Matrix)->Bool{
        if(lhs._col == rhs._col && lhs._row == rhs._row && lhs._value == rhs._value){
            return true
        }
        else{
            return false
        }
    }
    
    static func <(lhs:Matrix,rhs:Matrix)->Bool{
        if((lhs._col == rhs._col && lhs._row == rhs._row) && lhs._value < rhs._value){
            return true
        }
        else{
            return false
        }
    }
}

var m1 = Matrix(row:3,col:3,value:5)
print("Matrix One:")
m1.printMatrix()
print();

var m2 = Matrix(row:3,col:3,value:5)
print("Matrix Two:")
m2.printMatrix()
print()

var m3 = Matrix(row:3,col:5,value:5)
print("Matrix Three:")
m3.printMatrix()
print()

var m4 = Matrix(row:3,col:5,value:10)
print("Matrix Fourth:")
m4.printMatrix()
print()

print("Matrix One and Two are equal: \(m1 == m2)")
print("Matrix One and Two are not Equal: \(m1 != m2)")
print("Matrix One is Less than Matrix Two: \(m1 < m2)")
print("Matrix One is Greater than Matrix Two: \(m1 > m2)")
print("Matrix One is Less than or Equal to Matrix Two: \(m1 <= m2)")
print("Matrix One is Greater than or Equal to Matrix Two: \(m1 >= m2)\n")

print("Matrix Two and Three are equal: \(m2 == m3)")
print("Matrix Two and Three are equal: \(m2 != m3)\n")

print("Matrix Three and Fourth are equal: \(m3 == m4)")
print("Matrix Three and Fourth are equal: \(m3 != m4)")
print("Matrix Three is Less than Matrix Four: \(m3 < m4)")
print("Matrix Three is Greater than Matrix Four: \(m3 > m4)")
print("Matrix Three is Less than or Equal to Matrix Four: \(m3 <= m4)")
print("Matrix Three is Greater than or Equal to Matrix Four: \(m3 >= m4)\n")