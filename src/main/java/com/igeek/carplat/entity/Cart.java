package com.igeek.carplat.entity;

import java.util.HashMap;
import java.util.Map;

public class Cart {

    /*  <%--<input class="addcar" value="加入购物车" type="button" onclick="addCart()">
    <script>
    function addCart() {
        var buyNum=$("#quantity").val();
        window.location.href="${path}/cart?method=addCart&pid=${product.pid}&buyNum="+buyNum;
    }
                        </script>
                    </input>--%>*/
    // <!--<c:forEach items="${cart.map}" var="entry"> -->   <!--</c:forEach>-->

    //一对多   购物车明细   Map<商品的pid，购物车项>
    private Map<String,CartItem> map=new HashMap<>();

    //商品总金额
    private double total;


    public Cart() {
    }

    public Cart(Map<String, CartItem> map, double total) {
        this.map = map;
        this.total = total;
    }

    /**
     * 获取
     * @return map
     */
    public Map<String, CartItem> getMap() {
        return map;
    }

    /**
     * 设置
     * @param map
     */
    public void setMap(Map<String, CartItem> map) {
        this.map = map;
    }

    /**
     * 获取
     * @return total
     */
    public double getTotal() {
        return total;
    }

    /**
     * 设置
     * @param total
     */
    public void setTotal(double total) {
        this.total = total;
    }

    public String toString() {
        return "Cart{map = " + map + ", total = " + total + "}";
    }
}
