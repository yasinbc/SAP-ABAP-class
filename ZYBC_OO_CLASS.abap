*&---------------------------------------------------------------------*
*& Report ZYBC_OO_CLASS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZYBC_OO_CLASS.

class car definition.

  PUBLIC   SECTION. "Visibility for attributes and methods

  "attributes
  data: name type char20,
        color type char10,
        fuel_type type char10.

  "methods of the class
  METHODS: constructor IMPORTING im_name TYPE char20 im_color TYPE char20 im_fuel_type TYPE char10.
  "other way to do the constructor
  
  
*  METHODS: constructor IMPORTING name type cha20 color type char20 fuel_typ type char10.
  "In-> method constructor.
*          me->name = name.
*          me->color = color.
*          me->fuel_type = fuel_type.  
*  DATA(car5) = new car( name = 'carName' color = 'carColor' fuel_type = 'carFuel' ).
  
  METHODS: display.


endclass.


class car IMPLEMENTATION.
  method constructor.
*    write:/ 'constructor triggered'."It is triggered by default
    name = im_name.
    color = im_color.
    fuel_type = im_fuel_type.

  endmethod.

  method display.
    write:/ 'display method'.
  ENDMETHOD.

endclass.



start-of-selection.

"First way to create objects
*data: car1 type ref to car."car1 reference variable
*create object car1. "car1 is created

*data: car2 type ref to car."car2 reference variable
*create object car2. "car2 is created
*
*data: car3 type ref to car."car3 reference variable
*create object car3. "car3 is created

"access to attributes
*car1->name = 'Toyota'.
*car1->color = 'red'.
*car1->fuel_type = 'Hydrogen'.
*
*write:/ car1->name,car1->color,car1->fuel_type.
*break-point.

"access to atributes
*car1->name = 'Toyoya'.
*car1->color = 'red'.
*car1->fuel_type = 'hydrogen'.



"Second way of creating objects
DATA(car1) = new car( im_name = 'Michubichi' im_color = 'pikachu' im_fuel_type = 'Hybrid' ).
DATA(car2) = new car( im_name = 'Krustymobil' im_color = 'clownish' im_fuel_type = 'RascaYPica' ).
DATA(car3) = new car( im_name = 'Tesla' im_color = 'black' im_fuel_type = 'Electric' ).
DATA(car4) = new car( im_name = 'Wolkswagen' im_color = 'BloodyMary' im_fuel_type = 'Honey' ).


"methods implementation
*car1->display( ).

data: index type i value 1.

while indez < 5.

write:/ 'Car name: ',car1->name,'Car color: ', car1->color,'Car fuel: ', car1->fuel_type.

write:/ 'Car name: ', car2->name,'Car color: ', car2->color, 'Car fuel: ', car2->fuel_type.

write:/ 'Car name: ', car3->name, 'Car color: ', car3->color, 'Car fuel: ', car3->fuel_type.

write:/ 'Car name: ',car4->name,'Car color: ',  car4->color, 'Car fuel: ', car4->fuel_type.

write SY-uline.

index = index + 1.
endwhile.