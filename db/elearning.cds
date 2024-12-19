namespace app.elearning;
using { Language, managed } from '@sap/cds/common';

entity Categories {
    key id          : UUID;
        name        : String(100);
        description : String(100);
        Cources     : Association to many Cources on Cources.category = $self;
}

entity Cources : managed {
    key category    :   Association to Categories;
    key cource_id   :   UUID;
        cource_name :   String(100);
        price       :   String(10);
        Language    :   Language;    
}


