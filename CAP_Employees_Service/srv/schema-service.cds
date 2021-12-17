using {employee as my} from '../db/schema';

@(path : '/employee')
@requires : 'authenticated-user'
service employeeService {

    entity Employees as select from my.Employees;

    entity Locations as select from my.Locations;

    entity Categories as select from my.Categories;

}