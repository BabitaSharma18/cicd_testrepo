namespace testcap;

type Address : {
street : String(100);
city : String(100);
state : String(30);
pincode : String(6);
}
entity Users {
    key id   : Integer;
        name : String(100);
        email : String(100);
        phone : String(100);
        address : Address;
        project: Association to Projects; 
}


entity Projects {
    key id : Integer;
    name : String(100);
    description : String(100);
    user: Association to many Users on user.project = $self;
}


