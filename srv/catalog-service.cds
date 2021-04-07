using my.bookshop from '../db/schema';

service CatalogService {

    @Capabilities : { Insertable : false, Deletable : true }
    entity Books as projection on bookshop.Books;
    
    @readonly entity Authors as projection on bookshop.Authors;
    
    entity Orders as projection on bookshop.Orders;

}