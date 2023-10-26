using ManagedService as my from './service';

annotate my.Employee with @(
    UI : {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Employee',
            TypeNamePlural : 'Employees',
        },
        SelectionFields: [ emp_id, last_name, department_dept_id, manager, role],    
        LineItem: [     
            {$Type: 'UI.DataField', Value: emp_id, ![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: first_name , ![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: last_name,![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: email,![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: department.dept_name,![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: manager,![@HTML5.CssDefaults] : {width : '16.66%'}},
            {$Type: 'UI.DataField', Value: role,![@HTML5.CssDefaults] : {width : '16.66%'}}
        ]
    },

    Capabilities: {
        Insertable : true,
        Deletable : true,
        Updatable : true,
    },
);

annotate my.Employee with {
    emp_id @( Common.Label : 'Employee ID' );
    first_name @( Common.Label : 'First Name' );
    last_name @( Common.Label : 'Last Name' );
    email @( Common.Label : 'Email Address' );
    department @( Common.Label : 'Department' );
    manager @( Common.Label : 'Reporting To' );
    role @( Common.Label : 'Role' )
}

annotate my.Employee with {
   department @(
        Common: {
            ValueList: {entity: 'Department'},
            ValueListWithFixedValues,
            FieldControl: #Mandatory
        }
    );
};

annotate my.Department with {
   dept_id @title: 'Department ID';
   dept_name @title: 'Department Name'
};


annotate my.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emp_id',
                Value : emp_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'first_name',
                Value : first_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'last_name',
                Value : last_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone_number',
                Value : phone_number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department_dept_id',
                Value : department_dept_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'manager',
                Value : manager,
            },
            {
                $Type : 'UI.DataField',
                Label : 'role',
                Value : role,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
