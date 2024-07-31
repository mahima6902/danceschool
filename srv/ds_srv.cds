using { dance.school as ds } from '../db/danceschool';

service danceschoolservice {
  entity students as projection on ds.students;
  entity instructors as projection on ds.instructors;
  entity classes as projection on ds.classes;
  entity enrollments as projection on ds.enrollments;
}