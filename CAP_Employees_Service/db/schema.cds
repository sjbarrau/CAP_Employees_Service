namespace employee;

using {
   managed, cuid
} from '@sap/cds/common';

entity Employees: managed {

    key ID: Integer;
    employee_name: String;
    employee_salary: Double;
    employee_age: Integer;
    profile_image: String;
    location: Association to one Locations;
    category: Association to one Categories; 

}

entity Locations {

    key ID: Integer;
    name: String;
    city: String;
    address: String;
    employees: Association to many Employees on employees.location = $self;

}

entity Categories {

    key ID: Integer;
    descr: String;
    name: String;
    employees: Association to many Employees on employees.category = $self;
}



