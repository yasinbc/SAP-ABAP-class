*&---------------------------------------------------------------------*
*& Report ZYBC_OO_CLASS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZYBC_OO_CLASS.

class car definition.
  
  public section. "Visibility for attributes and methods
  
  "attributes
  data: name type char20,
        color type char10,
        fuel_type type char10.

endclass.


start-of-selection.

data: car1 type ref to car."car1 reference variable
create object car1. "car1 is created

data: car2 type ref to car."car2 reference variable
create object car2. "car2 is created

data: car3 type ref to car."car3 reference variable
create object car3. "car3 is created