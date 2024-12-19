using app.elearning as learning from '../db/elearning';

service eLerning {
    
    entity Categories as projection on learning.Categories;

    entity Cources    as projection on learning.Cources; 

}
