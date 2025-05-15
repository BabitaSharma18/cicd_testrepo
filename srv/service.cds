using { testcap } from '../db/schema';


service Service {
    entity users as select from testcap.Users;
    entity projects as select from testcap.Projects;
}