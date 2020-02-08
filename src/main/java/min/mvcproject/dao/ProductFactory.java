package min.mvcproject.dao;


import min.mvcproject.vo.Product;

import java.util.ArrayList;

public class ProductFactory {

    private ArrayList<Product> prods = new ArrayList<Product>();

    public ProductFactory(){
        Product prod1 = new Product();
        prod1.setPrdid("P1234");
        prod1.setPname("iPhone 6s");
        prod1.setPprice(800000);
        prod1.setPdesc("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        prod1.setPmaker("Apple");
        prod1.setPcate("Smart Phone");
        prod1.setPstock(1000);
        prod1.setPcond("New");
        prod1.setPrdimg("P1234.png");

        Product prod2 = new Product();
        prod2.setPrdid("P1235");
        prod2.setPname("LG PC 그램");
        prod2.setPprice(1500000);
        prod2.setPdesc("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
        prod2.setPmaker("LG");
        prod2.setPcate("Notebook");
        prod2.setPstock(1000);
        prod2.setPcond("Refurbished");
        prod2.setPrdimg("P1235.png");

        Product prod3 = new Product();
        prod3.setPrdid("P1236");
        prod3.setPname("Galaxy Tab S");
        prod3.setPprice(900000);
        prod3.setPdesc("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
        prod3.setPmaker("Samsung");
        prod3.setPcate("Tablet");
        prod3.setPstock(1000);
        prod3.setPcond("Old");
        prod3.setPrdimg("P1236.png");

        prods.add(prod1);
        prods.add(prod2);
        prods.add(prod3);
    }

    //상품 목록 출력
    public ArrayList<Product> getAllProducts(){
        return prods;
    }

    //상품 상세 정보 출력
    public Product getProductById(String id){
        Product prd = null;

        for(Product p : prods){
            //ArrayList로 저장된 상품목록에서 입력받은 id와 일치하는 상품을 찾아 return 함
            if(p.getPrdid().equals(id)){
                prd = p;
                break;
            }
        }



        return prd;
    }


    //상품 정보 추가
    public void addProduct(Product p){
        prods.add(p);
    }


}
