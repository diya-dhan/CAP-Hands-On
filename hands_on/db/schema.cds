namespace my.EmployeePortal;

@assert.unique : {
    department_dept_name_key : [dept_name]
}

entity Department {
    key dept_id : String;
    dept_name : String;
    building_no : Integer
}

entity Employee {
    key emp_id : String;
    first_name : String;
    last_name : String;
    email : String;
    phone_number : String;
    department : Association to Department;
    manager : String;
    role : String;
}