//  Io day 2 problem 5 & 6
//  Create a prototype for a matrix
//  set(x,y,value) - sets a value
//  get(x,y) - gets a value
//  instantiate a matrix x by y

//  Create Matrix prototype
Matrix := Object clone

//  Constructor
Matrix create := method(x,y, 
    self elements := list();
    for(m, 0, x - 1, 1
        elements append(list()) 
        for(n, 0, y - 1, 1
            elements at(m) append(0)
        )
    )
);

//  Get element value
Matrix get := method(m,n, 
    return elements at(m-1) at(n-1);
)

//  Set element value
Matrix set := method(m,n,value,
    elements at(m-1) atPut(n-1, value);
)

//  Gets the size of a matrix
Matrix size := method(
    return list(elements size, elements at(0) size)
)

//  Creates the transpose of a matrix
Matrix transpose := method(
    transposeMatrix := Matrix clone;
    transposeMatrix create(size at(1), size at(0));
    
    for(row, 1, size at(0), 
        for(column, 1, size at(1),
            value := get(row, column);
            transposeMatrix set(column, row, value);
        )
    );

    return transposeMatrix;
)

a := Matrix clone 
a create(3,2)
a set(2,1,9)
a set(1,2,6)
a elements println

"------" println
b := a transpose;
b println;

