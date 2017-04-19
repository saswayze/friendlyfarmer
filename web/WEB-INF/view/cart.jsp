<%-- 
    Document   : cart
    Created on : Jan 25, 2017, 3:53:21 PM
    Author     : samuel.swayze
--%>

    <div class="cart">
        <span class="cartText">Your shopping cart contains x items.</span>
        <div class="cartActions">
            <a href="#">clear cart</a>
            <a href="#">continue shopping</a>
            <a href="#">proceed to checkout</a>
        </div>
        <div class="subtotal">[ subtotal: xxx ]</div>

        <div id="cartList">
            <div class="cartCols">
                <span>product</span>
                <span>name</span>
                <span>price</span>
                <span>quantity</span>
            </div>

            <div class="cartRow">
                <img src="#" class="cartProdImage" alt="product image">

                <div class="cartProdName">
                    [ product name ]
                </div>

                <div class="cartPrice">
                    [ price ]
                </div>
                <div class="cartInputs">
                    <input type="text" name="quantityBox" class="quantityBox" size="1">
                    <input type="button" value="purchase button" class="updateButton">
                </div>    
            </div>
            <div class="cartRow">
                <img src="#" class="cartProdImage" alt="product image">

                <div class="cartProdName">
                    [ product name ]
                </div>

                <div class="cartPrice">
                    [ price ]
                </div>
                <div class="cartInputs">
                    <input type="text" name="quantityBox" class="quantityBox" size="1">
                    <input type="button" value="purchase button" class="updateButton">
                </div> 
            </div>
        </div>
    </div>
