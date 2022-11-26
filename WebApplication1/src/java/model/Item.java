package model;


//Item Database
public class Item {
private final int ITEM1_PRICE = 150;
private final int ITEM2_PRICE = 150;
private final int ITEM3_PRICE = 150;
private final int ITEM4_PRICE = 150;
private final int ITEM6_PRICE = 150;
private final int ITEM5_PRICE = 150;


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
            this.price = ITEM2_PRICE;
        }   
        else if(id == 3){
            name = "Pumpkin Spice";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM3_PRICE;
        }
        else if(id == 4){
            name = "Hazelnut";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM4_PRICE;
        }
        else if(id == 5){
            name = "Mocha";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM5_PRICE;
        }
        else if(id == 6){
            name = "Matcha";
            desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                + "Praesent tortor risus, rutrum tincidunt lacinia eu, faucibus sit amet sem."
                + " Mauris enim arcu, vulputate sit amet tempus at, fermentum at elit."; 
            this.price = ITEM6_PRICE;
        }
    }

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
return "Item ID = "+ id +" ,Individual Price = " + price+" ,Quantity = " +quantity+"\n";
}
}
