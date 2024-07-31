namespace dance.school;
using { cuid, managed } from '@sap/cds/common';

@odata.draft.enabled
entity students : cuid, managed {
  @title : 'student ID'
  key sid : UUID;

  @title : 'First Name'
  firstname : String(10);
  lastname  : String(10);
  email     : String(50);
  birthdate : Date;
  //classes   : Association to many enrollments on classes.student = $self;
}

@odata.draft.enabled
entity instructors : cuid, managed {
  key iid : UUID;
  firstname : String(10);
  lastname  : String(10);
  speciality : String(50);
  //classes   : Association to many classes on classes.instructor = $self;
}

@odata.draft.enabled 
entity classes : cuid, managed {
  name        : String(10);
  description : String(50);
  startdate   : Date;
  enddate     : Date;
  maxstudents : Integer;
  instructor  : Association to instructors;
  //student    : Association to many enrollments on student.class = $self;
}

@odata.draft.enabled
entity enrollments : cuid, managed {
  student     : Association to students;
  class       : Association to classes;
  enrolldate  : Date;
  grade       : Decimal(3,2);
} 