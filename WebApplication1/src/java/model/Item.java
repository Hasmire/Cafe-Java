package model;


public class Item {
private final int ITEM1_PRICE = 100;
private final int ITEM2_PRICE = 100;
private final int ITEM3_PRICE = 100;
private final int ITEM4_PRICE = 100;
private final int ITEM6_PRICE = 100;
private final int ITEM5_PRICE = 100;


private int id;
private int price;
private int quantity = 1;
private String name;
private String desc;

    public Item(int id){
        this.id = id;
        if(id == 1){
            name = "French Vanilla";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }
        else if(id == 2){
            name = "Caramel Macchiato";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }   
        else if(id == 3){
            name = "Pumpkin Spice";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }
        else if(id == 4){
            name = "Hazelnut";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }
        else if(id == 5){
            name = "Mocha";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }
        else if(id == 6){
            name = "French Vanilla";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM1_PRICE;
        }
    }

    public Item(int quantity, int id){
        this.id = id;
        this.quantity = quantity;
        if(id == 1){
            desc = "Shirt"; this.price = ITEM1_PRICE;
        }
        else if(id == 2){
            desc = "Pants"; this.price = ITEM2_PRICE;
        }   
        else if(id == 3){
            desc = "Shorts"; this.price = ITEM3_PRICE;
        }
        else if(id == 4){
            desc = "Blouse"; this.price = ITEM4_PRICE;
        }
        else if(id == 5){
            desc = "Skirt"; this.price = ITEM5_PRICE;
        }
        else{
        }
    }

//    public Item(int id){
//        this.id = id;
//        if(id == 1){
//            desc = "Shirt"; this.price = ITEM1_PRICE;
//        }
//        else if(id == 2){
//            desc = "Pants"; this.price = ITEM2_PRICE;
//        }   
//        else if(id == 3){
//            desc = "Shorts"; this.price = ITEM3_PRICE;
//        }
//        else if(id == 4){
//            desc = "Blouse"; this.price = ITEM4_PRICE;
//        }
//        else if(id == 5){
//            desc = "Skirt"; this.price = ITEM5_PRICE;
//        }
//        else{
//        }
//    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public int getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getDesc() {
        return desc;
    }

    public String getName() {
        return name;
    }


public String toString(){
return "Item ID = "+ id +" ,Price = " + price;
}
}
