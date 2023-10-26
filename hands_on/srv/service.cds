using my.EmployeePortal as my from '../db/schema';

service ManagedService @(requires:'authenticated-user'){
  entity Employee as projection on my.Employee;
  annotate my.Employee with @odata.draft.enabled;
  entity Department as projection on my.Department;
}



