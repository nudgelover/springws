package com.kbstar.dao;

import com.kbstar.dto.ProductDTO;
import com.kbstar.frame.MyDao;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository("pdao")
public class ProductDAO implements MyDao<String, ProductDTO> {
    @Override
    public void insert(ProductDTO productDTO) {
        System.out.println("Insert Oracle" + productDTO);
    }

    @Override
    public void delete(String s) {
        System.out.println("Delete Oracle" + s);
    }

    @Override
    public void update(ProductDTO productDTO) {
        System.out.println("Update Oracle" + productDTO);

    }

    @Override
    public ProductDTO select(String s) {
        ProductDTO product = null;
        product = new ProductDTO("item01","돌체라떼",6000,40);
        return product;
    }

    @Override
    public List<ProductDTO> select() {
        List<ProductDTO> list = new ArrayList<>();
        list.add(new ProductDTO("item01","돌체라떼",6000,40));
        list.add(new ProductDTO("item02", "딸기요거트스무디",7000,10));
        list.add(new ProductDTO("item03", "아메리카노",2000,100));
        return list;
    }
}
